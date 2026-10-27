import argparse,json,os,sys
from pathlib import Path
from datetime import date,datetime,timezone
from decimal import Decimal
from .db import ROOT,connect,diagnostics,execute_file,issue,pay,cancel

def utc_input(value):
    x=datetime.fromisoformat(value)
    return x.astimezone(timezone.utc).replace(tzinfo=None) if x.tzinfo else x

def main():
    p=argparse.ArgumentParser(description='PAC aerolínea: generación, despliegue y consultas reproducibles')
    s=p.add_subparsers(dest='command',required=True)
    g=s.add_parser('generate');g.add_argument('--seed',type=int,default=6112026);g.add_argument('--weeks',type=int,default=4)
    s.add_parser('diagnose');s.add_parser('init');s.add_parser('verify')
    a=s.add_parser('analyze');a.add_argument('--start',type=date.fromisoformat,default=date(2025,1,1));a.add_argument('--end',type=date.fromisoformat,default=date(2027,1,1));a.add_argument('--mode',choices=['local','azure'],default='local')
    d=s.add_parser('demo');d.add_argument('--request-key',required=True,help='UUID persistente del intento; reutilizar en reintentos');d.add_argument('--flight',type=int,required=True);d.add_argument('--seat',required=True);d.add_argument('--passenger',type=int,required=True);d.add_argument('--buyer',type=int,required=True);d.add_argument('--channel',type=int,required=True);d.add_argument('--at',type=utc_input,required=True)
    r=s.add_parser('pay');r.add_argument('--ticket',type=int,required=True);r.add_argument('--request-key',required=True);r.add_argument('--amount',type=Decimal,required=True);r.add_argument('--status',choices=['CONFIRMED','FAILED'],required=True);r.add_argument('--method',choices=['CARD','CASH','TRANSFER'],default='CARD');r.add_argument('--at',type=utc_input,required=True)
    c=s.add_parser('cancel');c.add_argument('--ticket',type=int,required=True);c.add_argument('--at',type=utc_input,required=True);c.add_argument('--reason',required=True)
    args=p.parse_args()
    if args.command=='generate':
        from .generate import generate
        print(json.dumps(generate(args.seed,args.weeks),indent=2));return
    try:
        from dotenv import load_dotenv
        load_dotenv(ROOT/'.env',override=False)
        mode=os.environ.get('AIRLINE_MODE','local')
        with connect() as cn:
            if args.command=='diagnose':
                result=diagnostics(cn);result['observed_utc']=datetime.now(timezone.utc).isoformat()
                path=ROOT/'evidence'/f'diagnostic_{mode}.json';path.write_text(json.dumps(result,indent=2,default=str)+'\n',encoding='utf8')
                print(json.dumps(result,ensure_ascii=False,indent=2,default=str))
            elif args.command=='init':
                files=['01_schema.sql','02_indexes.sql','03_reference.sql','04_views.sql','05_procedures.sql','06_security.sql','07_synthetic.sql']
                journal=[];cn.execute('BEGIN TRAN;')
                try:
                    for f in files:
                        n=execute_file(cn,ROOT/'sql'/f);journal.append({'file':f,'batches':n});print(f'{f}: {n} lotes enviados')
                    cn.execute('COMMIT;')
                except Exception:
                    cn.execute('IF @@TRANCOUNT>0 ROLLBACK;');raise
                path=ROOT/'evidence'/f'deploy_{mode}.json';path.write_text(json.dumps({'observed_utc':datetime.now(timezone.utc).isoformat(),'status':'COMMITTED','files':journal},indent=2)+'\n',encoding='utf8')
            elif args.command=='verify':
                from .db import rows
                cur=cn.cursor()
                try:
                    cur.execute((ROOT/'sql/10_audit.sql').read_text(encoding='utf8'));result=rows(cur)
                finally:cur.close()
                path=ROOT/'evidence'/f'audit_{mode}.json';path.write_text(json.dumps(result,indent=2,default=str)+'\n',encoding='utf8')
                print(json.dumps(result,indent=2,default=str))
                if any(int(x['Violations']) for x in result):raise AssertionError('Se detectaron inconsistencias')
            elif args.command=='analyze':
                from .analysis import analyze
                result=analyze(cn,args.start,args.end,args.mode);print(f"{len(result['queries'])} consultas exportadas en reports/{args.mode}")
            elif args.command=='demo':print('TicketId:',issue(cn,args.request_key,args.flight,args.seat,args.passenger,args.buyer,args.channel,args.at))
            elif args.command=='pay':print('PaymentId:',pay(cn,args.ticket,args.request_key,args.amount,args.status,args.method,args.at))
            elif args.command=='cancel':cancel(cn,args.ticket,args.at,args.reason);print('Cancelación completada')
    except Exception as exc:
        # No se imprime la cadena de conexión ni credenciales. Tipo y mensaje saneado del nivel propio.
        print(f'ERROR [{type(exc).__name__}]: revise configuración y evidence; no se declara éxito.',file=sys.stderr)
        if isinstance(exc,(ValueError,AssertionError,RuntimeError)):print(str(exc),file=sys.stderr)
        raise SystemExit(1)
if __name__=='__main__':main()
