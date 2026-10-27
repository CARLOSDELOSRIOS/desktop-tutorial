SELECT e.EmployeeId,p.FullName,e.RoleCode,COUNT(f.FlightId) Flights,COALESCE(SUM(DATEDIFF(minute,f.DepartureUtc,f.ArrivalUtc)),0) ScheduledMinutes
FROM air.Employee e JOIN air.Person p ON p.PersonId=e.PersonId LEFT JOIN air.CrewAssignment c ON c.EmployeeId=e.EmployeeId
LEFT JOIN air.Flight f ON f.FlightId=c.FlightId AND f.FlightDate>=@Start AND f.FlightDate<@End AND f.Status<>'CANCELLED'
GROUP BY e.EmployeeId,p.FullName,e.RoleCode ORDER BY e.EmployeeId;
