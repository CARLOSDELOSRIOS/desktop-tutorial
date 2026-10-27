# Aerolínea comercial — PAC PSMA00611

Proyecto académico reproducible en SQL Server y Python, con datos completamente sintéticos y USD. Incluye 19 tablas, 99 atributos documentados, 18 consultas, vistas, procedimientos, generación determinista, pruebas, informe editable/PDF y 13 diapositivas para 20 minutos.

**Estado verificable de esta entrega:** se ejecutaron 21 pruebas offline y el análisis sintáctico parcial de 18 SELECT. No se ejecutó el T-SQL: el entorno remoto no dispone de motor y su descarga oficial quedó bloqueada. No hay acceso a la laptop ni despliegue Azure. No hay resultados de ventas ni conclusiones empíricas fabricadas. Ver `evidence/`, `docs/pruebas.md` y `docs/trazabilidad.csv`.

## 1. Comprobar Windows antes de instalar

Abrir PowerShell en la carpeta extraída del proyecto:

```powershell
.\scripts\diagnose_windows.ps1
```

Si una política local impide ejecutar un script, puede autorizarlo únicamente para la sesión actual, según la política de su organización: `Set-ExecutionPolicy -Scope Process RemoteSigned`. No es necesario modificar la política del equipo. El diagnóstico consulta el servicio MSSQLSERVER, herramientas, versiones de Python y ODBC sin reinstalar ni alterar protocolos.

En SSMS, conectar a `localhost`, **Autenticación de Windows**, y ejecutar `sql/00_diagnostic.sql` en master. Si SSMS no está instalado, descargar el instalador oficial de Microsoft e instalar solo esa herramienta. No se confunde SSMS con el motor. Confirmar versión/edición, permisos CREATE TABLE/PROCEDURE/SCHEMA y compatibilidad. El código requiere **SQL Server 2016 SP1 o posterior** (AT TIME ZONE y CREATE OR ALTER); se recomienda 2019/2022 cuando ya estén disponibles. No actualizar ni reinstalar un motor que ya cumple.

Si el usuario no tiene permiso para crear una base, solicitar al administrador que cree AirlinePAC y le conceda permisos dentro de esa base. No se requiere sysadmin para la operación ordinaria. El nombre predeterminado de instancia MSSQLSERVER se conecta como localhost, sin agregar `\MSSQLSERVER`.

## 2. Python y ODBC

Se recomienda Python 3.12 de 64 bits, compatible con las dependencias fijadas. Si ya existe, usarlo; si no, instalarlo desde python.org. Crear un entorno aislado:

```powershell
py -3.12 -m venv .venv
.\.venv\Scripts\python.exe -m pip install -r requirements.txt
$env:PYTHONPATH="$PWD\src"
.\.venv\Scripts\python.exe -c "import pyodbc; print(pyodbc.drivers())"
Copy-Item .env.example .env
```

Si `py -3.12` no existe, `py --list-paths` identifica lo disponible; usar una versión compatible verificada o instalar 3.12. El paquete pyodbc **no instala** el controlador de Microsoft. Si la lista no incluye ODBC Driver 18 (o 17) for SQL Server, instalar el controlador oficial de la arquitectura de Python y volver a comprobar. pandas y matplotlib generan tablas/figuras; no sustituyen al motor.

`.env` usa por defecto localhost, AirlinePAC y Windows. Encrypt=yes siempre. Se valida el certificado por defecto. Si el desarrollo local usa certificado autofirmado, preferir instalar una CA/certificado confiable; para aceptar expresamente ese certificado solo en localhost usar el interruptor indicado abajo. Mantiene cifrado y omite verificar identidad del certificado. Azure siempre exige validación. Ver `docs/seguridad.md`.

No habilitar acceso público, SQL Server Browser ni SQL Server Agent. Si SSMS conecta y ODBC no, revisar primero driver, arquitectura, certificado y mensaje de conexión. Solo si el diagnóstico demuestra que el protocolo utilizado por ODBC no está habilitado, evaluar TCP/IP en SQL Server Configuration Manager y reiniciar el servicio en una ventana autorizada; no es una instrucción automática de este proyecto.

## 3. Crear base y desplegar

En SSMS ejecutar **solo para local** `sql/00_create_database_local.sql`. La base AirlinePAC debe estar vacía. Luego:

```powershell
.\scripts\run_local.ps1
# Únicamente si se acepta conscientemente el certificado autofirmado LOCAL:
# .\scripts\run_local.ps1 -AcceptLocalSelfSigned
```

Secuencia equivalente para control manual:

```powershell
$env:PYTHONPATH="$PWD\src"
.\.venv\Scripts\python.exe -m airline diagnose
.\.venv\Scripts\python.exe -m airline generate --seed 6112026 --weeks 4
.\.venv\Scripts\python.exe -m airline init
.\.venv\Scripts\python.exe -m airline verify
.\.venv\Scripts\python.exe -m airline analyze --mode local --start 2025-01-01 --end 2027-01-01
```

Orden de instalación: **01 esquema → 02 índices → 03 referencias → 04 vistas → 05 procedimientos → 06 permisos → 07 carga sintética**. El archivo 07 utiliza procedimientos, por eso se ejecuta después del 05. Se instalan todos dentro de una transacción: si hay error se revierte todo. El script 03 tiene una transacción propia que se anida de forma compatible. Los separadores GO se procesan en Python y nunca se envían como SQL al motor.

No repetir `init` en una base ya instalada: se niega a sobrescribirla. Para regenerar insumos basta `generate`; para recargar datos usar otra base académica vacía o revisar deliberadamente `sql/99_DESTRUCTIVE_reset.sql`, separado, bloqueado y destructivo. El volumen predeterminado (32 vuelos, 42 plazas por avión, 896 solicitudes de tiquete) es pequeño para una laptop y no pretende medir rendimiento. Después del diagnóstico se puede usar `--weeks 1..52`; no se atribuye un límite fijo de almacenamiento a una edición sin comprobarla.

## 4. Consultas, pruebas y regeneración de resultados

`sql/08_queries.sql` se ejecuta en SSMS; `docs/consultas.md` explica utilidad, granularidad, filtros y fórmulas. `sql/09_safe_dml.sql` muestra INSERT/UPDATE/DELETE con rollback. El CLI analyze envía fechas como parámetros, ejecuta 18 SELECT en una lectura coherente, comprueba Q15 y exporta **resultados observados**:

- `reports/local/Q01.csv` a `Q18.csv`, `manifest.json`, `resultados.md`.
- `fig01_occupancy.png` desde Q02; `fig02_finance.png` desde Q03.
- Diagnóstico/despliegue/auditoría en `evidence/`, separados de nube.

Estos archivos de resultados SQL **aún no existen** en la entrega inicial; se crean cuando el motor ejecute las consultas. El plan en data/ es un insumo, no una tabla consultada. Repetir `verify` y `analyze` regenera resultados sin reinstalar la base.

Pruebas offline, sin servidor:

```powershell
$env:PYTHONPATH="$PWD\src"
.\.venv\Scripts\python.exe -m unittest discover -s tests -p test_offline.py -v
```

Pruebas SQL de integridad y concurrencia: seguir exactamente `docs/pruebas.md`, que crea otra base `AirlinePAC_Test`. No ejecutar pruebas mutantes sobre la base de entrega. Capturar el log y corregir cualquier fallo antes de concluir que el proyecto funciona en ese motor.

## 5. Invocar procedimientos desde Python

El CLI permite emitir, pagar y cancelar, siempre con parámetros; los UUID deben conservarse para reintentar la misma operación. Ejemplo académico sobre una plaza libre del vuelo 2: comprobar primero disponibilidad, fecha y precio en la base. Si la plaza ya se ocupó, elegir otra de `air.FlightSeat` que no tenga tiquete activo.

```powershell
.\.venv\Scripts\python.exe -m airline demo --request-key 'd7b6aaad-55cf-47b1-b1bc-a7d5f5db1372' --flight 2 --seat 7F --passenger 150 --buyer 10 --channel 2 --at 2025-12-31T12:00:00
# Usar el TicketId y saldo REAL devuelto para el siguiente paso:
# python -m airline pay --ticket <id> --request-key <uuid-nuevo> --amount <importe> --status CONFIRMED --at 2025-12-31T13:00:00
# python -m airline cancel --ticket <id> --at 2025-12-31T14:00:00 --reason 'Demostración académica'
```

El escenario admite fechas históricas para reproducir pruebas; no se presenta como una API de producción en tiempo real. Los reembolsos son registros contables sintéticos, sin integración bancaria.

## 6. Azure y GitHub

Primero completar y verificar el desarrollo local. `docs/azure.md` explica creación autorizada, cifrado, autenticación, carga y evidencias; `scripts/deploy_azure.ps1` despliega en una base ya creada. No se crearon recursos facturables. La evidencia Azure debe mostrar EngineEdition=5 y consultas realmente ejecutadas allí.

El proyecto está listo para iniciar un repositorio, pero **no se publicó ni se fabricó historial colaborativo**. Tras autorización del equipo:

```powershell
git init
git add .
git diff --cached --stat
# Revisar que no haya .env, contraseñas, datos personales o capturas sensibles.
git commit -m "Implementación inicial del PAC de aerolínea"
# Crear repositorio privado en GitHub con autorización del equipo, luego:
# git branch -M main
# git remote add origin <URL-real-autorizada>
# git push -u origin main
```

Completar `docs/aportes.csv` con contribuciones verdaderas y referencias a commits reales. No se registran como autores integrantes no confirmados. Revisar antes de publicar los resultados y evidencias excluidos por .gitignore; conservar solo versiones saneadas elegidas expresamente.

## 7. Entregables y edición

|Carpeta|Propósito|
|---|---|
|docs/|Requisitos, 46 filas de trazabilidad, fuentes, normalización, 99 atributos y diagramas editables/exportados|
|sql/|DDL, índices, referencias, procedimientos, vistas, carga, 18 consultas, auditoría, pruebas y reinicio separado|
|src/airline/|CLI, conexión ODBC, generación y análisis con parámetros|
|data/|Plan sintético determinista y manifiesto de generación|
|tests/|21 pruebas offline y suite real SQL funcional/concurrente pendiente|
|reports/|Informe Markdown editable, DOCX y PDF; resultados por destino después de ejecutar|
|slides/|13 diapositivas PPTX/PDF y notas para 20 minutos|
|evidence/|Logs reales, inventario de fuentes, versiones y pendientes|
|scripts/|Diagnóstico Windows, despliegues y construcción de documentos|

Para regenerar DOCX/PDF/PPTX desde las fuentes editables: instalar `requirements-docs.txt` y disponer de Pandoc; ejecutar `python scripts/build_documents.py`. Los diagramas DOT se editan en Graphviz y los MMD en Mermaid; los SVG/PDF permiten ampliar. `docs/revision_final.md` enumera pendientes concretos y revisión de rúbrica.

Completar participantes activos, líder, docente, institución confirmada, fechas/cohorte y aportes; confirmar calendario, guía vigente y mínimo de páginas con el docente. El informe es una base académica revisable por el equipo; resultados, pruebas SQL, GitHub y nube deben completarse con evidencia real antes de la entrega final.
