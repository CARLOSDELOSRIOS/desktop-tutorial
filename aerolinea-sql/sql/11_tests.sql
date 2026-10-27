-- Prueba T-SQL manual complementaria. Solo base de laboratorio aislada.
IF RIGHT(DB_NAME(),5)<>'_Test' THROW 51300,'Ejecutar exclusivamente en base terminada en _Test.',1;
-- Rechazo declarativo de ruta con origen=destino. El identificador se revierte.
BEGIN TRY
 BEGIN TRAN;
 INSERT air.Route(RouteId,OriginCode,DestinationCode) VALUES(99999,'JFK','JFK');
 ROLLBACK;
 THROW 51301,'FALLO: se aceptó ruta inválida.',1;
END TRY
BEGIN CATCH
 IF @@TRANCOUNT>0 ROLLBACK;
 IF ERROR_NUMBER()<>547 THROW;
 SELECT 'PASS: CHECK rechaza ruta con origen=destino' AS ObservedResult;
END CATCH;
GO
-- Suite amplia y concurrencia real en tests/test_engine.py.
