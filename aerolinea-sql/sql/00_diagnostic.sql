SELECT @@SERVERNAME AS servidor,SERVERPROPERTY('Edition') AS edicion,
 SERVERPROPERTY('ProductVersion') AS version,SUSER_SNAME() AS usuario_actual,
 SERVERPROPERTY('EngineEdition') AS engine_edition,DB_NAME() AS base_actual,
 HAS_PERMS_BY_NAME(DB_NAME(),'DATABASE','CREATE TABLE') AS puede_crear_tablas,
 HAS_PERMS_BY_NAME(DB_NAME(),'DATABASE','CREATE PROCEDURE') AS puede_crear_procedimientos,
 HAS_PERMS_BY_NAME(DB_NAME(),'DATABASE','CREATE SCHEMA') AS puede_crear_esquemas;
SELECT name,compatibility_level FROM sys.databases WHERE database_id=DB_ID();
SELECT name,current_utc_offset,is_currently_dst FROM sys.time_zone_info
 WHERE name IN ('Eastern Standard Time','Central Standard Time','Pacific Standard Time','UTC');
