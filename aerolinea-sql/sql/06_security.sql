IF DATABASE_PRINCIPAL_ID(N'airline_operator') IS NULL CREATE ROLE airline_operator AUTHORIZATION dbo;
IF DATABASE_PRINCIPAL_ID(N'airline_reader') IS NULL CREATE ROLE airline_reader AUTHORIZATION dbo;
-- El operador no dispone de DML directo. La cadena de propiedad habilita los procedimientos.
DENY INSERT,UPDATE,DELETE ON SCHEMA::air TO airline_operator;
GRANT SELECT ON SCHEMA::air TO airline_reader;
GRANT SELECT ON SCHEMA::air TO airline_operator;
GRANT EXECUTE ON OBJECT::air.usp_IssueTicket TO airline_operator;
GRANT EXECUTE ON OBJECT::air.usp_RegisterPayment TO airline_operator;
GRANT EXECUTE ON OBJECT::air.usp_CancelTicket TO airline_operator;
GRANT EXECUTE ON OBJECT::air.usp_ChangeFlightStatus TO airline_operator;
-- Configuración de flota, tarifas y tripulación: administrador de la base en este prototipo.
-- No se crean usuarios ni contraseñas. Ver docs/seguridad.md.
GO
-- Permite tomar el bloqueo de informe; no concede escrituras ni cambios de datos.
GRANT EXECUTE ON OBJECT::air.usp_WriteLock TO airline_reader;
GRANT EXECUTE ON OBJECT::air.usp_WriteLock TO airline_operator;
GO
