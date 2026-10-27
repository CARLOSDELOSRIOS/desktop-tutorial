"""Exporta exclusivamente resultados reales obtenidos del motor conectado."""
import json,hashlib
from pathlib import Path
from datetime import datetime,timezone
from decimal import Decimal
from .db import ROOT,rows

def analyze(cn,start,end,mode='local'):
    import pandas as pd
    import matplotlib
    matplotlib.use('Agg')
    import matplotlib.pyplot as plt
    if start>=end:raise ValueError('El inicio debe preceder al fin')
    if mode not in ('local','azure'):raise ValueError('Modo no reconocido')
    cur=cn.cursor()
    try:
        cur.execute("SELECT DB_NAME() DatabaseName,@@VERSION EngineVersion,SERVERPROPERTY('EngineEdition') EngineEdition")
        identity=rows(cur)[0]
    finally:cur.close()
    is_azure=int(identity['EngineEdition'])==5
    if mode=='azure' and not is_azure:raise ValueError('No es Azure SQL Database: no se guardará como evidencia de nube')
    if mode=='local' and is_azure:raise ValueError('La conexión apunta a Azure; seleccione --mode azure')
    dest=ROOT/'reports'/mode;dest.mkdir(parents=True,exist_ok=True)
    manifest={'observed_utc':datetime.now(timezone.utc).isoformat(),'database':identity,'start':str(start),'end_exclusive':str(end),'queries':[]}
    frames={}
    # Snapshot SERIALIZABLE: bloquea escrituras mientras se obtienen los informes, sin requerir activar SNAPSHOT en la instancia.
    cn.execute('SET TRANSACTION ISOLATION LEVEL SERIALIZABLE; BEGIN TRAN;')
    try:
        cn.execute('EXEC air.usp_WriteLock;')
        for q in json.loads((ROOT/'docs/query_catalog.json').read_text(encoding='utf8')):
            sql=(ROOT/f"sql/queries/{q['id']}.sql").read_text(encoding='utf8')
            cur=cn.cursor()
            try:
                cur.execute('DECLARE @Start date=?,@End date=?;\n'+sql,start,end)
                data=rows(cur)
                names=[x[0] for x in cur.description] if cur.description else []
                frame=pd.DataFrame(data,columns=names)
            finally:cur.close()
            frame.to_csv(dest/f"{q['id']}.csv",index=False,encoding='utf-8-sig')
            frames[q['id']]=frame
            manifest['queries'].append({'id':q['id'],'row_count':len(frame),'sql_sha256':hashlib.sha256(sql.encode()).hexdigest(),'csv_sha256':hashlib.sha256((dest/f"{q['id']}.csv").read_bytes()).hexdigest()})
        cn.execute('COMMIT;')
    except Exception:
        cn.execute('IF @@TRANCOUNT>0 ROLLBACK;');raise
    finally:cn.execute('SET TRANSACTION ISOLATION LEVEL READ COMMITTED;')
    q3=frames['Q03'].iloc[0];q15=frames['Q15'].iloc[0]
    if any(Decimal(str(q15[k]))!=0 for k in ('BalanceDifference','CollectedDifference')):raise AssertionError('La conciliación financiera no es cero; revisar antes de interpretar')
    # Gráficos de resultados realmente consultados; nunca se generan a partir del plan sintético.
    fig,ax=plt.subplots(figsize=(9,4.5))
    f=frames['Q02'];labels=[f"R{r.RouteId}/{r.CabinCode}" for r in f.itertuples()]
    ax.bar(labels,[float(x) for x in f['OccupancyPercent']],color='#147d92');ax.set(ylabel='Plazas reservadas / capacidad (%)',ylim=(0,100),title='Ocupación reservada por ruta y cabina');ax.tick_params(axis='x',rotation=60);fig.tight_layout();fig.savefig(dest/'fig01_occupancy.png',dpi=180);plt.close(fig)
    fig,ax=plt.subplots(figsize=(7,4))
    columns=['NetSales','Collected','Refunded','Outstanding']
    ax.bar(['Ventas netas','Cobros','Reembolsos','Saldo'],[float(q3[c]) for c in columns],color=['#147d92','#0d5264','#d69d33','#869ca5']);ax.set(ylabel='USD',title='Contratos, caja y saldos de la cohorte');fig.tight_layout();fig.savefig(dest/'fig02_finance.png',dpi=180);plt.close(fig)
    text=f"""# Resultados observados — {mode}

Base: {identity['DatabaseName']}. Intervalo de venta/vuelo según cada consulta: [{start}, {end}).

Q03 devuelve {int(q3['Tickets'])} tiquetes emitidos en la cohorte, USD {q3['NetSales']} de ventas comerciales netas, USD {q3['Collected']} cobrados y USD {q3['Refunded']} reembolsados. El saldo pendiente es USD {q3['Outstanding']}.

Q15 confirma una diferencia de balance de {q15['BalanceDifference']} y diferencia de cobros de {q15['CollectedDifference']}. Se verificó la conciliación sobre resultados del motor.

Las figuras fig01 y fig02 proceden respectivamente de Q02 y Q03. Revisar docs/consultas.md para unidades, denominadores y granularidad. Los datos son sintéticos; sus asociaciones no prueban causalidad ni demanda real. No se modelan costos, por lo que no se calcula rentabilidad.

Conclusión acotada: la ejecución produjo los agregados anteriores y superó las conciliaciones financieras indicadas. La interpretación por ruta debe acompañarse de las tablas guardadas; no atribuir causalidad ni generalizar al mercado.
"""
    (dest/'resultados.md').write_text(text,encoding='utf8')
    (dest/'manifest.json').write_text(json.dumps(manifest,ensure_ascii=False,indent=2,default=str)+'\n',encoding='utf8')
    return manifest
