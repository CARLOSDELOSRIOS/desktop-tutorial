SELECT RouteId,CabinCode,SUM(Capacity) Capacity,SUM(Reserved) Reserved,
CAST(100.0*SUM(Reserved)/NULLIF(SUM(Capacity),0) AS decimal(6,2)) OccupancyPercent
FROM air.vOccupancy WHERE FlightDate>=@Start AND FlightDate<@End AND Status<>'CANCELLED'
GROUP BY RouteId,CabinCode ORDER BY RouteId,CabinCode;
