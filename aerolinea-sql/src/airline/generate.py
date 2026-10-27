"""Genera insumos deterministas; no ejecuta ni simula resultados del motor."""
import random,json,hashlib,uuid
from datetime import date,datetime,timedelta,timezone
from decimal import Decimal,ROUND_HALF_UP
from zoneinfo import ZoneInfo
from .db import ROOT
SEED=6112026
AIRPORTS=[('JFK','Nueva York JFK','Nueva York','Eastern Standard Time','America/New_York'),('BOS','Boston Logan','Boston','Eastern Standard Time','America/New_York'),('MIA','Miami','Miami','Eastern Standard Time','America/New_York'),('ORD','Chicago O Hare','Chicago','Central Standard Time','America/Chicago'),('DFW','Dallas Fort Worth','Dallas','Central Standard Time','America/Chicago'),('LAX','Los Ángeles','Los Ángeles','Pacific Standard Time','America/Los_Angeles')]
# ruta, origen, destino, día ISO, hora local, duración, avión
ROUTES=[(1,'JFK','BOS',1,'08:00',80,1),(2,'BOS','JFK',1,'11:00',85,1),(3,'JFK','MIA',2,'08:00',180,2),(4,'MIA','JFK',2,'13:00',180,2),(5,'ORD','DFW',3,'08:00',150,3),(6,'DFW','ORD',3,'12:00',150,3),(7,'LAX','JFK',3,'22:00',300,4),(8,'JFK','LAX',4,'14:00',360,4)]
def literal(x):
    if x is None:return 'NULL'
    if isinstance(x,(int,Decimal)):return str(x)
    return "N'"+str(x).replace("'","''")+"'"
def insert(table,cols,values):return f"INSERT air.{table}({','.join(cols)}) VALUES("+','.join(literal(v) for v in values)+');'
def money(x):return Decimal(str(x)).quantize(Decimal('.01'),rounding=ROUND_HALF_UP)
def make_plan(seed=SEED,weeks=4):
    if not 1<=weeks<=52:raise ValueError('weeks debe estar entre 1 y 52')
    rng=random.Random(seed);flights=[];tickets=[]
    start=date(2026,1,5)
    tz={a[0]:a[4] for a in AIRPORTS}
    for week in range(weeks):
        for rid,o,d,day,hm,duration,plane in ROUTES:
            fdate=start+timedelta(weeks=week,days=day-1)
            dep=datetime.combine(fdate,datetime.strptime(hm,'%H:%M').time(),ZoneInfo(tz[o])).astimezone(timezone.utc).replace(tzinfo=None)
            fid=week*8+rid
            state=['ARRIVED','SCHEDULED','BOARDING','DEPARTED','CANCELLED','SCHEDULED','ARRIVED','SCHEDULED'][(fid-1)%8]
            flights.append(dict(flight_id=fid,schedule_id=rid,aircraft_id=plane,date=fdate.isoformat(),departure_utc=dep.isoformat(),arrival_utc=(dep+timedelta(minutes=duration)).isoformat(),final_state=state))
            seats=[f'{r}{c}' for r in range(1,8) for c in 'ABCDEF']
            # 28 asientos distintos por vuelo. VIP y ECO siempre representadas.
            selected=rng.sample(seats[:6],4)+rng.sample(seats[6:],24)
            for j,seat in enumerate(selected):
                sold=dep-timedelta(days=30,hours=j)
                passenger=1+rng.randrange(200);buyer=passenger if j%3 else 1+rng.randrange(200)
                disc=1 if j%4==0 else None
                cabin='VIP' if seat.startswith('1') else 'ECO'
                price=money((100+rid*15)*(Decimal('2.5') if cabin=='VIP' else 1))
                final=money(price*(Decimal('.90') if disc else 1))
                # En vuelos operados/embarque todos pagan o se cancelan; reservas abiertas en programados.
                mode='partial' if state=='SCHEDULED' and j%5==0 else 'unpaid' if state=='SCHEDULED' and j%7==0 else 'full'
                cancel=j%9==0
                key=str(uuid.uuid5(uuid.NAMESPACE_URL,f'airline-pac/{seed}/{fid}/{seat}'))
                tickets.append(dict(request_key=key,flight_id=fid,seat=seat,passenger=passenger,buyer=buyer,channel=1 if j%2 else 2,sold_at=sold.isoformat(),discount_id=disc,original_price=str(price),final_price=str(final),payment_mode=mode,cancel=cancel,failed_attempt=j%6==0))
    return dict(seed=seed,weeks=weeks,flights=flights,tickets=tickets,notice='INSUMOS SINTÉTICOS; no son resultados de SQL Server ni comportamiento real del mercado')

def generate(seed=SEED,weeks=4):
    plan=make_plan(seed,weeks);data=ROOT/'data';data.mkdir(exist_ok=True)
    (data/'synthetic_plan.json').write_text(json.dumps(plan,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    ref=['-- DATOS SINTÉTICOS. Preparar en esquema vacío. No repetir carga.','SET XACT_ABORT ON;\nBEGIN TRAN;']
    for a in AIRPORTS:ref.append(insert('Airport',['AirportCode','Name','City','WindowsTZ','IanaTZ'],a))
    for a in [('VIP','VIP'),('ECO','Económica')]:ref.append(insert('Cabin',['CabinCode','Name'],a))
    for i in range(1,217):
        ref.append(insert('Person',['PersonId','FullName','Email','BirthDate'],[i,f'Persona sintética {i:03}',f'persona{i:03}@example.invalid',date(1960+i%40,1+i%12,1+i%27)]))
        if i<=100:ref.append(insert('Customer',['PersonId','RegisteredAt'],[i,'2024-01-01T00:00:00']))
    for i in range(1,17):ref.append(insert('Employee',['EmployeeId','PersonId','RoleCode'],[i,200+i,'PILOT' if i%2 else 'CABIN']))
    for a in range(1,5):
        ref.append(insert('Aircraft',['AircraftId','Registration','Model'],[a,f'N-SYN-{a:03}','Configuración académica 42 plazas']))
        for row in range(1,8):
            for c in 'ABCDEF':ref.append(insert('AircraftSeat',['AircraftId','SeatNo','CabinCode'],[a,f'{row}{c}','VIP' if row==1 else 'ECO']))
    for r,o,d,day,hm,dur,a in ROUTES:
        ref.append(insert('Route',['RouteId','OriginCode','DestinationCode'],[r,o,d]))
        ref.append(insert('Schedule',['ScheduleId','RouteId','IsoWeekday','DepartureLocal','DurationMinutes','ValidFrom','ValidTo'],[r,r,day,hm,dur,'2026-01-01','2027-01-01']))
    ref += [insert('SalesChannel',['ChannelId','Name','Kind','Address','Url','AirportCode'],[1,'Oficina sintética JFK','PHYSICAL','Terminal de demostración',None,'JFK']),insert('SalesChannel',['ChannelId','Name','Kind','Address','Url','AirportCode'],[2,'Portal académico','WEB',None,'https://airline.example.invalid',None]),insert('Discount',['DiscountId','Code','PercentValue','ValidFrom','ValidTo'],[1,'DEMO10',10,'2025-01-01','2027-01-01'])]
    ref.append('COMMIT;\nGO')
    (ROOT/'sql/03_reference.sql').write_text('\n'.join(ref)+'\n',encoding='utf8')
    sql=['-- GENERADO con semilla fija. Emplea procedimientos; GO solo separa lotes.','IF EXISTS(SELECT 1 FROM air.Flight) THROW 51100,\'La carga exige una base sin vuelos.\',1;\nGO']
    for r,_,_,_,_,_,_ in ROUTES:
        for c,mult in [('ECO',Decimal(1)),('VIP',Decimal('2.5'))]:sql.append(f"EXEC air.usp_AddFare {r*10+(1 if c=='ECO' else 2)},{r},'{c}','2025-01-01','2027-01-01',{money((100+r*15)*mult)};")
    sql.append('GO')
    for f in plan['flights']:
        sql += [f"EXEC air.usp_CreateFlight {f['flight_id']},{f['schedule_id']},{f['aircraft_id']},'{f['date']}';",f"EXEC air.usp_AssignCrew {f['flight_id']},{f['aircraft_id']*2-1};",f"EXEC air.usp_AssignCrew {f['flight_id']},{f['aircraft_id']*2};"]
    sql.append('GO')
    for t in plan['tickets']:
        sold=datetime.fromisoformat(t['sold_at']);amount=Decimal(t['final_price'])
        lines=['DECLARE @id bigint;',f"EXEC air.usp_IssueTicket '{t['request_key']}',{t['flight_id']},'{t['seat']}',{t['passenger']},{t['buyer']},{t['channel']},'{t['sold_at']}',{t['discount_id'] or 'NULL'},@id OUTPUT;"]
        seq=0
        def payment(amt,status,delta):
            nonlocal seq
            seq+=1;key=uuid.uuid5(uuid.UUID(t['request_key']),f'pay/{seq}')
            lines.append(f"EXEC air.usp_RegisterPayment @id,'{key}',{amt},'{status}','CARD','{(sold+timedelta(hours=delta)).isoformat()}';")
        if t['failed_attempt']:payment(Decimal('1.00'),'FAILED',1)
        if t['payment_mode']!='unpaid':
            first=money(amount/2);payment(first,'CONFIRMED',2)
            if t['payment_mode']=='full':payment(amount-first,'CONFIRMED',3)
        if t['cancel']:lines.append(f"EXEC air.usp_CancelTicket @id,'{(sold+timedelta(hours=4)).isoformat()}',N'Cancelación sintética voluntaria';")
        sql += ['\n'.join(lines),'GO']
    for f in plan['flights']:
        fid=f['flight_id'];dep=datetime.fromisoformat(f['departure_utc']);arr=datetime.fromisoformat(f['arrival_utc']);state=f['final_state']
        if state=='CANCELLED':sql.append(f"EXEC air.usp_ChangeFlightStatus {fid},'CANCELLED','{(dep-timedelta(days=1)).isoformat()}';")
        if state in ('BOARDING','DEPARTED','ARRIVED'):sql.append(f"EXEC air.usp_ChangeFlightStatus {fid},'BOARDING','{(dep-timedelta(minutes=45)).isoformat()}';")
        if state in ('DEPARTED','ARRIVED'):sql.append(f"EXEC air.usp_ChangeFlightStatus {fid},'DEPARTED','{dep.isoformat()}';")
        if state=='ARRIVED':sql.append(f"EXEC air.usp_ChangeFlightStatus {fid},'ARRIVED','{arr.isoformat()}';")
    sql.append('GO')
    (ROOT/'sql/07_synthetic.sql').write_text('\n'.join(sql)+'\n',encoding='utf8')
    manifest={'seed':seed,'weeks':weeks,'planned_flights':len(plan['flights']),'planned_tickets':len(plan['tickets']),'plan_sha256':hashlib.sha256((data/'synthetic_plan.json').read_bytes()).hexdigest(),'status':'Generación de insumos ejecutada; carga SQL pendiente hasta conexión real'}
    (data/'generation_manifest.json').write_text(json.dumps(manifest,indent=2)+'\n',encoding='utf8')
    return manifest
if __name__=='__main__':print(json.dumps(generate(),indent=2))
