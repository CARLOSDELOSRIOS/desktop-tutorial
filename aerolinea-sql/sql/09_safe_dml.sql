-- Demostración de INSERT, UPDATE y DELETE. Ejecutar como administrador en base académica.
SET XACT_ABORT ON;
BEGIN TRY
 BEGIN TRAN;
 IF EXISTS(SELECT 1 FROM air.Person WHERE PersonId=900000) THROW 51200,'Identificador de demostración ocupado.',1;
 INSERT air.Person(PersonId,FullName,Email) VALUES(900000,N'Persona de prueba DML','dml@example.invalid');
 UPDATE air.Person SET FullName=N'Persona DML actualizada' WHERE PersonId=900000;
 SELECT PersonId,FullName FROM air.Person WHERE PersonId=900000;
 DELETE FROM air.Person WHERE PersonId=900000;
 ROLLBACK; -- no persiste ningún cambio; nunca se elimina una venta.
END TRY BEGIN CATCH IF @@TRANCOUNT>0 ROLLBACK; THROW; END CATCH;
GO
