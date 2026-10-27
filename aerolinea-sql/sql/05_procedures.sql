-- Todas las escrituras del rol operativo pasan por estos procedimientos.
-- Bloqueo global, deliberadamente conservador para el volumen académico.
CREATE OR ALTER PROCEDURE air.usp_WriteLock
AS
BEGIN
 SET NOCOUNT ON;
 DECLARE @r int;
 EXEC @r=sys.sp_getapplock @Resource=N'AirlinePAC:write',@LockMode='Exclusive',@LockOwner='Transaction',@LockTimeout=15000;
 IF @r<0 THROW 51001,'No se obtuvo el bloqueo de escritura; reintentar con la misma clave.',1;
END;
GO
CREATE OR ALTER PROCEDURE air.usp_AddFare
 @FareId int,@RouteId int,@CabinCode varchar(3),@ValidFrom datetime2(0),@ValidTo datetime2(0),@Price decimal(12,2)
AS
BEGIN
 SET NOCOUNT ON; SET XACT_ABORT ON;
 BEGIN TRY
  BEGIN TRAN; EXEC air.usp_WriteLock;
  IF EXISTS(SELECT 1 FROM air.Fare WHERE RouteId=@RouteId AND CabinCode=@CabinCode AND ValidFrom<@ValidTo AND ValidTo>@ValidFrom)
   THROW 51002,'Vigencias de tarifas superpuestas.',1;
  INSERT air.Fare(FareId,RouteId,CabinCode,ValidFrom,ValidTo,Price) VALUES(@FareId,@RouteId,@CabinCode,@ValidFrom,@ValidTo,@Price);
  COMMIT;
 END TRY BEGIN CATCH IF @@TRANCOUNT>0 ROLLBACK; THROW; END CATCH;
END;
GO
CREATE OR ALTER PROCEDURE air.usp_CreateFlight
 @FlightId int,@ScheduleId int,@AircraftId int,@FlightDate date
AS
BEGIN
 SET NOCOUNT ON; SET XACT_ABORT ON;
 BEGIN TRY
  BEGIN TRAN; EXEC air.usp_WriteLock;
  DECLARE @day tinyint,@time time(0),@duration smallint,@tz sysname,@vf date,@vt date;
  SELECT @day=s.IsoWeekday,@time=s.DepartureLocal,@duration=s.DurationMinutes,@vf=s.ValidFrom,@vt=s.ValidTo,@tz=a.WindowsTZ
  FROM air.Schedule s JOIN air.Route r ON r.RouteId=s.RouteId JOIN air.Airport a ON a.AirportCode=r.OriginCode WHERE s.ScheduleId=@ScheduleId;
  IF @day IS NULL OR @FlightDate<@vf OR @FlightDate>=@vt OR ((DATEDIFF(day,'19000101',@FlightDate)%7+7)%7)+1<>@day
   THROW 51003,'Fecha fuera del patrón semanal o de su vigencia.',1;
  IF NOT EXISTS(SELECT 1 FROM air.Aircraft WHERE AircraftId=@AircraftId AND Active=1)
   THROW 51004,'Avión inexistente o inactivo.',1;
  DECLARE @local datetime2(0)=DATEADD(second,DATEDIFF(second,CAST('00:00' AS time),@time),CAST(@FlightDate AS datetime2(0)));
  DECLARE @dep datetime2(0)=CAST((@local AT TIME ZONE @tz) AT TIME ZONE 'UTC' AS datetime2(0));
  IF CAST((@dep AT TIME ZONE 'UTC') AT TIME ZONE @tz AS datetime2(0))<>@local
   THROW 51005,'Hora local inexistente por cambio de horario; modificar la programación.',1;
  DECLARE @arr datetime2(0)=DATEADD(minute,@duration,@dep);
  IF EXISTS(SELECT 1 FROM air.Flight WHERE AircraftId=@AircraftId AND Status<>'CANCELLED' AND DepartureUtc<DATEADD(minute,45,@arr) AND DATEADD(minute,45,ArrivalUtc)>@dep)
   THROW 51006,'Solapamiento de avión; incluye 45 minutos de preparación.',1;
  IF NOT EXISTS(SELECT 1 FROM air.AircraftSeat WHERE AircraftId=@AircraftId AND CabinCode='VIP') OR NOT EXISTS(SELECT 1 FROM air.AircraftSeat WHERE AircraftId=@AircraftId AND CabinCode='ECO')
   THROW 51007,'Configurar asientos de ambas cabinas antes del vuelo.',1;
  INSERT air.Flight(FlightId,ScheduleId,AircraftId,FlightDate,DepartureUtc,ArrivalUtc) VALUES(@FlightId,@ScheduleId,@AircraftId,@FlightDate,@dep,@arr);
  INSERT air.FlightSeat(FlightId,AircraftId,SeatNo,CabinCode) SELECT @FlightId,AircraftId,SeatNo,CabinCode FROM air.AircraftSeat WHERE AircraftId=@AircraftId;
  INSERT air.StatusEvent(FlightId,ToStatus,ChangedAt) VALUES(@FlightId,'SCHEDULED',DATEADD(day,-90,@dep));
  COMMIT;
 END TRY BEGIN CATCH IF @@TRANCOUNT>0 ROLLBACK; THROW; END CATCH;
END;
GO
CREATE OR ALTER PROCEDURE air.usp_AssignCrew @FlightId int,@EmployeeId int
AS
BEGIN
 SET NOCOUNT ON; SET XACT_ABORT ON;
 BEGIN TRY
  BEGIN TRAN; EXEC air.usp_WriteLock;
  IF NOT EXISTS(SELECT 1 FROM air.Flight WHERE FlightId=@FlightId AND Status='SCHEDULED') THROW 51008,'Solo se asigna tripulación a vuelos programados.',1;
  IF NOT EXISTS(SELECT 1 FROM air.Employee WHERE EmployeeId=@EmployeeId AND Active=1 AND RoleCode IN ('PILOT','CABIN')) THROW 51009,'Empleado no habilitado para tripulación.',1;
  IF EXISTS(SELECT 1 FROM air.CrewAssignment c JOIN air.Flight f ON f.FlightId=c.FlightId CROSS JOIN air.Flight n
   WHERE c.EmployeeId=@EmployeeId AND n.FlightId=@FlightId AND f.Status<>'CANCELLED' AND f.DepartureUtc<DATEADD(minute,45,n.ArrivalUtc) AND DATEADD(minute,45,f.ArrivalUtc)>n.DepartureUtc)
   THROW 51010,'Tripulante ocupado en ese intervalo.',1;
  INSERT air.CrewAssignment(FlightId,EmployeeId) VALUES(@FlightId,@EmployeeId);
  COMMIT;
 END TRY BEGIN CATCH IF @@TRANCOUNT>0 ROLLBACK; THROW; END CATCH;
END;
GO
CREATE OR ALTER PROCEDURE air.usp_IssueTicket
 @RequestKey uniqueidentifier,@FlightId int,@SeatNo varchar(4),@PassengerId int,@BuyerId int,@ChannelId int,
 @SoldAt datetime2(0),@DiscountId int=NULL,@TicketId bigint=NULL OUTPUT
AS
BEGIN
 SET NOCOUNT ON; SET XACT_ABORT ON;
 BEGIN TRY
  BEGIN TRAN; EXEC air.usp_WriteLock;
  SET @TicketId=NULL;
  SELECT @TicketId=TicketId FROM air.Ticket WHERE RequestKey=@RequestKey;
  IF @TicketId IS NOT NULL
  BEGIN
   IF NOT EXISTS(SELECT 1 FROM air.Ticket WHERE TicketId=@TicketId AND FlightId=@FlightId AND SeatNo=@SeatNo AND PassengerId=@PassengerId AND BuyerId=@BuyerId AND ChannelId=@ChannelId AND SoldAt=@SoldAt AND (DiscountId=@DiscountId OR (DiscountId IS NULL AND @DiscountId IS NULL)))
    THROW 51011,'Clave de emisión reutilizada con otros parámetros.',1;
   COMMIT; RETURN;
  END;
  DECLARE @route int,@cabin varchar(3),@dep datetime2(0),@fare int,@price decimal(12,2),@percent decimal(5,2)=0;
  SELECT @route=s.RouteId,@dep=f.DepartureUtc FROM air.Flight f JOIN air.Schedule s ON s.ScheduleId=f.ScheduleId WHERE f.FlightId=@FlightId AND f.Status='SCHEDULED';
  IF @route IS NULL OR @SoldAt>=@dep OR @SoldAt IS NULL THROW 51012,'Vuelo no disponible o venta posterior a la salida.',1;
  SELECT @cabin=CabinCode FROM air.FlightSeat WHERE FlightId=@FlightId AND SeatNo=@SeatNo;
  IF @cabin IS NULL THROW 51013,'Asiento no pertenece al vuelo.',1;
  IF EXISTS(SELECT 1 FROM air.Ticket WHERE FlightId=@FlightId AND SeatNo=@SeatNo AND Status<>'CANCELLED') THROW 51014,'Asiento ya reservado; no se permite sobreventa.',1;
  IF (SELECT COUNT(*) FROM air.Fare WHERE RouteId=@route AND CabinCode=@cabin AND ValidFrom<=@SoldAt AND ValidTo>@SoldAt)<>1 THROW 51015,'No hay una tarifa única vigente.',1;
  SELECT @fare=FareId,@price=Price FROM air.Fare WHERE RouteId=@route AND CabinCode=@cabin AND ValidFrom<=@SoldAt AND ValidTo>@SoldAt;
  IF @DiscountId IS NOT NULL
  BEGIN
   SELECT @percent=PercentValue FROM air.Discount WHERE DiscountId=@DiscountId AND ValidFrom<=@SoldAt AND ValidTo>@SoldAt;
   IF @percent=0 THROW 51016,'Descuento inexistente o fuera de vigencia.',1;
  END;
  INSERT air.Ticket(RequestKey,FlightId,SeatNo,CabinCode,PassengerId,BuyerId,ChannelId,FareId,DiscountId,OriginalPrice,DiscountPercent,SoldAt)
   VALUES(@RequestKey,@FlightId,@SeatNo,@cabin,@PassengerId,@BuyerId,@ChannelId,@fare,@DiscountId,@price,@percent,@SoldAt);
  SET @TicketId=SCOPE_IDENTITY();
  INSERT air.StatusEvent(TicketId,ToStatus,ChangedAt) VALUES(@TicketId,'HELD',@SoldAt);
  COMMIT;
 END TRY BEGIN CATCH IF @@TRANCOUNT>0 ROLLBACK; THROW; END CATCH;
END;
GO
CREATE OR ALTER PROCEDURE air.usp_RegisterPayment
 @TicketId bigint,@RequestKey uniqueidentifier,@Amount decimal(12,2),@Status varchar(9),@Method varchar(10),@PaidAt datetime2(0),@PaymentId bigint=NULL OUTPUT
AS
BEGIN
 SET NOCOUNT ON; SET XACT_ABORT ON;
 BEGIN TRY
  BEGIN TRAN; EXEC air.usp_WriteLock;
  SET @PaymentId=NULL;
  SELECT @PaymentId=PaymentId FROM air.Payment WHERE RequestKey=@RequestKey;
  IF @PaymentId IS NOT NULL
  BEGIN
   IF NOT EXISTS(SELECT 1 FROM air.Payment WHERE PaymentId=@PaymentId AND TicketId=@TicketId AND Amount=@Amount AND Status=@Status AND Method=@Method AND PaidAt=@PaidAt)
    THROW 51017,'Clave de pago reutilizada con otros parámetros.',1;
   COMMIT; RETURN;
  END;
  DECLARE @old varchar(10),@new varchar(10),@total decimal(12,2),@sold datetime2(0),@dep datetime2(0),@paid decimal(12,2);
  SELECT @old=t.Status,@total=t.FinalPrice,@sold=t.SoldAt,@dep=f.DepartureUtc FROM air.Ticket t JOIN air.Flight f ON f.FlightId=t.FlightId WHERE t.TicketId=@TicketId;
  IF @old IS NULL OR @old='CANCELLED' OR @PaidAt<@sold OR @PaidAt>=@dep OR @PaidAt IS NULL THROW 51018,'Tiquete no cobrable o fecha de pago inválida.',1;
  SELECT @paid=COALESCE(SUM(Amount),0) FROM air.Payment WHERE TicketId=@TicketId AND Status='CONFIRMED';
  IF @Status='CONFIRMED' AND @paid+@Amount>@total THROW 51019,'El cobro excede el precio del tiquete.',1;
  INSERT air.Payment(TicketId,RequestKey,Amount,Status,Method,PaidAt) VALUES(@TicketId,@RequestKey,@Amount,@Status,@Method,@PaidAt);
  SET @PaymentId=SCOPE_IDENTITY();
  SET @new=CASE WHEN @Status='CONFIRMED' AND @paid+@Amount=@total THEN 'PAID' WHEN @Status='CONFIRMED' THEN 'PARTIAL' ELSE @old END;
  IF @new<>@old
  BEGIN
   UPDATE air.Ticket SET Status=@new WHERE TicketId=@TicketId;
   INSERT air.StatusEvent(TicketId,FromStatus,ToStatus,ChangedAt) VALUES(@TicketId,@old,@new,@PaidAt);
  END;
  COMMIT;
 END TRY BEGIN CATCH IF @@TRANCOUNT>0 ROLLBACK; THROW; END CATCH;
END;
GO
CREATE OR ALTER PROCEDURE air.usp_CancelTicket @TicketId bigint,@CancelledAt datetime2(0),@Reason nvarchar(200)
AS
BEGIN
 SET NOCOUNT ON; SET XACT_ABORT ON;
 BEGIN TRY
  BEGIN TRAN; EXEC air.usp_WriteLock;
  DECLARE @old varchar(10),@sold datetime2(0),@dep datetime2(0),@fs varchar(10),@latest datetime2(0);
  SELECT @old=t.Status,@sold=t.SoldAt,@dep=f.DepartureUtc,@fs=f.Status FROM air.Ticket t JOIN air.Flight f ON f.FlightId=t.FlightId WHERE TicketId=@TicketId;
  IF @old IS NULL THROW 51020,'Tiquete inexistente.',1;
  IF @old='CANCELLED' BEGIN COMMIT; RETURN; END;
  SELECT @latest=MAX(PaidAt) FROM air.Payment WHERE TicketId=@TicketId;
  IF @fs IN ('DEPARTED','ARRIVED') OR @CancelledAt>=@dep OR @CancelledAt<@sold OR @CancelledAt<@latest OR @CancelledAt IS NULL OR NULLIF(LTRIM(RTRIM(@Reason)),N'') IS NULL
   THROW 51021,'Cancelación fuera de política o fecha inválida.',1;
  INSERT air.Refund(PaymentId,Amount,RefundedAt) SELECT p.PaymentId,p.Amount,@CancelledAt FROM air.Payment p WHERE p.TicketId=@TicketId AND p.Status='CONFIRMED' AND NOT EXISTS(SELECT 1 FROM air.Refund r WHERE r.PaymentId=p.PaymentId);
  UPDATE air.Ticket SET Status='CANCELLED',CancelledAt=@CancelledAt,CancelReason=@Reason WHERE TicketId=@TicketId;
  INSERT air.StatusEvent(TicketId,FromStatus,ToStatus,ChangedAt) VALUES(@TicketId,@old,'CANCELLED',@CancelledAt);
  COMMIT;
 END TRY BEGIN CATCH IF @@TRANCOUNT>0 ROLLBACK; THROW; END CATCH;
END;
GO
CREATE OR ALTER PROCEDURE air.usp_ChangeFlightStatus @FlightId int,@ToStatus varchar(10),@ChangedAt datetime2(0)
AS
BEGIN
 SET NOCOUNT ON; SET XACT_ABORT ON;
 BEGIN TRY
  BEGIN TRAN; EXEC air.usp_WriteLock;
  DECLARE @old varchar(10),@dep datetime2(0),@arr datetime2(0),@last datetime2(0);
  SELECT @old=Status,@dep=DepartureUtc,@arr=ArrivalUtc FROM air.Flight WHERE FlightId=@FlightId;
  SELECT @last=MAX(ChangedAt) FROM air.StatusEvent WHERE FlightId=@FlightId;
  IF @old IS NULL OR @ChangedAt IS NULL OR @ChangedAt<@last THROW 51022,'Vuelo inexistente o fecha no monótona.',1;
  IF NOT ((@old='SCHEDULED' AND @ToStatus IN ('BOARDING','CANCELLED')) OR (@old='BOARDING' AND @ToStatus IN ('DEPARTED','CANCELLED')) OR (@old='DEPARTED' AND @ToStatus='ARRIVED')) THROW 51023,'Transición de vuelo no permitida.',1;
  IF (@ToStatus IN ('BOARDING','CANCELLED') AND @ChangedAt>=@dep) OR (@ToStatus='DEPARTED' AND @ChangedAt<@dep) OR (@ToStatus='ARRIVED' AND @ChangedAt<@arr) THROW 51024,'Estado fuera de su intervalo temporal.',1;
  IF @ToStatus='BOARDING' AND EXISTS(SELECT 1 FROM air.Ticket t LEFT JOIN air.Payment p ON p.TicketId=t.TicketId WHERE t.FlightId=@FlightId AND (t.SoldAt>@ChangedAt OR t.CancelledAt>@ChangedAt OR p.PaidAt>@ChangedAt)) THROW 51027,'Embarque anterior a movimientos de venta o pago.',1;
  IF @ToStatus IN ('BOARDING','DEPARTED')
  BEGIN
   IF (SELECT COUNT(*) FROM air.CrewAssignment c JOIN air.Employee e ON e.EmployeeId=c.EmployeeId WHERE c.FlightId=@FlightId AND e.Active=1 AND e.RoleCode='PILOT')<1 OR (SELECT COUNT(*) FROM air.CrewAssignment c JOIN air.Employee e ON e.EmployeeId=c.EmployeeId WHERE c.FlightId=@FlightId AND e.Active=1 AND e.RoleCode='CABIN')<1 THROW 51025,'Tripulación mínima académica: un piloto y un auxiliar.',1;
   IF EXISTS(SELECT 1 FROM air.Ticket WHERE FlightId=@FlightId AND Status IN ('HELD','PARTIAL')) THROW 51026,'Resolver reservas pendientes antes de embarcar.',1;
  END;
  IF @ToStatus='CANCELLED'
  BEGIN
   DECLARE @tid bigint;
   DECLARE tickets CURSOR LOCAL FAST_FORWARD FOR SELECT TicketId FROM air.Ticket WHERE FlightId=@FlightId AND Status<>'CANCELLED' ORDER BY TicketId;
   OPEN tickets; FETCH NEXT FROM tickets INTO @tid;
   WHILE @@FETCH_STATUS=0 BEGIN EXEC air.usp_CancelTicket @tid,@ChangedAt,N'Cancelación del vuelo'; FETCH NEXT FROM tickets INTO @tid; END;
   CLOSE tickets; DEALLOCATE tickets;
  END;
  UPDATE air.Flight SET Status=@ToStatus WHERE FlightId=@FlightId;
  INSERT air.StatusEvent(FlightId,FromStatus,ToStatus,ChangedAt) VALUES(@FlightId,@old,@ToStatus,@ChangedAt);
  COMMIT;
 END TRY BEGIN CATCH IF @@TRANCOUNT>0 ROLLBACK; THROW; END CATCH;
END;
GO
