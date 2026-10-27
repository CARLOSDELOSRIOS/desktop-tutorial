SELECT RouteId,SUM(Reserved) Reserved,SUM(Capacity) Capacity FROM air.vOccupancy
WHERE FlightDate>=@Start AND FlightDate<@End AND Status<>'CANCELLED' GROUP BY RouteId HAVING SUM(Reserved)>0.5*SUM(Capacity) ORDER BY RouteId;
