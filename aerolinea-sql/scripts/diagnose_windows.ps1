$ErrorActionPreference='Continue'
New-Item -ItemType Directory -Force evidence | Out-Null
Start-Transcript -Path evidence\windows_tools.txt -Force
Get-Service -Name MSSQLSERVER -ErrorAction Continue | Select-Object Name,Status,StartType
Get-Command py,python,sqlcmd,ssms -ErrorAction SilentlyContinue | Select-Object Name,Source
$ssmsCandidates=@("${env:ProgramFiles}\Microsoft SQL Server Management Studio 22\Release\Common7\IDE\SSMS.exe","${env:ProgramFiles}\Microsoft SQL Server Management Studio 21\Release\Common7\IDE\SSMS.exe","${env:ProgramFiles(x86)}\Microsoft SQL Server Management Studio 20\Common7\IDE\Ssms.exe","${env:ProgramFiles(x86)}\Microsoft SQL Server Management Studio 19\Common7\IDE\Ssms.exe","${env:ProgramFiles(x86)}\Microsoft SQL Server Management Studio 18\Common7\IDE\Ssms.exe")
$ssmsCandidates | ForEach-Object { if(Test-Path $_){ Get-Item $_ | Select-Object FullName,@{n='Version';e={$_.VersionInfo.ProductVersion}} } }
py --list-paths
Get-OdbcDriver -ErrorAction Continue | Where-Object Name -Like '*SQL Server*' | Select-Object Name,Platform
# No se altera ningún servicio, protocolo, firewall ni instalación.
Stop-Transcript
