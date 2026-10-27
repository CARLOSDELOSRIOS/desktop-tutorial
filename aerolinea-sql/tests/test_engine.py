"""Pruebas REALES SQL Server; solo base aislada cuyo nombre termina en _Test."""
import unittest,os,json,uuid,threading
from decimal import Decimal
from datetime import timedelta,datetime,timezone
from concurrent.futures import ThreadPoolExecutor
from airline.db import ROOT,connect,issue,pay,cancel,rows
ENABLED=os.environ.get('AIRLINE_TEST_SQL')=='1'
@unittest.skipUnless(ENABLED,'Pendiente: requiere AIRLINE_TEST_SQL=1 y base aislada _Test')
class EngineTests(unittest.TestCase):
    def setUp(self):
        self.ctx=connect();self.cn=self.ctx.__enter__()
        name=self.cn.execute('SELECT DB_NAME()').fetchone()[0]
        if not name.endswith('_Test'):self.ctx.__exit__(None,None,None);raise RuntimeError('Las pruebas exigen nombre de base terminado en _Test')
        self.cn.execute('BEGIN TRAN;')
        row=self.cn.execute("SELECT TOP(1) fs.FlightId,fs.SeatNo,f.DepartureUtc FROM air.FlightSeat fs JOIN air.Flight f ON f.FlightId=fs.FlightId WHERE f.Status='SCHEDULED' AND NOT EXISTS(SELECT 1 FROM air.Ticket t WHERE t.FlightId=fs.FlightId AND t.SeatNo=fs.SeatNo AND t.Status<>'CANCELLED') ORDER BY fs.FlightId,fs.SeatNo").fetchone()
        self.fid,self.seat,self.dep=row;self.at=self.dep-timedelta(days=7)
    def tearDown(self):
        self.cn.execute('IF @@TRANCOUNT>0 ROLLBACK;');self.ctx.__exit__(None,None,None)
    def issue(self,**kw):
        args=dict(request_key=str(uuid.uuid4()),flight_id=self.fid,seat_no=self.seat,passenger_id=150,buyer_id=10,channel_id=2,sold_at=self.at)
        args.update(kw);return issue(self.cn,**args)
    def expect(self,code,fn):
        import pyodbc
        with self.assertRaises(pyodbc.Error) as c:fn()
        self.assertIn(str(code),str(c.exception))
    def price(self,tid):return self.cn.execute('SELECT FinalPrice FROM air.Ticket WHERE TicketId=?',tid).fetchone()[0]
    def test_guest_buyer_and_passenger(self):
        tid=self.issue();r=self.cn.execute('SELECT PassengerId,BuyerId,Status FROM air.Ticket WHERE TicketId=?',tid).fetchone();self.assertEqual(tuple(r),(150,10,'HELD'))
    def test_duplicate_seat_rejected(self):
        self.issue();self.expect(51014,lambda:self.issue())
    def test_wrong_seat_rejected(self):self.expect(51013,lambda:self.issue(seat_no='99Z'))
    def test_fk_rejection_rolls_back(self):
        n=self.cn.execute('SELECT COUNT(*) FROM air.Ticket').fetchone()[0]
        self.expect(547,lambda:self.issue(passenger_id=-999))
        self.assertEqual(self.cn.execute('SELECT COUNT(*) FROM air.Ticket').fetchone()[0],n)
    def test_invalid_discount(self):self.expect(51016,lambda:self.issue(discount_id=999))
    def test_sale_after_departure(self):self.expect(51012,lambda:self.issue(sold_at=self.dep))
    def test_price_history_after_reference_change(self):
        tid=self.issue(discount_id=1);old=self.price(tid)
        self.cn.execute('UPDATE f SET Price=Price+10 FROM air.Fare f JOIN air.Ticket t ON t.FareId=f.FareId WHERE t.TicketId=?',tid)
        self.assertEqual(old,self.price(tid));self.assertGreater(old,0)
    def test_partial_and_multiple_payments(self):
        tid=self.issue();price=self.price(tid);half=(price/2).quantize(Decimal('.01'))
        pay(self.cn,tid,str(uuid.uuid4()),half,'CONFIRMED','CARD',self.at+timedelta(hours=1))
        self.assertEqual(self.cn.execute('SELECT Status FROM air.Ticket WHERE TicketId=?',tid).fetchone()[0],'PARTIAL')
        pay(self.cn,tid,str(uuid.uuid4()),price-half,'CONFIRMED','CARD',self.at+timedelta(hours=2))
        row=self.cn.execute('SELECT Status,Collected,Outstanding FROM air.vTicketFinance WHERE TicketId=?',tid).fetchone();self.assertEqual(tuple(row),('PAID',price,Decimal(0)))
    def test_failed_payment_not_collected(self):
        tid=self.issue();pay(self.cn,tid,str(uuid.uuid4()),Decimal('5'),'FAILED','CARD',self.at)
        self.assertEqual(self.cn.execute('SELECT Collected FROM air.vTicketFinance WHERE TicketId=?',tid).fetchone()[0],0)
    def test_overpayment_rejected(self):
        tid=self.issue();self.expect(51019,lambda:pay(self.cn,tid,str(uuid.uuid4()),self.price(tid)+1,'CONFIRMED','CARD',self.at))
    def test_negative_payment_check(self):
        tid=self.issue();self.expect(547,lambda:pay(self.cn,tid,str(uuid.uuid4()),-1,'FAILED','CARD',self.at))
    def test_cancel_full_refund_idempotent(self):
        tid=self.issue();price=self.price(tid);pay(self.cn,tid,str(uuid.uuid4()),price,'CONFIRMED','CARD',self.at)
        cancel(self.cn,tid,self.at+timedelta(hours=2),'Prueba');cancel(self.cn,tid,self.at+timedelta(hours=2),'Prueba')
        r=self.cn.execute('SELECT Status,Refunded,NetCash,Outstanding FROM air.vTicketFinance WHERE TicketId=?',tid).fetchone();self.assertEqual(tuple(r),('CANCELLED',price,Decimal(0),Decimal(0)))
        other=self.issue();self.assertNotEqual(tid,other)
    def test_payment_on_cancelled_ticket_rejected(self):
        tid=self.issue();cancel(self.cn,tid,self.at,'Prueba');self.expect(51018,lambda:pay(self.cn,tid,str(uuid.uuid4()),1,'CONFIRMED','CARD',self.at))
    def test_payment_time_rejected(self):
        tid=self.issue();self.expect(51018,lambda:pay(self.cn,tid,str(uuid.uuid4()),1,'CONFIRMED','CARD',self.at-timedelta(seconds=1)))
    def test_idempotent_issue(self):
        key=str(uuid.uuid4());one=self.issue(request_key=key);two=self.issue(request_key=key);self.assertEqual(one,two)
        self.expect(51011,lambda:self.issue(request_key=key,buyer_id=11))
    def test_idempotent_payment(self):
        tid=self.issue();key=str(uuid.uuid4());one=pay(self.cn,tid,key,1,'CONFIRMED','CARD',self.at);two=pay(self.cn,tid,key,1,'CONFIRMED','CARD',self.at);self.assertEqual(one,two)
        self.expect(51017,lambda:pay(self.cn,tid,key,2,'CONFIRMED','CARD',self.at))
    def test_direct_unique_index_backstop(self):
        tid=self.issue()
        self.expect(2601,lambda:self.cn.execute("INSERT air.Ticket(RequestKey,FlightId,SeatNo,CabinCode,PassengerId,BuyerId,ChannelId,FareId,DiscountId,OriginalPrice,DiscountPercent,SoldAt) SELECT NEWID(),FlightId,SeatNo,CabinCode,PassengerId,BuyerId,ChannelId,FareId,DiscountId,OriginalPrice,DiscountPercent,SoldAt FROM air.Ticket WHERE TicketId=?",tid))
    def test_atomic_rollback_of_prior_work(self):
        n=self.cn.execute('SELECT COUNT(*) FROM air.Ticket').fetchone()[0];tid=self.issue()
        self.expect(51019,lambda:pay(self.cn,tid,str(uuid.uuid4()),self.price(tid)+1,'CONFIRMED','CARD',self.at))
        self.assertEqual(self.cn.execute('SELECT COUNT(*) FROM air.Ticket').fetchone()[0],n)
    def test_fare_overlap_rejected(self):self.expect(51002,lambda:self.cn.execute("EXEC air.usp_AddFare 99001,1,'ECO','2025-02-01','2025-03-01',100"))
    def test_aircraft_overlap_rejected(self):self.expect(51006,lambda:self.cn.execute("EXEC air.usp_CreateFlight 99001,2,1,'2026-01-05'"))
    def test_wrong_weekday_rejected(self):self.expect(51003,lambda:self.cn.execute("EXEC air.usp_CreateFlight 99001,1,1,'2026-01-06'"))
    def test_crew_overlap_rejected(self):
        # Tripulante 3 ya está asignado a este vuelo: no se duplica intervalo.
        self.expect(51010,lambda:self.cn.execute('EXEC air.usp_AssignCrew ?,?',self.fid,1 if self.fid%8==2 else ((self.fid-1)%8//2)*2+1))
    def test_invalid_flight_transition(self):self.expect(51023,lambda:self.cn.execute("EXEC air.usp_ChangeFlightStatus ?,'ARRIVED',?",self.fid,self.dep))
    def test_pending_tickets_prevent_boarding(self):self.issue();self.expect(51026,lambda:self.cn.execute("EXEC air.usp_ChangeFlightStatus ?,'BOARDING',?",self.fid,self.dep-timedelta(minutes=30)))
    def test_flight_cancel_refunds_all(self):
        tid=self.issue();pay(self.cn,tid,str(uuid.uuid4()),1,'CONFIRMED','CARD',self.at)
        self.cn.execute("EXEC air.usp_ChangeFlightStatus ?,'CANCELLED',?",self.fid,self.dep-timedelta(minutes=30))
        self.assertEqual(self.cn.execute("SELECT COUNT(*) FROM air.Ticket WHERE FlightId=? AND Status<>'CANCELLED'",self.fid).fetchone()[0],0)
        self.assertEqual(self.cn.execute('SELECT NetCash FROM air.vTicketFinance WHERE TicketId=?',tid).fetchone()[0],0)
    def test_views_and_audit(self):
        result=rows(self.cn.execute((ROOT/'sql/10_audit.sql').read_text(encoding='utf8')))
        self.assertTrue(all(x['Violations']==0 for x in result),result)
    def test_timezone_next_day(self):
        n=self.cn.execute('SELECT COUNT(*) FROM air.vFlightLocal WHERE CAST(ArrivalLocal AS date)>CAST(DepartureLocal AS date)').fetchone()[0];self.assertGreater(n,0)
    def test_aggregation_not_multiplied(self):
        tid=self.issue();pay(self.cn,tid,str(uuid.uuid4()),1,'CONFIRMED','CARD',self.at);pay(self.cn,tid,str(uuid.uuid4()),2,'CONFIRMED','CARD',self.at)
        r=self.cn.execute('SELECT Collected,NetSales,Outstanding FROM air.vTicketFinance WHERE TicketId=?',tid).fetchone();self.assertEqual(r.Collected,3);self.assertEqual(r.NetSales-r.Collected,r.Outstanding)
    def test_catalog_matches_dictionary(self):
        schema=json.loads((ROOT/'docs/schema.json').read_text(encoding='utf8'))
        actual=rows(self.cn.execute("SELECT t.name TableName,c.name ColumnName,ty.name TypeName,c.max_length,c.precision,c.scale,c.is_nullable,c.is_computed FROM sys.tables t JOIN sys.schemas s ON s.schema_id=t.schema_id JOIN sys.columns c ON c.object_id=t.object_id JOIN sys.types ty ON ty.user_type_id=c.user_type_id WHERE s.name='air'"))
        lookup={(r['TableName'],r['ColumnName']):r for r in actual}
        self.assertEqual(len(lookup),sum(len(t['columns']) for t in schema))
        for table in schema:
            for c in table['columns']:
                row=lookup[(table['name'],c['name'])]
                if 'COMPUTED' in c['type']:self.assertTrue(row['is_computed']);continue
                self.assertEqual(bool(row['is_nullable']),c['nullable'])
                self.assertEqual(row['TypeName'],c['type'].split('(')[0].split()[0])
                if c['type'].startswith('decimal'):
                    self.assertEqual((row['precision'],row['scale']),(12,2) if c['name'] not in ('PercentValue','DiscountPercent') else (5,2))
    def test_web_url_is_required(self):
        self.expect(547,lambda:self.cn.execute("INSERT air.SalesChannel(ChannelId,Name,Kind) VALUES(99999,N'Inválido','WEB')"))
    def test_operator_cannot_bypass_procedures(self):
        # Usuario de prueba contenido en la transacción. Sin login ni secretos.
        self.cn.execute('CREATE USER pac_unit WITHOUT LOGIN; ALTER ROLE airline_operator ADD MEMBER pac_unit; EXECUTE AS USER=\'pac_unit\';')
        try:
            self.expect(229,lambda:self.cn.execute("INSERT air.Person(PersonId,FullName) VALUES(99999,N'No autorizado')"))
        finally:self.cn.execute('REVERT;')
    def test_operator_can_issue_through_ownership_chain(self):
        self.cn.execute("CREATE USER pac_unit2 WITHOUT LOGIN; ALTER ROLE airline_operator ADD MEMBER pac_unit2; EXECUTE AS USER='pac_unit2';")
        try:tid=self.issue();self.assertGreater(tid,0)
        finally:self.cn.execute('REVERT;')

@unittest.skipUnless(ENABLED,'Pendiente: requiere motor y base _Test')
class ConcurrencyTests(unittest.TestCase):
    def test_same_last_seat_two_independent_sessions(self):
        with connect() as cn:
            self.assertTrue(cn.execute('SELECT DB_NAME()').fetchone()[0].endswith('_Test'))
            # Dos sesiones compiten por la ÚLTIMA plaza disponible: llenar el resto temporalmente.
            cn.execute('BEGIN TRAN; EXEC air.usp_WriteLock;')
            fid,dep=cn.execute("SELECT TOP(1) FlightId,DepartureUtc FROM air.Flight WHERE Status='SCHEDULED' ORDER BY FlightId").fetchone();at=dep-timedelta(days=6)
            seats=[r[0] for r in cn.execute("SELECT fs.SeatNo FROM air.FlightSeat fs WHERE fs.FlightId=? AND NOT EXISTS(SELECT 1 FROM air.Ticket t WHERE t.FlightId=fs.FlightId AND t.SeatNo=fs.SeatNo AND t.Status<>'CANCELLED') ORDER BY fs.SeatNo",fid)]
            created=[]
            for seat in seats[:-1]:created.append(issue(cn,str(uuid.uuid4()),fid,seat,150,10,2,at))
            cn.execute('COMMIT;');last=seats[-1]
        barrier=threading.Barrier(2)
        def worker():
            import pyodbc
            with connect() as other:
                barrier.wait(timeout=10)
                try:return ('ok',issue(other,str(uuid.uuid4()),fid,last,150,10,2,at))
                except pyodbc.Error as exc:
                    if '51014' in str(exc):return ('rejected',51014)
                    raise
        try:
            with ThreadPoolExecutor(max_workers=2) as pool:result=list(pool.map(lambda _:worker(),range(2)))
            created += [v for s,v in result if s=='ok']
            self.assertEqual(sorted(s for s,v in result),['ok','rejected'])
            with connect() as cn:
                occupied=cn.execute("SELECT COUNT(*) FROM air.Ticket WHERE FlightId=? AND Status<>'CANCELLED'",fid).fetchone()[0]
                capacity=cn.execute('SELECT COUNT(*) FROM air.FlightSeat WHERE FlightId=?',fid).fetchone()[0]
                self.assertEqual(occupied,capacity)
            (ROOT/'evidence/concurrency_observed.json').write_text(json.dumps({'sessions':2,'result':result,'occupied':occupied,'capacity':capacity,'observed_utc':datetime.now(timezone.utc).isoformat()},indent=2)+'\n',encoding='utf8')
        finally:
            # Solo fixtures propios, en base desechable _Test; no toca ventas de la muestra.
            with connect() as cn:
                cn.execute('BEGIN TRAN; EXEC air.usp_WriteLock;')
                for tid in created:
                    cn.execute('DELETE FROM air.StatusEvent WHERE TicketId=?',tid);cn.execute('DELETE FROM air.Ticket WHERE TicketId=?',tid)
                cn.execute('COMMIT;')
    def test_concurrent_payments_cannot_exceed_balance(self):
        with connect() as cn:
            self.assertTrue(cn.execute('SELECT DB_NAME()').fetchone()[0].endswith('_Test'))
            fid,seat,dep=cn.execute("SELECT TOP(1) fs.FlightId,fs.SeatNo,f.DepartureUtc FROM air.FlightSeat fs JOIN air.Flight f ON f.FlightId=fs.FlightId WHERE f.Status='SCHEDULED' AND NOT EXISTS(SELECT 1 FROM air.Ticket t WHERE t.FlightId=fs.FlightId AND t.SeatNo=fs.SeatNo AND t.Status<>'CANCELLED') ORDER BY fs.FlightId,fs.SeatNo").fetchone()
            at=dep-timedelta(days=6);tid=issue(cn,str(uuid.uuid4()),fid,seat,150,10,2,at)
            price=cn.execute('SELECT FinalPrice FROM air.Ticket WHERE TicketId=?',tid).fetchone()[0]
        amount=(price*Decimal('.75')).quantize(Decimal('.01'));barrier=threading.Barrier(2)
        def worker():
            import pyodbc
            with connect() as other:
                barrier.wait(timeout=10)
                try:return ('ok',pay(other,tid,str(uuid.uuid4()),amount,'CONFIRMED','CARD',at))
                except pyodbc.Error as exc:
                    if '51019' in str(exc):return ('rejected',51019)
                    raise
        try:
            with ThreadPoolExecutor(max_workers=2) as pool:result=list(pool.map(lambda _:worker(),range(2)))
            self.assertEqual(sorted(s for s,v in result),['ok','rejected'])
            with connect() as cn:
                total=cn.execute("SELECT COALESCE(SUM(Amount),0) FROM air.Payment WHERE TicketId=? AND Status='CONFIRMED'",tid).fetchone()[0]
                self.assertEqual(total,amount);self.assertLessEqual(total,price)
            (ROOT/'evidence/concurrent_payments_observed.json').write_text(json.dumps({'sessions':2,'result':result,'confirmed':str(total),'price':str(price),'observed_utc':datetime.now(timezone.utc).isoformat()},indent=2)+'\n',encoding='utf8')
        finally:
            with connect() as cn:
                cn.execute('BEGIN TRAN; EXEC air.usp_WriteLock;')
                cn.execute('DELETE FROM air.Refund WHERE PaymentId IN (SELECT PaymentId FROM air.Payment WHERE TicketId=?)',tid)
                cn.execute('DELETE FROM air.Payment WHERE TicketId=?',tid);cn.execute('DELETE FROM air.StatusEvent WHERE TicketId=?',tid);cn.execute('DELETE FROM air.Ticket WHERE TicketId=?',tid);cn.execute('COMMIT;')

if __name__=='__main__':unittest.main(verbosity=2)
