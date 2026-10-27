param([string]$Database='AirlinePAC',[switch]$AcceptLocalSelfSigned)
$ErrorActionPreference='Stop'
Set-Location (Split-Path $PSScriptRoot -Parent)
$env:PYTHONPATH=(Join-Path (Get-Location) 'src')
$env:AIRLINE_MODE='local';$env:AIRLINE_SERVER='localhost';$env:AIRLINE_DATABASE=$Database;$env:AIRLINE_AUTH='windows'
$env:AIRLINE_TRUST_CERTIFICATE='no'
if($AcceptLocalSelfSigned){$env:AIRLINE_TRUST_CERTIFICATE='yes'}
$python=Join-Path (Get-Location) '.venv\Scripts\python.exe'
if(-not(Test-Path $python)){throw 'Crear .venv e instalar requirements.txt según README antes de ejecutar.'}
function Invoke-Checked([string[]]$Arguments){ & $python @Arguments; if($LASTEXITCODE -ne 0){throw "Falló Python: $($Arguments -join ' ')"} }
Invoke-Checked -Arguments @('-m','airline','diagnose')
Invoke-Checked -Arguments @('-m','airline','generate')
Invoke-Checked -Arguments @('-m','airline','init')
Invoke-Checked -Arguments @('-m','airline','verify')
Invoke-Checked -Arguments @('-m','airline','analyze','--mode','local')
# Repetir análisis no requiere init. init se niega a sobrescribir una base existente.
