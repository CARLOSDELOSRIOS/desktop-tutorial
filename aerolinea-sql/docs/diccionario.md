# Diccionario completo de datos
Generado desde `docs/schema.json`; restricciones por tabla y columna. USD para todos los importes. La nulabilidad declarada de FinalPrice se registra por inferencia del catálogo; su expresión no produce NULL con operandos válidos.

## Airport
Aeropuerto de origen o destino; código de tres letras de referencia.

|Atributo|Tipo|Nulo|Predeterminado|Definición y dominio|
|---|---|---|---|---|
|AirportCode|char(3)|No|—|Código IATA. tres letras; referencia sintética del aeropuerto|
|Name|nvarchar(100)|No|—|Nombre del aeropuerto. texto no vacío|
|City|nvarchar(80)|No|—|Ciudad. texto|
|WindowsTZ|sysname|No|—|Zona horaria Windows usada por AT TIME ZONE. zona reconocida por sys.time_zone_info|
|IanaTZ|varchar(50)|No|—|Zona equivalente usada por Python. zona IANA reconocida por zoneinfo|

```sql
CONSTRAINT PK_Airport PRIMARY KEY (AirportCode)
CONSTRAINT CK_Airport_Name CHECK (LEN(LTRIM(RTRIM(Name)))>0)
```

## Cabin
Catálogo de cabinas.

|Atributo|Tipo|Nulo|Predeterminado|Definición y dominio|
|---|---|---|---|---|
|CabinCode|varchar(3)|No|—|Código de cabina. VIP o ECO|
|Name|nvarchar(30)|No|—|Denominación. nombre|

```sql
CONSTRAINT PK_Cabin PRIMARY KEY (CabinCode)
CONSTRAINT CK_Cabin_Code CHECK (CabinCode IN ('VIP','ECO'))
```

## Person
Persona física; comprador y pasajero son roles, sin exigir inscripción.

|Atributo|Tipo|Nulo|Predeterminado|Definición y dominio|
|---|---|---|---|---|
|PersonId|int|No|—|Identificador interno. entero positivo asignado por carga|
|FullName|nvarchar(120)|No|—|Nombre de la persona. texto no vacío|
|Email|varchar(160)|Sí|—|Contacto. correo opcional; no identificador universal|
|BirthDate|date|Sí|—|Fecha de nacimiento. fecha de nacimiento opcional|

```sql
CONSTRAINT PK_Person PRIMARY KEY (PersonId)
CONSTRAINT CK_Person_Id CHECK (PersonId>0)
CONSTRAINT CK_Person_Name CHECK (LEN(LTRIM(RTRIM(FullName)))>0)
```

## Customer
Inscripción opcional de una persona; especialización uno a cero o uno.

|Atributo|Tipo|Nulo|Predeterminado|Definición y dominio|
|---|---|---|---|---|
|PersonId|int|No|—|Persona inscrita. persona existente|
|RegisteredAt|datetime2(0)|No|SYSUTCDATETIME()|Momento de registro. instante UTC|

```sql
CONSTRAINT PK_Customer PRIMARY KEY (PersonId)
CONSTRAINT FK_Customer_Person FOREIGN KEY (PersonId) REFERENCES air.Person(PersonId)
```

## Employee
Empleado; se permiten personas que también son clientes.

|Atributo|Tipo|Nulo|Predeterminado|Definición y dominio|
|---|---|---|---|---|
|EmployeeId|int|No|—|Identificador de empleado. entero de carga|
|PersonId|int|No|—|Persona empleada. persona única|
|RoleCode|varchar(10)|No|—|Función académica única. PILOT o CABIN o SALES|
|Active|bit|No|1|Empleado habilitado. 0 o 1|

```sql
CONSTRAINT PK_Employee PRIMARY KEY (EmployeeId)
CONSTRAINT UQ_Employee_Person UNIQUE (PersonId)
CONSTRAINT FK_Employee_Person FOREIGN KEY (PersonId) REFERENCES air.Person(PersonId)
CONSTRAINT CK_Employee_Role CHECK (RoleCode IN ('PILOT','CABIN','SALES'))
```

## Aircraft
Avión; la capacidad se obtiene contando asientos, sin duplicar totales.

|Atributo|Tipo|Nulo|Predeterminado|Definición y dominio|
|---|---|---|---|---|
|AircraftId|int|No|—|Identificador del avión. entero de carga|
|Registration|varchar(12)|No|—|Matrícula. matrícula sintética única|
|Model|nvarchar(60)|No|—|Descripción de aeronave. modelo académico|
|Active|bit|No|1|Aeronave habilitada. 0 o 1|

```sql
CONSTRAINT PK_Aircraft PRIMARY KEY (AircraftId)
CONSTRAINT UQ_Aircraft_Reg UNIQUE (Registration)
```

## AircraftSeat
Configuración inmutable durante la muestra; una fila por asiento real.

|Atributo|Tipo|Nulo|Predeterminado|Definición y dominio|
|---|---|---|---|---|
|AircraftId|int|No|—|Avión al que pertenece. avión existente|
|SeatNo|varchar(4)|No|—|Etiqueta de asiento. asiento dentro del avión|
|CabinCode|varchar(3)|No|—|Cabina del asiento. VIP o ECO|

```sql
CONSTRAINT PK_AircraftSeat PRIMARY KEY (AircraftId,SeatNo)
CONSTRAINT UQ_AircraftSeat_Cabin UNIQUE (AircraftId,SeatNo,CabinCode)
CONSTRAINT FK_AircraftSeat_Aircraft FOREIGN KEY (AircraftId) REFERENCES air.Aircraft(AircraftId)
CONSTRAINT FK_AircraftSeat_Cabin FOREIGN KEY (CabinCode) REFERENCES air.Cabin(CabinCode)
```

## Route
Par ordenado de aeropuertos; la recurrencia se normaliza en Schedule.

|Atributo|Tipo|Nulo|Predeterminado|Definición y dominio|
|---|---|---|---|---|
|RouteId|int|No|—|Identificador de ruta. entero de carga|
|OriginCode|char(3)|No|—|Origen. aeropuerto existente|
|DestinationCode|char(3)|No|—|Destino. aeropuerto distinto del origen|

```sql
CONSTRAINT PK_Route PRIMARY KEY (RouteId)
CONSTRAINT UQ_Route_Pair UNIQUE (OriginCode,DestinationCode)
CONSTRAINT FK_Route_Origin FOREIGN KEY (OriginCode) REFERENCES air.Airport(AirportCode)
CONSTRAINT FK_Route_Destination FOREIGN KEY (DestinationCode) REFERENCES air.Airport(AirportCode)
CONSTRAINT CK_Route_Different CHECK (OriginCode<>DestinationCode)
```

## Schedule
Patrón recurrente semanal de una ruta, con hora local del origen.

|Atributo|Tipo|Nulo|Predeterminado|Definición y dominio|
|---|---|---|---|---|
|ScheduleId|int|No|—|Identificador del patrón. entero de carga|
|RouteId|int|No|—|Ruta programada. ruta existente|
|IsoWeekday|tinyint|No|—|Día ISO de salida. 1 lunes a 7 domingo|
|DepartureLocal|time(0)|No|—|Hora local prevista. 00:00:00 a 23:59:59|
|DurationMinutes|smallint|No|—|Duración programada en minutos. 30 a 900|
|ValidFrom|date|No|—|Primer día de vigencia. incluida|
|ValidTo|date|No|—|Fin de vigencia. excluida; posterior a ValidFrom|

```sql
CONSTRAINT PK_Schedule PRIMARY KEY (ScheduleId)
CONSTRAINT FK_Schedule_Route FOREIGN KEY (RouteId) REFERENCES air.Route(RouteId)
CONSTRAINT CK_Schedule_Day CHECK (IsoWeekday BETWEEN 1 AND 7)
CONSTRAINT CK_Schedule_Duration CHECK (DurationMinutes BETWEEN 30 AND 900)
CONSTRAINT CK_Schedule_Validity CHECK (ValidFrom<ValidTo)
CONSTRAINT UQ_Schedule_Pattern UNIQUE (RouteId,IsoWeekday,DepartureLocal,ValidFrom)
```

## Flight
Instancia fechada; se crea por procedimiento a partir de Schedule.

|Atributo|Tipo|Nulo|Predeterminado|Definición y dominio|
|---|---|---|---|---|
|FlightId|int|No|—|Identificador del vuelo. entero de carga|
|ScheduleId|int|No|—|Patrón de origen. programación existente|
|AircraftId|int|No|—|Aeronave asignada de forma fija. avión existente|
|FlightDate|date|No|—|Fecha de operación en el origen. fecha local de salida|
|DepartureUtc|datetime2(0)|No|—|Salida programada. instante UTC|
|ArrivalUtc|datetime2(0)|No|—|Llegada programada. posterior a salida|
|Status|varchar(10)|No|'SCHEDULED'|Estado operacional. SCHEDULED BOARDING DEPARTED ARRIVED CANCELLED|

```sql
CONSTRAINT PK_Flight PRIMARY KEY (FlightId)
CONSTRAINT UQ_Flight_Aircraft UNIQUE (FlightId,AircraftId)
CONSTRAINT UQ_Flight_Instance UNIQUE (ScheduleId,FlightDate)
CONSTRAINT FK_Flight_Schedule FOREIGN KEY (ScheduleId) REFERENCES air.Schedule(ScheduleId)
CONSTRAINT FK_Flight_Aircraft FOREIGN KEY (AircraftId) REFERENCES air.Aircraft(AircraftId)
CONSTRAINT CK_Flight_Times CHECK (DepartureUtc<ArrivalUtc)
CONSTRAINT CK_Flight_Status CHECK (Status IN ('SCHEDULED','BOARDING','DEPARTED','ARRIVED','CANCELLED'))
```

## FlightSeat
Inventario de plazas; copia controlada de la configuración del avión.

|Atributo|Tipo|Nulo|Predeterminado|Definición y dominio|
|---|---|---|---|---|
|FlightId|int|No|—|Vuelo. vuelo existente|
|AircraftId|int|No|—|Avión; redundancia controlada por FK compuesta. debe coincidir con avión de Flight|
|SeatNo|varchar(4)|No|—|Asiento ofrecido. asiento físico del avión|
|CabinCode|varchar(3)|No|—|Cabina ofrecida. igual a cabina física|

```sql
CONSTRAINT PK_FlightSeat PRIMARY KEY (FlightId,SeatNo)
CONSTRAINT UQ_FlightSeat_Cabin UNIQUE (FlightId,SeatNo,CabinCode)
CONSTRAINT FK_FlightSeat_Flight FOREIGN KEY (FlightId,AircraftId) REFERENCES air.Flight(FlightId,AircraftId)
CONSTRAINT FK_FlightSeat_Physical FOREIGN KEY (AircraftId,SeatNo,CabinCode) REFERENCES air.AircraftSeat(AircraftId,SeatNo,CabinCode)
```

## CrewAssignment
Asignación temporal de empleado a vuelo; no se modela certificación FAA.

|Atributo|Tipo|Nulo|Predeterminado|Definición y dominio|
|---|---|---|---|---|
|FlightId|int|No|—|Vuelo atendido. vuelo existente|
|EmployeeId|int|No|—|Tripulante. empleado activo PILOT o CABIN|

```sql
CONSTRAINT PK_CrewAssignment PRIMARY KEY (FlightId,EmployeeId)
CONSTRAINT FK_CrewAssignment_Flight FOREIGN KEY (FlightId) REFERENCES air.Flight(FlightId)
CONSTRAINT FK_CrewAssignment_Employee FOREIGN KEY (EmployeeId) REFERENCES air.Employee(EmployeeId)
```

## SalesChannel
Punto físico o web de venta, distinto de los aeropuertos.

|Atributo|Tipo|Nulo|Predeterminado|Definición y dominio|
|---|---|---|---|---|
|ChannelId|int|No|—|Identificador de canal. entero de carga|
|Name|nvarchar(80)|No|—|Nombre del punto de venta. nombre|
|Kind|varchar(8)|No|—|Tipo de canal. PHYSICAL o WEB|
|Address|nvarchar(200)|Sí|—|Dirección postal sintética. obligatoria solo en PHYSICAL|
|Url|varchar(200)|Sí|—|URL de demostración. obligatoria solo en WEB; https|
|AirportCode|char(3)|Sí|—|Aeropuerto asociado. aeropuerto opcional para oficina física|

```sql
CONSTRAINT PK_SalesChannel PRIMARY KEY (ChannelId)
CONSTRAINT FK_SalesChannel_Airport FOREIGN KEY (AirportCode) REFERENCES air.Airport(AirportCode)
CONSTRAINT CK_SalesChannel_Kind CHECK ((Kind='PHYSICAL' AND Address IS NOT NULL AND Url IS NULL) OR (Kind='WEB' AND Address IS NULL AND Url IS NOT NULL AND Url LIKE 'https://%' AND AirportCode IS NULL))
```

## Fare
Versión de tarifa por ruta y cabina; vigencia por instante de compra UTC.

|Atributo|Tipo|Nulo|Predeterminado|Definición y dominio|
|---|---|---|---|---|
|FareId|int|No|—|Versión tarifaria. entero de carga|
|RouteId|int|No|—|Ruta tarifada. ruta existente|
|CabinCode|varchar(3)|No|—|Cabina tarifada. VIP o ECO|
|ValidFrom|datetime2(0)|No|—|Inicio de venta. incluido UTC|
|ValidTo|datetime2(0)|No|—|Fin de venta. excluido UTC|
|Price|decimal(12,2)|No|—|Precio original antes de descuento. mayor que 0; USD|

```sql
CONSTRAINT PK_Fare PRIMARY KEY (FareId)
CONSTRAINT FK_Fare_Route FOREIGN KEY (RouteId) REFERENCES air.Route(RouteId)
CONSTRAINT FK_Fare_Cabin FOREIGN KEY (CabinCode) REFERENCES air.Cabin(CabinCode)
CONSTRAINT CK_Fare_Validity CHECK (ValidFrom<ValidTo)
CONSTRAINT CK_Fare_Price CHECK (Price>0)
```

## Discount
Promoción porcentual global académica; como máximo una por tiquete.

|Atributo|Tipo|Nulo|Predeterminado|Definición y dominio|
|---|---|---|---|---|
|DiscountId|int|No|—|Identificador de descuento. entero de carga|
|Code|varchar(20)|No|—|Código promocional. único|
|PercentValue|decimal(5,2)|No|—|Porcentaje de descuento. mayor que 0 y hasta 30|
|ValidFrom|datetime2(0)|No|—|Inicio de vigencia. incluido UTC|
|ValidTo|datetime2(0)|No|—|Fin de vigencia. excluido UTC|

```sql
CONSTRAINT PK_Discount PRIMARY KEY (DiscountId)
CONSTRAINT UQ_Discount_Code UNIQUE (Code)
CONSTRAINT CK_Discount_Percent CHECK (PercentValue>0 AND PercentValue<=30)
CONSTRAINT CK_Discount_Validity CHECK (ValidFrom<ValidTo)
```

## Ticket
Contrato para una persona y un asiento de un vuelo; importes históricos USD.

|Atributo|Tipo|Nulo|Predeterminado|Definición y dominio|
|---|---|---|---|---|
|TicketId|bigint IDENTITY(1,1)|No|—|Identificador del tiquete. autonumérico|
|RequestKey|uniqueidentifier|No|—|Identificador estable del intento de compra. único; clave de idempotencia de emisión|
|FlightId|int|No|—|Vuelo adquirido. vuelo existente|
|SeatNo|varchar(4)|No|—|Asiento asignado. asiento disponible|
|CabinCode|varchar(3)|No|—|Cabina adquirida. coincide con inventario|
|PassengerId|int|No|—|Persona que viaja. persona con o sin registro|
|BuyerId|int|No|—|Persona que compra. persona con o sin registro|
|ChannelId|int|No|—|Canal de venta. canal existente|
|FareId|int|No|—|Versión de referencia. tarifa única vigente al vender|
|DiscountId|int|Sí|—|Promoción aplicada. promoción vigente opcional|
|OriginalPrice|decimal(12,2)|No|—|Precio original histórico. positivo USD; copia al vender|
|DiscountPercent|decimal(5,2)|No|0|Porcentaje histórico no acumulable. 0 a 30|
|SoldAt|datetime2(0)|No|SYSUTCDATETIME()|Fecha de venta. instante de compra UTC anterior a salida|
|Status|varchar(10)|No|'HELD'|Estado de reserva y cobro. HELD PARTIAL PAID CANCELLED|
|CancelledAt|datetime2(0)|Sí|—|Instante de cancelación. UTC; solo CANCELLED|
|CancelReason|nvarchar(200)|Sí|—|Motivo de cancelación. solo CANCELLED|
|FinalPrice|decimal(12,2) COMPUTED PERSISTED|Sí|—|Precio final histórico calculado; el catálogo puede inferir nulabilidad aunque la expresión es total. ROUND(OriginalPrice*(1-DiscountPercent/100),2); operandos NOT NULL|

```sql
CONSTRAINT PK_Ticket PRIMARY KEY (TicketId)
CONSTRAINT UQ_Ticket_Request UNIQUE (RequestKey)
CONSTRAINT FK_Ticket_Seat FOREIGN KEY (FlightId,SeatNo,CabinCode) REFERENCES air.FlightSeat(FlightId,SeatNo,CabinCode)
CONSTRAINT FK_Ticket_Passenger FOREIGN KEY (PassengerId) REFERENCES air.Person(PersonId)
CONSTRAINT FK_Ticket_Buyer FOREIGN KEY (BuyerId) REFERENCES air.Person(PersonId)
CONSTRAINT FK_Ticket_Channel FOREIGN KEY (ChannelId) REFERENCES air.SalesChannel(ChannelId)
CONSTRAINT FK_Ticket_Fare FOREIGN KEY (FareId) REFERENCES air.Fare(FareId)
CONSTRAINT FK_Ticket_Discount FOREIGN KEY (DiscountId) REFERENCES air.Discount(DiscountId)
CONSTRAINT CK_Ticket_Price CHECK (OriginalPrice>0 AND DiscountPercent BETWEEN 0 AND 30)
CONSTRAINT CK_Ticket_Promotion CHECK ((DiscountId IS NULL AND DiscountPercent=0) OR (DiscountId IS NOT NULL AND DiscountPercent>0))
CONSTRAINT CK_Ticket_Status CHECK (Status IN ('HELD','PARTIAL','PAID','CANCELLED'))
CONSTRAINT CK_Ticket_Cancel CHECK ((Status='CANCELLED' AND CancelledAt IS NOT NULL AND CancelReason IS NOT NULL AND CancelledAt>=SoldAt) OR (Status<>'CANCELLED' AND CancelledAt IS NULL AND CancelReason IS NULL))
```

## Payment
Intento de cobro; solo confirmado o fallido, sin pasarela real.

|Atributo|Tipo|Nulo|Predeterminado|Definición y dominio|
|---|---|---|---|---|
|PaymentId|bigint IDENTITY(1,1)|No|—|Identificador de pago. autonumérico|
|TicketId|bigint|No|—|Tiquete abonado. tiquete existente|
|RequestKey|uniqueidentifier|No|—|Clave de operación de cobro. único e idempotente|
|Amount|decimal(12,2)|No|—|Importe del intento. mayor que 0 USD|
|Status|varchar(9)|No|—|Resultado definitivo simulado. CONFIRMED o FAILED|
|Method|varchar(10)|No|—|Medio de pago sin datos bancarios. CARD CASH TRANSFER|
|PaidAt|datetime2(0)|No|SYSUTCDATETIME()|Fecha de intento. UTC; no anterior a venta|

```sql
CONSTRAINT PK_Payment PRIMARY KEY (PaymentId)
CONSTRAINT UQ_Payment_Request UNIQUE (RequestKey)
CONSTRAINT FK_Payment_Ticket FOREIGN KEY (TicketId) REFERENCES air.Ticket(TicketId)
CONSTRAINT CK_Payment_Amount CHECK (Amount>0)
CONSTRAINT CK_Payment_Status CHECK (Status IN ('CONFIRMED','FAILED'))
CONSTRAINT CK_Payment_Method CHECK (Method IN ('CARD','CASH','TRANSFER'))
```

## Refund
Reembolso contable total de un pago confirmado al cancelar.

|Atributo|Tipo|Nulo|Predeterminado|Definición y dominio|
|---|---|---|---|---|
|RefundId|bigint IDENTITY(1,1)|No|—|Identificador del reembolso. autonumérico|
|PaymentId|bigint|No|—|Pago revertido íntegramente. pago confirmado; uno por pago|
|Amount|decimal(12,2)|No|—|Importe devuelto. mayor que 0 USD|
|RefundedAt|datetime2(0)|No|SYSUTCDATETIME()|Instante del registro. UTC posterior o igual a pago|

```sql
CONSTRAINT PK_Refund PRIMARY KEY (RefundId)
CONSTRAINT UQ_Refund_Payment UNIQUE (PaymentId)
CONSTRAINT FK_Refund_Payment FOREIGN KEY (PaymentId) REFERENCES air.Payment(PaymentId)
CONSTRAINT CK_Refund_Amount CHECK (Amount>0)
```

## StatusEvent
Auditoría de transiciones; entidad por referencias excluyentes.

|Atributo|Tipo|Nulo|Predeterminado|Definición y dominio|
|---|---|---|---|---|
|EventId|bigint IDENTITY(1,1)|No|—|Identificador de evento. autonumérico|
|TicketId|bigint|Sí|—|Tiquete afectado. tiquete o vuelo; exactamente uno|
|FlightId|int|Sí|—|Vuelo afectado. tiquete o vuelo; exactamente uno|
|FromStatus|varchar(10)|Sí|—|Estado previo. nulo para creación|
|ToStatus|varchar(10)|No|—|Nuevo estado. estado destino de la entidad|
|ChangedAt|datetime2(0)|No|SYSUTCDATETIME()|Momento del cambio. UTC del evento académico|
|Actor|sysname|No|SUSER_SNAME()|Usuario que ejecutó. principal SQL|

```sql
CONSTRAINT PK_StatusEvent PRIMARY KEY (EventId)
CONSTRAINT FK_StatusEvent_Ticket FOREIGN KEY (TicketId) REFERENCES air.Ticket(TicketId)
CONSTRAINT FK_StatusEvent_Flight FOREIGN KEY (FlightId) REFERENCES air.Flight(FlightId)
CONSTRAINT CK_StatusEvent_Entity CHECK ((TicketId IS NOT NULL AND FlightId IS NULL) OR (TicketId IS NULL AND FlightId IS NOT NULL))
```
