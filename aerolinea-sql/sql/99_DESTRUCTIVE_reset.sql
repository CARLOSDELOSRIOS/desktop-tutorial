-- DESTRUCTIVO. No incluido en init ni en scripts de despliegue.
-- Hace DROP de TODOS los objetos del esquema air de una base académica.
DECLARE @AllowReset bit=0; -- cambiar a 1 después de revisar base y respaldo.
IF @AllowReset<>1 THROW 51999,'Reinicio bloqueado. Revisar instrucciones.',1;
IF DB_NAME() NOT IN ('AirlinePAC','AirlinePAC_Test') THROW 51998,'Solo bases académicas de nombre permitido.',1;
DECLARE @sql nvarchar(max)=N'';
SELECT @sql=@sql+N'DROP VIEW '+QUOTENAME(SCHEMA_NAME(schema_id))+N'.'+QUOTENAME(name)+N';' FROM sys.views WHERE schema_id=SCHEMA_ID('air');
EXEC sys.sp_executesql @sql; SET @sql=N'';
SELECT @sql=@sql+N'DROP PROCEDURE air.'+QUOTENAME(name)+N';' FROM sys.procedures WHERE schema_id=SCHEMA_ID('air');
EXEC sys.sp_executesql @sql; SET @sql=N'';
SELECT @sql=@sql+N'ALTER TABLE air.'+QUOTENAME(OBJECT_NAME(parent_object_id))+N' DROP CONSTRAINT '+QUOTENAME(name)+N';' FROM sys.foreign_keys WHERE schema_id=SCHEMA_ID('air');
EXEC sys.sp_executesql @sql; SET @sql=N'';
SELECT @sql=@sql+N'DROP TABLE air.'+QUOTENAME(name)+N';' FROM sys.tables WHERE schema_id=SCHEMA_ID('air');
EXEC sys.sp_executesql @sql;
