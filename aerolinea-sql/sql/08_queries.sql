-- Meta de calidad propuesta: 18 SELECT; no mínimo atribuido al docente.
DECLARE @Start date='2025-01-01',@End date='2027-01-01';

-- Q01: Ocupación por vuelo y cabina
SELECT FlightId,RouteId,FlightDate,CabinCode,Capacity,Reserved,PaidSeats,Available,OccupancyPercent
FROM air.vOccupancy WHERE FlightDate>=@Start AND FlightDate<@End AND Status<>'CANCELLED' ORDER BY FlightId,CabinCode;

-- Q02: Ocupación ponderada por ruta y cabina
SELECT RouteId,CabinCode,SUM(Capacity) Capacity,SUM(Reserved) Reserved,
CAST(100.0*SUM(Reserved)/NULLIF(SUM(Capacity),0) AS decimal(6,2)) OccupancyPercent
FROM air.vOccupancy WHERE FlightDate>=@Start AND FlightDate<@End AND Status<>'CANCELLED'
GROUP BY RouteId,CabinCode ORDER BY RouteId,CabinCode;

-- Q03: Ventas comerciales y cobros de la cohorte
SELECT COUNT_BIG(*) Tickets,COALESCE(SUM(FinalPrice),0) GrossIssued,COALESCE(SUM(NetSales),0) NetSales,
COALESCE(SUM(Collected),0) Collected,COALESCE(SUM(Refunded),0) Refunded,COALESCE(SUM(NetCash),0) NetCash,COALESCE(SUM(Outstanding),0) Outstanding
FROM air.vTicketFinance WHERE SoldAt>=@Start AND SoldAt<@End;

-- Q04: Flujo de caja por fecha de movimiento
WITH movements AS (
SELECT CAST(PaidAt AS date) DayUtc,Amount Collected,CAST(0 AS decimal(12,2)) Refunded FROM air.Payment WHERE Status='CONFIRMED' AND PaidAt>=@Start AND PaidAt<@End
UNION ALL SELECT CAST(RefundedAt AS date),0,Amount FROM air.Refund WHERE RefundedAt>=@Start AND RefundedAt<@End)
SELECT DayUtc,SUM(Collected) Collected,SUM(Refunded) Refunded,SUM(Collected-Refunded) NetCash FROM movements GROUP BY DayUtc ORDER BY DayUtc;

-- Q05: Tiquetes con saldo pendiente
SELECT TicketId,FlightId,Status,FinalPrice,Collected,Outstanding FROM air.vTicketFinance
WHERE SoldAt>=@Start AND SoldAt<@End AND Outstanding>0 ORDER BY Outstanding DESC,TicketId;

-- Q06: Conciliación de reembolsos
SELECT TicketId,Collected,Refunded,NetCash FROM air.vTicketFinance
WHERE SoldAt>=@Start AND SoldAt<@End AND Status='CANCELLED' ORDER BY TicketId;

-- Q07: Precio medio y descuento efectivo
SELECT CabinCode,COUNT(*) Tickets,AVG(OriginalPrice) MeanOriginal,AVG(FinalPrice) MeanFinal,
CAST(100.0*SUM(OriginalPrice-FinalPrice)/NULLIF(SUM(OriginalPrice),0) AS decimal(6,2)) EffectiveDiscountPercent
FROM air.Ticket WHERE SoldAt>=@Start AND SoldAt<@End AND Status<>'CANCELLED' GROUP BY CabinCode ORDER BY CabinCode;

-- Q08: Ventas por canal, incluidos canales sin venta
SELECT c.ChannelId,c.Name,c.Kind,COUNT(t.TicketId) Tickets,COALESCE(SUM(t.NetSales),0) NetSales,COALESCE(SUM(t.NetCash),0) NetCash
FROM air.SalesChannel c LEFT JOIN air.vTicketFinance t ON t.ChannelId=c.ChannelId AND t.SoldAt>=@Start AND t.SoldAt<@End
GROUP BY c.ChannelId,c.Name,c.Kind ORDER BY c.ChannelId;

-- Q09: Viajes según inscripción del pasajero al vender
SELECT CASE WHEN c.PersonId IS NOT NULL AND c.RegisteredAt<=t.SoldAt THEN 'REGISTERED' ELSE 'UNREGISTERED' END Registration,
COUNT(*) Tickets,COUNT(DISTINCT t.PassengerId) DistinctPassengers FROM air.Ticket t LEFT JOIN air.Customer c ON c.PersonId=t.PassengerId
WHERE t.SoldAt>=@Start AND t.SoldAt<@End AND t.Status<>'CANCELLED'
GROUP BY CASE WHEN c.PersonId IS NOT NULL AND c.RegisteredAt<=t.SoldAt THEN 'REGISTERED' ELSE 'UNREGISTERED' END;

-- Q10: Cancelaciones por ruta
SELECT s.RouteId,COUNT(*) Issued,SUM(CASE WHEN t.Status='CANCELLED' THEN 1 ELSE 0 END) Cancelled,
CAST(100.0*SUM(CASE WHEN t.Status='CANCELLED' THEN 1 ELSE 0 END)/COUNT(*) AS decimal(6,2)) CancellationPercent
FROM air.Ticket t JOIN air.Flight f ON f.FlightId=t.FlightId JOIN air.Schedule s ON s.ScheduleId=f.ScheduleId
WHERE t.SoldAt>=@Start AND t.SoldAt<@End GROUP BY s.RouteId ORDER BY s.RouteId;

-- Q11: Utilización programada de flota
SELECT a.AircraftId,a.Registration,COUNT(f.FlightId) Flights,COALESCE(SUM(DATEDIFF(minute,f.DepartureUtc,f.ArrivalUtc)),0) ScheduledMinutes,
CAST(100.0*COALESCE(SUM(DATEDIFF(minute,f.DepartureUtc,f.ArrivalUtc)),0)/NULLIF(DATEDIFF(day,@Start,@End)*1440.0,0) AS decimal(7,3)) CalendarUtilizationPercent
FROM air.Aircraft a LEFT JOIN air.Flight f ON f.AircraftId=a.AircraftId AND f.FlightDate>=@Start AND f.FlightDate<@End AND f.Status<>'CANCELLED'
GROUP BY a.AircraftId,a.Registration ORDER BY a.AircraftId;

-- Q12: Distribución temporal de compras
SELECT CAST(SoldAt AS date) SaleDayUtc,COUNT(*) Tickets,SUM(FinalPrice) GrossIssued FROM air.Ticket
WHERE SoldAt>=@Start AND SoldAt<@End GROUP BY CAST(SoldAt AS date) ORDER BY SaleDayUtc;

-- Q13: Acumulado de ventas comerciales netas
WITH daily AS (SELECT CAST(SoldAt AS date) SaleDayUtc,SUM(NetSales) NetSales FROM air.vTicketFinance
WHERE SoldAt>=@Start AND SoldAt<@End GROUP BY CAST(SoldAt AS date))
SELECT SaleDayUtc,NetSales,SUM(NetSales) OVER(ORDER BY SaleDayUtc ROWS UNBOUNDED PRECEDING) CumulativeNetSales FROM daily ORDER BY SaleDayUtc;

-- Q14: Rutas con ocupación reservada superior al 50 %
SELECT RouteId,SUM(Reserved) Reserved,SUM(Capacity) Capacity FROM air.vOccupancy
WHERE FlightDate>=@Start AND FlightDate<@End AND Status<>'CANCELLED' GROUP BY RouteId HAVING SUM(Reserved)>0.5*SUM(Capacity) ORDER BY RouteId;

-- Q15: Conciliación global de importes sin multiplicación
SELECT COALESCE(SUM(NetSales-NetCash-Outstanding),0) BalanceDifference,
COALESCE(SUM(Collected),0)-(SELECT COALESCE(SUM(p.Amount),0) FROM air.Payment p JOIN air.Ticket t ON t.TicketId=p.TicketId WHERE p.Status='CONFIRMED' AND t.SoldAt>=@Start AND t.SoldAt<@End) CollectedDifference
FROM air.vTicketFinance WHERE SoldAt>=@Start AND SoldAt<@End;

-- Q16: Llegadas en un día local posterior
SELECT FlightId,OriginCode,DestinationCode,DepartureLocal,ArrivalLocal,DATEDIFF(minute,DepartureUtc,ArrivalUtc) DurationMinutes
FROM air.vFlightLocal WHERE FlightDate>=@Start AND FlightDate<@End AND CAST(ArrivalLocal AS date)>CAST(DepartureLocal AS date) ORDER BY FlightId;

-- Q17: Múltiples intentos y pagos por tiquete
SELECT t.TicketId,COUNT(p.PaymentId) Attempts,SUM(CASE WHEN p.Status='CONFIRMED' THEN 1 ELSE 0 END) ConfirmedCount,
SUM(CASE WHEN p.Status='CONFIRMED' THEN p.Amount ELSE 0 END) Collected
FROM air.Ticket t JOIN air.Payment p ON p.TicketId=t.TicketId WHERE t.SoldAt>=@Start AND t.SoldAt<@End GROUP BY t.TicketId HAVING COUNT(p.PaymentId)>1 ORDER BY t.TicketId;

-- Q18: Carga programada por tripulante
SELECT e.EmployeeId,p.FullName,e.RoleCode,COUNT(f.FlightId) Flights,COALESCE(SUM(DATEDIFF(minute,f.DepartureUtc,f.ArrivalUtc)),0) ScheduledMinutes
FROM air.Employee e JOIN air.Person p ON p.PersonId=e.PersonId LEFT JOIN air.CrewAssignment c ON c.EmployeeId=e.EmployeeId
LEFT JOIN air.Flight f ON f.FlightId=c.FlightId AND f.FlightDate>=@Start AND f.FlightDate<@End AND f.Status<>'CANCELLED'
GROUP BY e.EmployeeId,p.FullName,e.RoleCode ORDER BY e.EmployeeId;
