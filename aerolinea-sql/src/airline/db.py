"""ODBC, configuración validada y ejecución de lotes propios (sin enviar GO)."""
from __future__ import annotations
import os,re,json,platform,sys
from contextlib import contextmanager
from pathlib import Path
ROOT=Path(__file__).resolve().parents[2]

def odbc_value(value):
    return '{'+str(value).replace('}','}}')+'}'

def connection_string(env=None,drivers=None):
    e=os.environ if env is None else env
    server=e.get('AIRLINE_SERVER','localhost')
    database=e.get('AIRLINE_DATABASE','AirlinePAC')
    available=drivers
    if available is None:
        import pyodbc
        available=pyodbc.drivers()
    driver=e.get('AIRLINE_DRIVER') or next((d for d in ('ODBC Driver 18 for SQL Server','ODBC Driver 17 for SQL Server') if d in available),None)
    if not driver or driver not in available:
        raise ValueError('Instale ODBC Driver 18 para SQL Server de la arquitectura de Python; controladores disponibles: '+', '.join(available))
    trust=e.get('AIRLINE_TRUST_CERTIFICATE','no').lower()
    if trust not in ('yes','no'):raise ValueError('AIRLINE_TRUST_CERTIFICATE debe ser yes o no')
    mode=e.get('AIRLINE_MODE','local').lower()
    if mode not in ('local','azure'):raise ValueError('AIRLINE_MODE debe ser local o azure')
    azure=mode=='azure' or '.database.windows.net' in server.lower()
    if azure and trust!='no':raise ValueError('Azure exige TrustServerCertificate=no')
    if azure and '.database.windows.net' not in server.lower():raise ValueError('Indique el FQDN real de Azure SQL Database')
    auth=e.get('AIRLINE_AUTH','windows').lower()
    items=[f'DRIVER={odbc_value(driver)}',f'SERVER={odbc_value(server)}',f'DATABASE={odbc_value(database)}','Encrypt=yes',f'TrustServerCertificate={trust}','Connection Timeout=15','APP=AirlinePAC']
    if auth=='windows':
        if azure:raise ValueError('En Azure use AIRLINE_AUTH=entra o sql')
        items+=['Trusted_Connection=yes']
    elif auth=='entra':items+=['Authentication=ActiveDirectoryInteractive']
    elif auth=='sql':
        if not e.get('AIRLINE_USER') or not e.get('AIRLINE_PASSWORD'):raise ValueError('Faltan credenciales externas para autenticación SQL')
        items += [f'UID={odbc_value(e["AIRLINE_USER"])}',f'PWD={odbc_value(e["AIRLINE_PASSWORD"])}']
    else:raise ValueError('AIRLINE_AUTH: windows, entra o sql')
    return ';'.join(items)+';'

@contextmanager
def connect(env=None):
    import pyodbc
    cn=pyodbc.connect(connection_string(env),autocommit=True)
    try:
        cn.execute('SET ANSI_NULLS ON; SET QUOTED_IDENTIFIER ON; SET ANSI_PADDING ON; SET ANSI_WARNINGS ON; SET ARITHABORT ON; SET CONCAT_NULL_YIELDS_NULL ON; SET NUMERIC_ROUNDABORT OFF;')
        yield cn
    finally:cn.close()

def _state_after(line,state):
    # Estados conservados entre líneas: comentarios anidados, cadenas y nombres delimitados.
    quote,depth=state;i=0
    while i<len(line):
        a=line[i:i+2];c=line[i]
        if depth:
            if a=='/*':depth+=1;i+=2;continue
            if a=='*/':depth-=1;i+=2;continue
        elif quote:
            closing=']' if quote=='[' else quote
            if c==closing:
                if i+1<len(line) and line[i+1]==closing:i+=2;continue
                quote=None
        else:
            if a=='--':break
            if a=='/*':depth=1;i+=2;continue
            if c in ("'",'"','['):quote=c
        i+=1
    return quote,depth

def split_batches(sql):
    chunks=[];lines=[];state=(None,0)
    for line in sql.splitlines(keepends=True):
        if state==(None,0) and re.match(r'^\s*GO\s*(?:--.*)?$',line,re.I):
            if ''.join(lines).strip():chunks.append(''.join(lines).strip())
            lines=[];continue
        if state==(None,0) and (re.match(r'^\s*GO\s+\d',line,re.I) or line.lstrip().startswith(':')):
            raise ValueError('No se admiten GO repetido ni directivas SQLCMD')
        lines.append(line);state=_state_after(line,state)
    if state!=(None,0):raise ValueError('Cadena, identificador o comentario sin cerrar')
    if ''.join(lines).strip():chunks.append(''.join(lines).strip())
    return chunks

def execute_file(cn,path):
    p=Path(path);batches=split_batches(p.read_text(encoding='utf-8-sig'))
    for i,batch in enumerate(batches,1):
        cur=cn.cursor()
        try:
            cur.execute(batch)
            while cur.nextset():pass
        except Exception as exc:
            # El archivo y número de lote identifican el fallo sin registrar cadena de conexión.
            raise RuntimeError(f'{p.name}, lote {i}: {type(exc).__name__}') from exc
        finally:cur.close()
    return len(batches)

def rows(cur):
    while cur.description is None:
        if not cur.nextset():return []
    keys=[x[0] for x in cur.description]
    return [dict(zip(keys,r)) for r in cur.fetchall()]

def issue(cn,request_key,flight_id,seat_no,passenger_id,buyer_id,channel_id,sold_at,discount_id=None):
    cur=cn.cursor()
    try:
        cur.execute('DECLARE @id bigint; EXEC air.usp_IssueTicket ?,?,?,?,?,?,?,?,@id OUTPUT; SELECT @id AS TicketId;',str(request_key),flight_id,seat_no,passenger_id,buyer_id,channel_id,sold_at,discount_id)
        return rows(cur)[0]['TicketId']
    finally:cur.close()

def pay(cn,ticket_id,request_key,amount,status,method,paid_at):
    cur=cn.cursor()
    try:
        cur.execute('DECLARE @id bigint; EXEC air.usp_RegisterPayment ?,?,?,?,?,?,@id OUTPUT; SELECT @id AS PaymentId;',ticket_id,str(request_key),amount,status,method,paid_at)
        return rows(cur)[0]['PaymentId']
    finally:cur.close()

def cancel(cn,ticket_id,at,reason):
    cur=cn.cursor()
    try:cur.execute('EXEC air.usp_CancelTicket ?,?,?;',ticket_id,at,reason)
    finally:cur.close()

def diagnostics(cn):
    cur=cn.cursor()
    try:
        cur.execute((ROOT/'sql/00_diagnostic.sql').read_text(encoding='utf-8'))
        datasets=[]
        while True:
            if cur.description:datasets.append([dict(zip([c[0] for c in cur.description],r)) for r in cur.fetchall()])
            if not cur.nextset():break
        return {'python':sys.version,'platform':platform.platform(),'resultsets':datasets}
    finally:cur.close()
