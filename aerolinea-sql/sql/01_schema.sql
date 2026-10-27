-- SQL Server 2016 SP1+ / Azure SQL Database. Ejecutar solo en base académica vacía.

SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
SET ANSI_PADDING ON;
SET ANSI_WARNINGS ON;
SET ARITHABORT ON;
SET CONCAT_NULL_YIELDS_NULL ON;
SET NUMERIC_ROUNDABORT OFF;
GO

IF SCHEMA_ID(N'air') IS NULL EXEC(N'CREATE SCHEMA air AUTHORIZATION dbo');
GO

IF OBJECT_ID(N'air.Airport',N'U') IS NOT NULL THROW 51000, 'Esquema ya existe. No se sobrescribe; usar otra base o reinicio explícito.',1;
GO

-- Aeropuerto de origen o destino; código de tres letras de referencia.
CREATE TABLE air.Airport (
    AirportCode char(3) NOT NULL,
    Name nvarchar(100) NOT NULL,
    City nvarchar(80) NOT NULL,
    WindowsTZ sysname NOT NULL,
    IanaTZ varchar(50) NOT NULL,
    CONSTRAINT PK_Airport PRIMARY KEY (AirportCode),
    CONSTRAINT CK_Airport_Name CHECK (LEN(LTRIM(RTRIM(Name)))>0)
);
GO

-- Catálogo de cabinas.
CREATE TABLE air.Cabin (
    CabinCode varchar(3) NOT NULL,
    Name nvarchar(30) NOT NULL,
    CONSTRAINT PK_Cabin PRIMARY KEY (CabinCode),
    CONSTRAINT CK_Cabin_Code CHECK (CabinCode IN ('VIP','ECO'))
);
GO

-- Persona física; comprador y pasajero son roles, sin exigir inscripción.
CREATE TABLE air.Person (
    PersonId int NOT NULL,
    FullName nvarchar(120) NOT NULL,
    Email varchar(160) NULL,
    BirthDate date NULL,
    CONSTRAINT PK_Person PRIMARY KEY (PersonId),
    CONSTRAINT CK_Person_Id CHECK (PersonId>0),
    CONSTRAINT CK_Person_Name CHECK (LEN(LTRIM(RTRIM(FullName)))>0)
);
GO

-- Inscripción opcional de una persona; especialización uno a cero o uno.
CREATE TABLE air.Customer (
    PersonId int NOT NULL,
    RegisteredAt datetime2(0) NOT NULL CONSTRAINT DF_Customer_RegisteredAt DEFAULT (SYSUTCDATETIME()),
    CONSTRAINT PK_Customer PRIMARY KEY (PersonId),
    CONSTRAINT FK_Customer_Person FOREIGN KEY (PersonId) REFERENCES air.Person(PersonId)
);
GO

-- Empleado; se permiten personas que también son clientes.
CREATE TABLE air.Employee (
    EmployeeId int NOT NULL,
    PersonId int NOT NULL,
    RoleCode varchar(10) NOT NULL,
    Active bit NOT NULL CONSTRAINT DF_Employee_Active DEFAULT (1),
    CONSTRAINT PK_Employee PRIMARY KEY (EmployeeId),
    CONSTRAINT UQ_Employee_Person UNIQUE (PersonId),
    CONSTRAINT FK_Employee_Person FOREIGN KEY (PersonId) REFERENCES air.Person(PersonId),
    CONSTRAINT CK_Employee_Role CHECK (RoleCode IN ('PILOT','CABIN','SALES'))
);
GO

-- Avión; la capacidad se obtiene contando asientos, sin duplicar totales.
CREATE TABLE air.Aircraft (
    AircraftId int NOT NULL,
    Registration varchar(12) NOT NULL,
    Model nvarchar(60) NOT NULL,
    Active bit NOT NULL CONSTRAINT DF_Aircraft_Active DEFAULT (1),
    CONSTRAINT PK_Aircraft PRIMARY KEY (AircraftId),
    CONSTRAINT UQ_Aircraft_Reg UNIQUE (Registration)
);
GO

-- Configuración inmutable durante la muestra; una fila por asiento real.
CREATE TABLE air.AircraftSeat (
    AircraftId int NOT NULL,
    SeatNo varchar(4) NOT NULL,
    CabinCode varchar(3) NOT NULL,
    CONSTRAINT PK_AircraftSeat PRIMARY KEY (AircraftId,SeatNo),
    CONSTRAINT UQ_AircraftSeat_Cabin UNIQUE (AircraftId,SeatNo,CabinCode),
    CONSTRAINT FK_AircraftSeat_Aircraft FOREIGN KEY (AircraftId) REFERENCES air.Aircraft(AircraftId),
    CONSTRAINT FK_AircraftSeat_Cabin FOREIGN KEY (CabinCode) REFERENCES air.Cabin(CabinCode)
);
GO

-- Par ordenado de aeropuertos; la recurrencia se normaliza en Schedule.
CREATE TABLE air.Route (
    RouteId int NOT NULL,
    OriginCode char(3) NOT NULL,
    DestinationCode char(3) NOT NULL,
    CONSTRAINT PK_Route PRIMARY KEY (RouteId),
    CONSTRAINT UQ_Route_Pair UNIQUE (OriginCode,DestinationCode),
    CONSTRAINT FK_Route_Origin FOREIGN KEY (OriginCode) REFERENCES air.Airport(AirportCode),
    CONSTRAINT FK_Route_Destination FOREIGN KEY (DestinationCode) REFERENCES air.Airport(AirportCode),
    CONSTRAINT CK_Route_Different CHECK (OriginCode<>DestinationCode)
);
GO

-- Patrón recurrente semanal de una ruta, con hora local del origen.
CREATE TABLE air.Schedule (
    ScheduleId int NOT NULL,
    RouteId int NOT NULL,
    IsoWeekday tinyint NOT NULL,
    DepartureLocal time(0) NOT NULL,
    DurationMinutes smallint NOT NULL,
    ValidFrom date NOT NULL,
    ValidTo date NOT NULL,
    CONSTRAINT PK_Schedule PRIMARY KEY (ScheduleId),
    CONSTRAINT FK_Schedule_Route FOREIGN KEY (RouteId) REFERENCES air.Route(RouteId),
    CONSTRAINT CK_Schedule_Day CHECK (IsoWeekday BETWEEN 1 AND 7),
    CONSTRAINT CK_Schedule_Duration CHECK (DurationMinutes BETWEEN 30 AND 900),
    CONSTRAINT CK_Schedule_Validity CHECK (ValidFrom<ValidTo),
    CONSTRAINT UQ_Schedule_Pattern UNIQUE (RouteId,IsoWeekday,DepartureLocal,ValidFrom)
);
GO

-- Instancia fechada; se crea por procedimiento a partir de Schedule.
CREATE TABLE air.Flight (
    FlightId int NOT NULL,
    ScheduleId int NOT NULL,
    AircraftId int NOT NULL,
    FlightDate date NOT NULL,
    DepartureUtc datetime2(0) NOT NULL,
    ArrivalUtc datetime2(0) NOT NULL,
    Status varchar(10) NOT NULL CONSTRAINT DF_Flight_Status DEFAULT ('SCHEDULED'),
    CONSTRAINT PK_Flight PRIMARY KEY (FlightId),
    CONSTRAINT UQ_Flight_Aircraft UNIQUE (FlightId,AircraftId),
    CONSTRAINT UQ_Flight_Instance UNIQUE (ScheduleId,FlightDate),
    CONSTRAINT FK_Flight_Schedule FOREIGN KEY (ScheduleId) REFERENCES air.Schedule(ScheduleId),
    CONSTRAINT FK_Flight_Aircraft FOREIGN KEY (AircraftId) REFERENCES air.Aircraft(AircraftId),
    CONSTRAINT CK_Flight_Times CHECK (DepartureUtc<ArrivalUtc),
    CONSTRAINT CK_Flight_Status CHECK (Status IN ('SCHEDULED','BOARDING','DEPARTED','ARRIVED','CANCELLED'))
);
GO

-- Inventario de plazas; copia controlada de la configuración del avión.
CREATE TABLE air.FlightSeat (
    FlightId int NOT NULL,
    AircraftId int NOT NULL,
    SeatNo varchar(4) NOT NULL,
    CabinCode varchar(3) NOT NULL,
    CONSTRAINT PK_FlightSeat PRIMARY KEY (FlightId,SeatNo),
    CONSTRAINT UQ_FlightSeat_Cabin UNIQUE (FlightId,SeatNo,CabinCode),
    CONSTRAINT FK_FlightSeat_Flight FOREIGN KEY (FlightId,AircraftId) REFERENCES air.Flight(FlightId,AircraftId),
    CONSTRAINT FK_FlightSeat_Physical FOREIGN KEY (AircraftId,SeatNo,CabinCode) REFERENCES air.AircraftSeat(AircraftId,SeatNo,CabinCode)
);
GO

-- Asignación temporal de empleado a vuelo; no se modela certificación FAA.
CREATE TABLE air.CrewAssignment (
    FlightId int NOT NULL,
    EmployeeId int NOT NULL,
    CONSTRAINT PK_CrewAssignment PRIMARY KEY (FlightId,EmployeeId),
    CONSTRAINT FK_CrewAssignment_Flight FOREIGN KEY (FlightId) REFERENCES air.Flight(FlightId),
    CONSTRAINT FK_CrewAssignment_Employee FOREIGN KEY (EmployeeId) REFERENCES air.Employee(EmployeeId)
);
GO

-- Punto físico o web de venta, distinto de los aeropuertos.
CREATE TABLE air.SalesChannel (
    ChannelId int NOT NULL,
    Name nvarchar(80) NOT NULL,
    Kind varchar(8) NOT NULL,
    Address nvarchar(200) NULL,
    Url varchar(200) NULL,
    AirportCode char(3) NULL,
    CONSTRAINT PK_SalesChannel PRIMARY KEY (ChannelId),
    CONSTRAINT FK_SalesChannel_Airport FOREIGN KEY (AirportCode) REFERENCES air.Airport(AirportCode),
    CONSTRAINT CK_SalesChannel_Kind CHECK ((Kind='PHYSICAL' AND Address IS NOT NULL AND Url IS NULL) OR (Kind='WEB' AND Address IS NULL AND Url IS NOT NULL AND Url LIKE 'https://%' AND AirportCode IS NULL))
);
GO

-- Versión de tarifa por ruta y cabina; vigencia por instante de compra UTC.
CREATE TABLE air.Fare (
    FareId int NOT NULL,
    RouteId int NOT NULL,
    CabinCode varchar(3) NOT NULL,
    ValidFrom datetime2(0) NOT NULL,
    ValidTo datetime2(0) NOT NULL,
    Price decimal(12,2) NOT NULL,
    CONSTRAINT PK_Fare PRIMARY KEY (FareId),
    CONSTRAINT FK_Fare_Route FOREIGN KEY (RouteId) REFERENCES air.Route(RouteId),
    CONSTRAINT FK_Fare_Cabin FOREIGN KEY (CabinCode) REFERENCES air.Cabin(CabinCode),
    CONSTRAINT CK_Fare_Validity CHECK (ValidFrom<ValidTo),
    CONSTRAINT CK_Fare_Price CHECK (Price>0)
);
GO

-- Promoción porcentual global académica; como máximo una por tiquete.
CREATE TABLE air.Discount (
    DiscountId int NOT NULL,
    Code varchar(20) NOT NULL,
    PercentValue decimal(5,2) NOT NULL,
    ValidFrom datetime2(0) NOT NULL,
    ValidTo datetime2(0) NOT NULL,
    CONSTRAINT PK_Discount PRIMARY KEY (DiscountId),
    CONSTRAINT UQ_Discount_Code UNIQUE (Code),
    CONSTRAINT CK_Discount_Percent CHECK (PercentValue>0 AND PercentValue<=30),
    CONSTRAINT CK_Discount_Validity CHECK (ValidFrom<ValidTo)
);
GO

-- Contrato para una persona y un asiento de un vuelo; importes históricos USD.
CREATE TABLE air.Ticket (
    TicketId bigint IDENTITY(1,1) NOT NULL,
    RequestKey uniqueidentifier NOT NULL,
    FlightId int NOT NULL,
    SeatNo varchar(4) NOT NULL,
    CabinCode varchar(3) NOT NULL,
    PassengerId int NOT NULL,
    BuyerId int NOT NULL,
    ChannelId int NOT NULL,
    FareId int NOT NULL,
    DiscountId int NULL,
    OriginalPrice decimal(12,2) NOT NULL,
    DiscountPercent decimal(5,2) NOT NULL CONSTRAINT DF_Ticket_DiscountPercent DEFAULT (0),
    SoldAt datetime2(0) NOT NULL CONSTRAINT DF_Ticket_SoldAt DEFAULT (SYSUTCDATETIME()),
    Status varchar(10) NOT NULL CONSTRAINT DF_Ticket_Status DEFAULT ('HELD'),
    CancelledAt datetime2(0) NULL,
    CancelReason nvarchar(200) NULL,
    FinalPrice AS CONVERT(decimal(12,2),ROUND(OriginalPrice*(1-DiscountPercent/100.0),2)) PERSISTED,
    CONSTRAINT PK_Ticket PRIMARY KEY (TicketId),
    CONSTRAINT UQ_Ticket_Request UNIQUE (RequestKey),
    CONSTRAINT FK_Ticket_Seat FOREIGN KEY (FlightId,SeatNo,CabinCode) REFERENCES air.FlightSeat(FlightId,SeatNo,CabinCode),
    CONSTRAINT FK_Ticket_Passenger FOREIGN KEY (PassengerId) REFERENCES air.Person(PersonId),
    CONSTRAINT FK_Ticket_Buyer FOREIGN KEY (BuyerId) REFERENCES air.Person(PersonId),
    CONSTRAINT FK_Ticket_Channel FOREIGN KEY (ChannelId) REFERENCES air.SalesChannel(ChannelId),
    CONSTRAINT FK_Ticket_Fare FOREIGN KEY (FareId) REFERENCES air.Fare(FareId),
    CONSTRAINT FK_Ticket_Discount FOREIGN KEY (DiscountId) REFERENCES air.Discount(DiscountId),
    CONSTRAINT CK_Ticket_Price CHECK (OriginalPrice>0 AND DiscountPercent BETWEEN 0 AND 30),
    CONSTRAINT CK_Ticket_Promotion CHECK ((DiscountId IS NULL AND DiscountPercent=0) OR (DiscountId IS NOT NULL AND DiscountPercent>0)),
    CONSTRAINT CK_Ticket_Status CHECK (Status IN ('HELD','PARTIAL','PAID','CANCELLED')),
    CONSTRAINT CK_Ticket_Cancel CHECK ((Status='CANCELLED' AND CancelledAt IS NOT NULL AND CancelReason IS NOT NULL AND CancelledAt>=SoldAt) OR (Status<>'CANCELLED' AND CancelledAt IS NULL AND CancelReason IS NULL))
);
GO

-- Intento de cobro; solo confirmado o fallido, sin pasarela real.
CREATE TABLE air.Payment (
    PaymentId bigint IDENTITY(1,1) NOT NULL,
    TicketId bigint NOT NULL,
    RequestKey uniqueidentifier NOT NULL,
    Amount decimal(12,2) NOT NULL,
    Status varchar(9) NOT NULL,
    Method varchar(10) NOT NULL,
    PaidAt datetime2(0) NOT NULL CONSTRAINT DF_Payment_PaidAt DEFAULT (SYSUTCDATETIME()),
    CONSTRAINT PK_Payment PRIMARY KEY (PaymentId),
    CONSTRAINT UQ_Payment_Request UNIQUE (RequestKey),
    CONSTRAINT FK_Payment_Ticket FOREIGN KEY (TicketId) REFERENCES air.Ticket(TicketId),
    CONSTRAINT CK_Payment_Amount CHECK (Amount>0),
    CONSTRAINT CK_Payment_Status CHECK (Status IN ('CONFIRMED','FAILED')),
    CONSTRAINT CK_Payment_Method CHECK (Method IN ('CARD','CASH','TRANSFER'))
);
GO

-- Reembolso contable total de un pago confirmado al cancelar.
CREATE TABLE air.Refund (
    RefundId bigint IDENTITY(1,1) NOT NULL,
    PaymentId bigint NOT NULL,
    Amount decimal(12,2) NOT NULL,
    RefundedAt datetime2(0) NOT NULL CONSTRAINT DF_Refund_RefundedAt DEFAULT (SYSUTCDATETIME()),
    CONSTRAINT PK_Refund PRIMARY KEY (RefundId),
    CONSTRAINT UQ_Refund_Payment UNIQUE (PaymentId),
    CONSTRAINT FK_Refund_Payment FOREIGN KEY (PaymentId) REFERENCES air.Payment(PaymentId),
    CONSTRAINT CK_Refund_Amount CHECK (Amount>0)
);
GO

-- Auditoría de transiciones; entidad por referencias excluyentes.
CREATE TABLE air.StatusEvent (
    EventId bigint IDENTITY(1,1) NOT NULL,
    TicketId bigint NULL,
    FlightId int NULL,
    FromStatus varchar(10) NULL,
    ToStatus varchar(10) NOT NULL,
    ChangedAt datetime2(0) NOT NULL CONSTRAINT DF_StatusEvent_ChangedAt DEFAULT (SYSUTCDATETIME()),
    Actor sysname NOT NULL CONSTRAINT DF_StatusEvent_Actor DEFAULT (SUSER_SNAME()),
    CONSTRAINT PK_StatusEvent PRIMARY KEY (EventId),
    CONSTRAINT FK_StatusEvent_Ticket FOREIGN KEY (TicketId) REFERENCES air.Ticket(TicketId),
    CONSTRAINT FK_StatusEvent_Flight FOREIGN KEY (FlightId) REFERENCES air.Flight(FlightId),
    CONSTRAINT CK_StatusEvent_Entity CHECK ((TicketId IS NOT NULL AND FlightId IS NULL) OR (TicketId IS NULL AND FlightId IS NOT NULL))
);
GO
