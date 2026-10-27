SELECT a.AircraftId,a.Registration,COUNT(f.FlightId) Flights,COALESCE(SUM(DATEDIFF(minute,f.DepartureUtc,f.ArrivalUtc)),0) ScheduledMinutes,
CAST(100.0*COALESCE(SUM(DATEDIFF(minute,f.DepartureUtc,f.ArrivalUtc)),0)/NULLIF(DATEDIFF(day,@Start,@End)*1440.0,0) AS decimal(7,3)) CalendarUtilizationPercent
FROM air.Aircraft a LEFT JOIN air.Flight f ON f.AircraftId=a.AircraftId AND f.FlightDate>=@Start AND f.FlightDate<@End AND f.Status<>'CANCELLED'
GROUP BY a.AircraftId,a.Registration ORDER BY a.AircraftId;
