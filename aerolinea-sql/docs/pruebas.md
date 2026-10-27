# Plan de pruebas y estado real

## Ejecutado en el entorno remoto

`PYTHONPATH=src python -m unittest discover -s tests -p test_offline.py -v`: **21 pruebas superadas**. Se verificaron reproducibilidad, cobertura de escenarios, coherencia temporal del plan, capacidad de insumos, aritmética Decimal, claves únicas de solicitudes, separación GO incluso en cadenas/comentarios, configuración cifrada, rechazo de certificado no verificado en Azure, escape de componentes ODBC, ausencia de secretos, concordancia DDL/diccionario y catálogo de consultas. Una prueba adicional verifica el contrato del cliente ODBC (cantidad de marcadores y argumentos), sin ejecutar SQL ni simular resultados de negocio. El primer ensayo de ese doble de prueba falló por un alias de columna del propio doble; se corrigió y se conserva el log inicial, distinguido del resultado final. El log original está en `evidence/offline_tests.txt`.

Las 18 consultas SELECT se analizaron sintácticamente con sqlglot 27.20.0 en dialecto T-SQL. Esta herramienta no valida procedimientos, permisos, bloqueos ni ejecución. El alcance y resultados están en `evidence/query_parse.json`; no sustituye SQL Server. Se generaron 32 vuelos y 896 solicitudes de tiquete, sin afirmar que ya existan en una base.

No hay motor SQL Server accesible ni controladores ODBC de SQL Server instalados en este contenedor. Docker respondió al diagnóstico, pero la descarga de capas de la imagen oficial falló con Forbidden; el paquete oficial redirigió a una descarga bloqueada con HTTP 403. No se inició motor. No se empleó SQLite ni se atribuyeron resultados de otro motor a T-SQL.

## Suite funcional SQL preparada

`tests/test_engine.py` contiene pruebas de invitado, asientos duplicados y ajenos, FK inválida, descuento inválido, venta posterior a salida, historia de precio, pagos parciales/múltiples/fallidos, sobrepago, importe negativo, cancelación con reembolso, cobro tras cancelación, tiempos, idempotencia, índice único como barrera directa, rollback de trabajo previo, superposición tarifaria, solapamiento de aeronave y tripulante, día semanal inválido, transición inválida, embarque con deuda, cancelación de vuelo, vistas, auditorías, zonas horarias, agregación financiera y permisos del operador. La prueba concurrente utiliza dos conexiones y una barrera para competir por la última plaza disponible.

Estado de **todas las pruebas SQL: PENDIENTE**. La ejecución de unittest sin habilitación las registra como omitidas, no aprobadas. Solo se habilitan con AIRLINE_TEST_SQL=1 y una base cuyo nombre termina en `_Test`. La prueba concurrente confirma el aforo completo y un solo ganador; conserva su evidencia solo si efectivamente se ejecuta. Usa y limpia fixtures propios en la base de prueba. No ejecutar en la base de la entrega.

## Secuencia exacta en Windows

Primero completar README y ejecutar satisfactoriamente el proyecto principal. En SSMS, conectado a master:

```sql
IF DB_ID(N'AirlinePAC_Test') IS NULL EXEC(N'CREATE DATABASE AirlinePAC_Test');
```

Después en PowerShell, desde la raíz del proyecto:

```powershell
$env:PYTHONPATH="$PWD\src"
$env:AIRLINE_MODE='local'
$env:AIRLINE_SERVER='localhost'
$env:AIRLINE_AUTH='windows'
$env:AIRLINE_DATABASE='AirlinePAC_Test'
$env:AIRLINE_TRUST_CERTIFICATE='no'
# Solo si se decidió aceptar el certificado autofirmado LOCAL: usar 'yes'.
.\.venv\Scripts\python.exe -m airline init
if($LASTEXITCODE -ne 0){throw 'Falló inicialización de prueba'}
$env:AIRLINE_TEST_SQL='1'
.\.venv\Scripts\python.exe -m unittest discover -s tests -p test_engine.py -v 2>&1 | Tee-Object evidence\engine_tests_windows.txt
if($LASTEXITCODE -ne 0){throw 'Existen pruebas SQL fallidas: revisar log'}
Remove-Item Env:AIRLINE_TEST_SQL
$env:AIRLINE_DATABASE='AirlinePAC'
.\.venv\Scripts\python.exe -m airline verify
.\.venv\Scripts\python.exe -m airline analyze --mode local
```

`init` se ejecuta una sola vez por base vacía. No repetirlo después de una ejecución correcta. No interpretar un archivo de salida antiguo como prueba nueva: revisar fecha, base, versión y hashes. En Azure usar otra base aislada con nombre terminado en `_Test`, creada con autorización de costos, y el modo/conexión de Azure; conservar evidencias por destino.

## Criterios de aceptación

La base principal debe devolver cero violaciones en las 19 reglas de `10_audit.sql`. La suite SQL debe finalizar sin errores ni omitidos por falta de conexión. La concurrencia debe producir un éxito y un rechazo 51014, con reservas activas iguales a capacidad. Q15 debe devolver dos diferencias cero. El informe generado por analyze se crea únicamente tras confirmar estas conciliaciones en el motor. Ningún conjunto de pruebas garantiza ausencia absoluta de defectos; faltan carga sostenida, fallos de red/proveedor, migraciones, regulación y recuperación real de respaldos.

Registrar cada fallo con comando, versión, destino, mensaje saneado y corrección. Los ensayos fallidos del entorno están documentados como limitaciones y no convertidos en evidencias de éxito.
