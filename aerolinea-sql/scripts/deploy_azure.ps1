param([Parameter(Mandatory=$true)][string]$Server,[Parameter(Mandatory=$true)][string]$Database,[ValidateSet('entra','sql')][string]$Auth='entra')
$ErrorActionPreference='Stop'
Set-Location (Split-Path $PSScriptRoot -Parent)
$env:PYTHONPATH=(Join-Path (Get-Location) 'src')
$env:AIRLINE_MODE='azure';$env:AIRLINE_SERVER="tcp:$Server.database.windows.net,1433";$env:AIRLINE_DATABASE=$Database;$env:AIRLINE_AUTH=$Auth;$env:AIRLINE_TRUST_CERTIFICATE='no'
$python=Join-Path (Get-Location) '.venv\Scripts\python.exe'
if(-not(Test-Path $python)){throw 'Crear .venv e instalar requirements.txt antes de ejecutar.'}
foreach($cmd in @('diagnose','init','verify')){ & $python -m airline $cmd; if($LASTEXITCODE -ne 0){throw "Falló $cmd"} }
& $python -m airline analyze --mode azure
if($LASTEXITCODE -ne 0){throw 'Falló análisis Azure'}
# Solo despliega dentro de una base ya creada y autorizada; no aprovisiona recursos facturables.
