# Azure SQL Database: preparación y ejecución pendiente

Estado real: no se crearon servidor, base, grupos de recursos, identidades ni reglas de red en Azure. No hay credenciales ni ejecución observada. La preparación local/remota no satisface por sí sola el requisito de nube de la consigna.

## Aprovisionamiento autorizado por el titular

1. Confirmar suscripción, responsable de gasto, región, presupuesto y fecha de eliminación. Revisar precios vigentes; no se presupone capa gratuita disponible. Crear recursos solo después de autorización del titular.
2. En el portal Azure, crear un grupo de recursos académico y un servidor lógico SQL; elegir Microsoft Entra cuando sea posible y configurar su administrador. Crear una **base de datos única Azure SQL Database**, con nombre académico y tamaño/capa compatibles con el presupuesto. No se utiliza Managed Instance ni máquina virtual.
3. Configurar conectividad. Preferir endpoint privado si la organización ya dispone de la red adecuada. Para un laboratorio con endpoint público, permitir únicamente la IP cliente necesaria, nunca 0.0.0.0/0; desactivar la regla amplia de acceso a servicios de Azure salvo necesidad autorizada. Esto no requiere publicar ni modificar la instancia SQL de la laptop.
4. En SSMS conectar a `<servidor>.database.windows.net`, base elegida, cifrado obligatorio y validación de certificado. Autenticarse mediante Entra MFA o el método autorizado. No enviar credenciales en capturas.
5. Ejecutar `sql/00_diagnostic.sql`. Registrar `EngineEdition=5` y nombre de base. Verificar permisos para crear tablas, procedimientos, vistas, roles y esquema. Si no existen, el administrador delega los mínimos necesarios dentro de esta base, sin conceder sysadmin.
6. En PowerShell, con las dependencias instaladas, ejecutar:

```powershell
.\scripts\deploy_azure.ps1 -Server '<nombre-del-servidor-sin-sufijo>' -Database '<base>' -Auth entra
```

La autenticación Entra interactiva puede abrir la ventana de inicio de sesión. Para autenticación SQL usar `-Auth sql` y definir AIRLINE_USER/AIRLINE_PASSWORD de forma privada fuera del repositorio; no escribir contraseñas en el comando ni en el historial.

## Carga y diferencias

Se ejecutan los mismos archivos 01–07 dentro de la base ya creada. No se ejecutan `USE master`, `CREATE DATABASE`, DROP DATABASE ni `00_create_database_local.sql`. Python separa GO antes de enviar lotes. El pequeño volumen se carga mediante procedimientos; no necesita BULK INSERT, cuenta de almacenamiento ni rutas locales accesibles desde Azure. Para volúmenes mayores evaluar lotes/BCP y una fase de staging validada.

La instalación se ejecuta como transacción completa y se niega a sobrescribir un esquema existente. Una nueva base vacía es la opción de reinicio más segura; el script destructivo está bloqueado y fuera del flujo. `CREATE OR ALTER`, AT TIME ZONE, restricciones e índices filtrados son compatibles con el destino previsto. SQL Server local requiere 2016 SP1 o posterior; la versión real de la laptop debe verificarse. No se supone que la edición Express tenga las mismas cuotas de recursos de Developer/Azure.

Azure SQL Database no dispone de los mismos servicios SQL Server Agent/Browser ni acceso al sistema de archivos local. Usa autenticación y firewall propios; el cifrado y certificado se verifican con FQDN. El comportamiento de lectura basado en versiones puede diferir; el bloqueo explícito y las restricciones se mantienen. Registrar nivel de compatibilidad en el diagnóstico y no cambiarlo sin necesidad.

## Evidencias para acreditar nube

|Evidencia|Archivo esperado|Estado actual|
|---|---|---|
|Recurso y base visibles; región/capa sin secretos|evidence/azure_resource.png y metadatos redactados|PENDIENTE|
|Conexión a FQDN, base y EngineEdition=5|evidence/diagnostic_azure.json|PENDIENTE|
|Despliegue realmente confirmado|evidence/deploy_azure.json|PENDIENTE|
|Auditoría de 19 reglas sin violaciones|evidence/audit_azure.json|PENDIENTE|
|18 resultados SQL y versión de fuente|reports/azure/Q01.csv…Q18.csv y manifest.json|PENDIENTE|
|Figuras financieras/ocupación y conciliación|reports/azure/fig01_occupancy.png, fig02_finance.png|PENDIENTE|
|Pruebas funcionales y concurrentes en base aislada _Test|evidence/integration_azure.json|PENDIENTE|
|SSMS mostrando tablas, vista y procedimiento ejecutado|Capturas propias con fecha, destino y consulta|PENDIENTE|
|Costos revisados y eliminación al concluir|Registro real del titular|PENDIENTE|

`airline analyze --mode azure` comprueba EngineEdition=5 y se niega a guardar evidencia de nube si la conexión no es Azure SQL Database. No basta renombrar carpetas o capturas locales. La aprobación de recursos y su configuración real quedan pendientes del titular.
