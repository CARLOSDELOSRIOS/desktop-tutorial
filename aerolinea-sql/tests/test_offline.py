import unittest,json,re,hashlib
from pathlib import Path
from datetime import datetime,timedelta
from decimal import Decimal
from airline.db import ROOT,split_batches,connection_string
from airline.generate import make_plan,money
class OfflineTests(unittest.TestCase):
    def test_reproducible_inputs(self):
        self.assertEqual(make_plan(),make_plan());self.assertNotEqual(make_plan(1)['tickets'],make_plan(2)['tickets'])
    def test_inventory_and_capacity(self):
        p=make_plan();seen=set()
        for t in p['tickets']:
            key=(t['flight_id'],t['seat']);self.assertNotIn(key,seen);seen.add(key)
            self.assertRegex(t['seat'],r'^[1-7][A-F]$')
        for f in p['flights']:self.assertLessEqual(sum(t['flight_id']==f['flight_id'] for t in p['tickets']),42)
    def test_flight_temporal_consistency(self):
        p=make_plan()
        for a in p['flights']:
            self.assertLess(a['departure_utc'],a['arrival_utc'])
            for b in p['flights']:
                if a['aircraft_id']==b['aircraft_id'] and a['flight_id']<b['flight_id']:
                    self.assertLessEqual(datetime.fromisoformat(a['arrival_utc'])+timedelta(minutes=45),datetime.fromisoformat(b['departure_utc']))
    def test_financial_inputs(self):
        for t in make_plan()['tickets']:
            original=Decimal(t['original_price']);expected=money(original*(Decimal('.9') if t['discount_id'] else 1))
            self.assertEqual(expected,Decimal(t['final_price']))
            first=money(expected/2);self.assertEqual(first+(expected-first),expected)
    def test_coverage_of_required_scenarios(self):
        p=make_plan();ts=p['tickets']
        self.assertEqual({x['channel'] for x in ts},{1,2});self.assertTrue(any(t['passenger']>100 for t in ts));self.assertTrue(any(t['passenger']<=100 for t in ts))
        self.assertEqual({t['payment_mode'] for t in ts},{'unpaid','partial','full'});self.assertTrue(any(t['cancel'] for t in ts));self.assertTrue(any(t['failed_attempt'] for t in ts))
        self.assertEqual({f['final_state'] for f in p['flights']},{'SCHEDULED','BOARDING','DEPARTED','ARRIVED','CANCELLED'})
    def test_uuid_uniqueness(self):
        keys=[t['request_key'] for t in make_plan()['tickets']];self.assertEqual(len(keys),len(set(keys)))
    def test_split_go_not_sent(self):
        b=split_batches("SELECT 1;\nGO -- fin\nSELECT 2;\ngo\n")
        self.assertEqual(b,['SELECT 1;','SELECT 2;'])
    def test_go_in_strings_comments_and_identifiers(self):
        s="SELECT N'primera\nGO\núltima';\n/* inicio\nGO\n/* anidado */ */\nSELECT [col\nGO\n];\nGO\nSELECT 2;"
        self.assertEqual(len(split_batches(s)),2)
    def test_invalid_batches_rejected(self):
        for s in ["SELECT 'abierto",'/* no cierra','GO 2\n',':r unsafe.sql\n']:
            with self.assertRaises(ValueError):split_batches(s)
    def test_parameterized_procedure_client_contract(self):
        # Contrato de cliente, no ejecución SQL: contar marcadores frente a argumentos ODBC.
        from airline.db import issue,pay,cancel
        outer=self
        class Cursor:
            description=[('Id',)]
            def execute(self,sql,*params):
                self.description=[('PaymentId' if 'AS PaymentId' in sql else 'TicketId',)]
                outer.assertEqual(sql.count('?'),len(params),sql)
                outer.assertNotIn('input-injection',sql)
                return self
            def fetchall(self):return [(42,)]
            def close(self):pass
        class Connection:
            def cursor(self):return Cursor()
        cn=Connection()
        self.assertEqual(issue(cn,'00000000-0000-0000-0000-000000000001',1,'1A',1,2,1,datetime(2025,1,1)),42)
        self.assertEqual(pay(cn,42,'00000000-0000-0000-0000-000000000002',Decimal('10'),'CONFIRMED','CARD',datetime(2025,1,1)),42)
        cancel(cn,42,datetime(2025,1,1),'input-injection')
    def test_local_connection_encrypted(self):
        s=connection_string({},['ODBC Driver 18 for SQL Server'])
        self.assertIn('Encrypt=yes',s);self.assertIn('Trusted_Connection=yes',s);self.assertIn('TrustServerCertificate=no',s)
    def test_azure_rejects_untrusted_certificate(self):
        with self.assertRaises(ValueError):connection_string({'AIRLINE_MODE':'azure','AIRLINE_SERVER':'tcp:test.database.windows.net,1433','AIRLINE_AUTH':'entra','AIRLINE_TRUST_CERTIFICATE':'yes'},['ODBC Driver 18 for SQL Server'])
    def test_azure_requires_correct_auth(self):
        with self.assertRaises(ValueError):connection_string({'AIRLINE_SERVER':'test.database.windows.net'},['ODBC Driver 18 for SQL Server'])
    def test_odbc_escaping(self):
        s=connection_string({'AIRLINE_AUTH':'sql','AIRLINE_USER':'u','AIRLINE_PASSWORD':'a};Trusted_Connection=yes;'},['ODBC Driver 18 for SQL Server'])
        self.assertIn('PWD={a}};Trusted_Connection=yes;}',s)
    def test_no_driver_invented(self):
        with self.assertRaises(ValueError):connection_string({},[])
    def test_all_controlled_sql_has_valid_batch_structure(self):
        for p in (ROOT/'sql').rglob('*.sql'):self.assertTrue(split_batches(p.read_text(encoding='utf8')),p.name)
    def test_dictionary_matches_ddl(self):
        ddl=(ROOT/'sql/01_schema.sql').read_text(encoding='utf8');tables=json.loads((ROOT/'docs/schema.json').read_text(encoding='utf8'))
        self.assertEqual(len(re.findall(r'CREATE TABLE air\.',ddl)),len(tables))
        for t in tables:
            segment=ddl.split(f"CREATE TABLE air.{t['name']} (",1)[1].split('\n);',1)[0]
            for c in t['columns']:self.assertRegex(segment,rf"\b{c['name']}\b")
            for k in t['constraints']:self.assertIn(k,segment)
    def test_queries_are_catalogued(self):
        qs=json.loads((ROOT/'docs/query_catalog.json').read_text(encoding='utf8'));self.assertGreaterEqual(len(qs),15)
        for q in qs:self.assertEqual((ROOT/f"sql/queries/{q['id']}.sql").read_text(encoding='utf8').strip(),q['sql'])
    def test_reference_insert_file_never_contains_real_domain(self):
        ref=(ROOT/'sql/03_reference.sql').read_text(encoding='utf8')
        self.assertIn('example.invalid',ref);self.assertNotIn('@gmail.com',ref)
    def test_generation_bounds(self):
        for w in (0,53):
            with self.assertRaises(ValueError):make_plan(weeks=w)
    def test_no_secrets_committed(self):
        self.assertFalse((ROOT/'.env').exists())
        for p in list((ROOT/'src').rglob('*.py'))+list((ROOT/'sql').rglob('*.sql')):
            text=p.read_text(encoding='utf8');self.assertNotRegex(text,r'(?i)(?:password|pwd)\s*=\s*[\x27\"][A-Za-z0-9!]{8,}')
if __name__=='__main__':unittest.main()
