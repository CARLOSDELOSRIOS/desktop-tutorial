-- Un asiento activo por vuelo; los cancelados conservan historial y liberan plaza.
CREATE UNIQUE INDEX UX_Ticket_ActiveSeat ON air.Ticket(FlightId,SeatNo) WHERE Status<>'CANCELLED';
CREATE INDEX IX_Ticket_Flight ON air.Ticket(FlightId,Status) INCLUDE (CabinCode,FinalPrice);
CREATE INDEX IX_Payment_Ticket ON air.Payment(TicketId,Status) INCLUDE (Amount);
CREATE INDEX IX_Fare_Validity ON air.Fare(RouteId,CabinCode,ValidFrom,ValidTo) INCLUDE (Price);
CREATE INDEX IX_Flight_AircraftTime ON air.Flight(AircraftId,DepartureUtc,ArrivalUtc) INCLUDE (Status);
CREATE INDEX IX_Crew_Employee ON air.CrewAssignment(EmployeeId,FlightId);
CREATE INDEX IX_Ticket_Sold ON air.Ticket(SoldAt) INCLUDE (ChannelId,Status,FinalPrice);
GO
