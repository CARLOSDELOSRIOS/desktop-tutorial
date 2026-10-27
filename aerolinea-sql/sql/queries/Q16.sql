SELECT FlightId,OriginCode,DestinationCode,DepartureLocal,ArrivalLocal,DATEDIFF(minute,DepartureUtc,ArrivalUtc) DurationMinutes
FROM air.vFlightLocal WHERE FlightDate>=@Start AND FlightDate<@End AND CAST(ArrivalLocal AS date)>CAST(DepartureLocal AS date) ORDER BY FlightId;
