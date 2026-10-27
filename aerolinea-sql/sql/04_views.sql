-- Cada agregado financiero se reduce a una fila por tiquete ANTES del JOIN.
CREATE OR ALTER VIEW air.vTicketFinance AS
WITH p AS (SELECT TicketId,SUM(CASE WHEN Status='CONFIRMED' THEN Amount ELSE 0 END) AS Collected FROM air.Payment GROUP BY TicketId),
r AS (SELECT p.TicketId,SUM(r.Amount) AS Refunded FROM air.Payment p JOIN air.Refund r ON r.PaymentId=p.PaymentId GROUP BY p.TicketId)
SELECT t.*,COALESCE(p.Collected,CONVERT(decimal(12,2),0)) AS Collected,
 COALESCE(r.Refunded,CONVERT(decimal(12,2),0)) AS Refunded,
 COALESCE(p.Collected,0)-COALESCE(r.Refunded,0) AS NetCash,
 CASE WHEN t.Status='CANCELLED' THEN CONVERT(decimal(12,2),0) ELSE t.FinalPrice END AS NetSales,
 CASE WHEN t.Status='CANCELLED' THEN CONVERT(decimal(12,2),0) ELSE t.FinalPrice-COALESCE(p.Collected,0) END AS Outstanding
FROM air.Ticket t LEFT JOIN p ON p.TicketId=t.TicketId LEFT JOIN r ON r.TicketId=t.TicketId;
GO
CREATE OR ALTER VIEW air.vOccupancy AS
WITH cap AS (SELECT FlightId,CabinCode,COUNT(*) AS Capacity FROM air.FlightSeat GROUP BY FlightId,CabinCode),
used AS (SELECT FlightId,CabinCode,COUNT(*) AS Reserved,SUM(CASE WHEN Status='PAID' THEN 1 ELSE 0 END) AS PaidSeats FROM air.Ticket WHERE Status<>'CANCELLED' GROUP BY FlightId,CabinCode)
SELECT f.FlightId,s.RouteId,f.FlightDate,f.DepartureUtc,f.ArrivalUtc,f.Status,c.CabinCode,c.Capacity,
 COALESCE(u.Reserved,0) AS Reserved,COALESCE(u.PaidSeats,0) AS PaidSeats,
 c.Capacity-COALESCE(u.Reserved,0) AS Available,
 CONVERT(decimal(6,2),100.0*COALESCE(u.Reserved,0)/NULLIF(c.Capacity,0)) AS OccupancyPercent
FROM air.Flight f JOIN air.Schedule s ON s.ScheduleId=f.ScheduleId JOIN cap c ON c.FlightId=f.FlightId LEFT JOIN used u ON u.FlightId=c.FlightId AND u.CabinCode=c.CabinCode;
GO
CREATE OR ALTER VIEW air.vFlightLocal AS
SELECT f.*,r.RouteId,r.OriginCode,r.DestinationCode,
 (f.DepartureUtc AT TIME ZONE 'UTC') AT TIME ZONE o.WindowsTZ AS DepartureLocal,
 (f.ArrivalUtc AT TIME ZONE 'UTC') AT TIME ZONE d.WindowsTZ AS ArrivalLocal
FROM air.Flight f JOIN air.Schedule s ON s.ScheduleId=f.ScheduleId JOIN air.Route r ON r.RouteId=s.RouteId
JOIN air.Airport o ON o.AirportCode=r.OriginCode JOIN air.Airport d ON d.AirportCode=r.DestinationCode;
GO
