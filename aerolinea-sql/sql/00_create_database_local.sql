-- SOLO SQL SERVER LOCAL, en SSMS como usuario con CREATE ANY DATABASE.
-- Primero ejecutar 00_diagnostic.sql en master. No se crea ni elimina automáticamente desde Python.
USE master;
GO
IF DB_ID(N'AirlinePAC') IS NULL EXEC(N'CREATE DATABASE AirlinePAC');
GO
-- Para pruebas aisladas, ejecutar también la siguiente instrucción:
-- IF DB_ID(N'AirlinePAC_Test') IS NULL EXEC(N'CREATE DATABASE AirlinePAC_Test');
