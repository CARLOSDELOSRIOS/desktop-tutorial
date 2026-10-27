SELECT s.RouteId,COUNT(*) Issued,SUM(CASE WHEN t.Status='CANCELLED' THEN 1 ELSE 0 END) Cancelled,
CAST(100.0*SUM(CASE WHEN t.Status='CANCELLED' THEN 1 ELSE 0 END)/COUNT(*) AS decimal(6,2)) CancellationPercent
FROM air.Ticket t JOIN air.Flight f ON f.FlightId=t.FlightId JOIN air.Schedule s ON s.ScheduleId=f.ScheduleId
WHERE t.SoldAt>=@Start AND t.SoldAt<@End GROUP BY s.RouteId ORDER BY s.RouteId;
