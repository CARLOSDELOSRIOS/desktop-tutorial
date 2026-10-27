-- Resultado: una fila por regla. Cero significa ausencia de violaciones observadas.
SELECT 'A01_orphan_ticket' RuleName,COUNT_BIG(*) Violations FROM air.Ticket t LEFT JOIN air.FlightSeat s ON s.FlightId=t.FlightId AND s.SeatNo=t.SeatNo AND s.CabinCode=t.CabinCode WHERE s.FlightId IS NULL
UNION ALL SELECT 'A02_duplicate_active_seat',COUNT_BIG(*) FROM (SELECT FlightId,SeatNo FROM air.Ticket WHERE Status<>'CANCELLED' GROUP BY FlightId,SeatNo HAVING COUNT(*)>1) d
UNION ALL SELECT 'A03_oversold_cabin',COUNT_BIG(*) FROM air.vOccupancy WHERE Reserved>Capacity
UNION ALL SELECT 'A04_overcollection',COUNT_BIG(*) FROM air.vTicketFinance WHERE Collected>FinalPrice
UNION ALL SELECT 'A05_cancel_refund_balance',COUNT_BIG(*) FROM air.vTicketFinance WHERE Status='CANCELLED' AND NetCash<>0
UNION ALL SELECT 'A06_refund_invalid',COUNT_BIG(*) FROM air.Refund r JOIN air.Payment p ON p.PaymentId=r.PaymentId JOIN air.Ticket t ON t.TicketId=p.TicketId WHERE p.Status<>'CONFIRMED' OR r.Amount<>p.Amount OR t.Status<>'CANCELLED' OR r.RefundedAt<p.PaidAt
UNION ALL SELECT 'A07_financial_balance',COUNT_BIG(*) FROM air.vTicketFinance WHERE NetSales<>NetCash+Outstanding
UNION ALL SELECT 'A08_ticket_payment_state',COUNT_BIG(*) FROM air.vTicketFinance WHERE (Status='PAID' AND Collected<>FinalPrice) OR (Status='PARTIAL' AND (Collected<=0 OR Collected>=FinalPrice)) OR (Status='HELD' AND Collected<>0)
UNION ALL SELECT 'A09_time_payment',COUNT_BIG(*) FROM air.Payment p JOIN air.Ticket t ON t.TicketId=p.TicketId JOIN air.Flight f ON f.FlightId=t.FlightId WHERE p.PaidAt<t.SoldAt OR p.PaidAt>=f.DepartureUtc
UNION ALL SELECT 'A10_time_sale',COUNT_BIG(*) FROM air.Ticket t JOIN air.Flight f ON f.FlightId=t.FlightId WHERE t.SoldAt>=f.DepartureUtc
UNION ALL SELECT 'A11_aircraft_overlap',COUNT_BIG(*) FROM air.Flight a JOIN air.Flight b ON a.FlightId<b.FlightId AND a.AircraftId=b.AircraftId WHERE a.Status<>'CANCELLED' AND b.Status<>'CANCELLED' AND a.DepartureUtc<DATEADD(minute,45,b.ArrivalUtc) AND DATEADD(minute,45,a.ArrivalUtc)>b.DepartureUtc
UNION ALL SELECT 'A12_crew_overlap',COUNT_BIG(*) FROM air.CrewAssignment a JOIN air.CrewAssignment b ON a.EmployeeId=b.EmployeeId AND a.FlightId<b.FlightId JOIN air.Flight f ON f.FlightId=a.FlightId JOIN air.Flight g ON g.FlightId=b.FlightId WHERE f.Status<>'CANCELLED' AND g.Status<>'CANCELLED' AND f.DepartureUtc<DATEADD(minute,45,g.ArrivalUtc) AND DATEADD(minute,45,f.ArrivalUtc)>g.DepartureUtc
UNION ALL SELECT 'A13_fare_overlap',COUNT_BIG(*) FROM air.Fare a JOIN air.Fare b ON a.FareId<b.FareId AND a.RouteId=b.RouteId AND a.CabinCode=b.CabinCode AND a.ValidFrom<b.ValidTo AND a.ValidTo>b.ValidFrom
UNION ALL SELECT 'A14_seat_inventory',COUNT_BIG(*) FROM air.Flight f WHERE (SELECT COUNT(*) FROM air.FlightSeat s WHERE s.FlightId=f.FlightId)<>(SELECT COUNT(*) FROM air.AircraftSeat a WHERE a.AircraftId=f.AircraftId)
UNION ALL SELECT 'A15_flight_pattern',COUNT_BIG(*) FROM air.Flight f JOIN air.Schedule s ON s.ScheduleId=f.ScheduleId WHERE f.FlightDate<s.ValidFrom OR f.FlightDate>=s.ValidTo OR ((DATEDIFF(day,'19000101',f.FlightDate)%7+7)%7)+1<>s.IsoWeekday OR DATEDIFF(minute,f.DepartureUtc,f.ArrivalUtc)<>s.DurationMinutes
UNION ALL SELECT 'A16_canceled_flight_tickets',COUNT_BIG(*) FROM air.Flight f JOIN air.Ticket t ON t.FlightId=f.FlightId WHERE f.Status='CANCELLED' AND t.Status<>'CANCELLED'
UNION ALL SELECT 'A17_fare_ticket_match',COUNT_BIG(*) FROM air.Ticket t JOIN air.Fare fare ON fare.FareId=t.FareId JOIN air.Flight f ON f.FlightId=t.FlightId JOIN air.Schedule s ON s.ScheduleId=f.ScheduleId WHERE t.CabinCode<>fare.CabinCode OR s.RouteId<>fare.RouteId OR t.SoldAt<fare.ValidFrom OR t.SoldAt>=fare.ValidTo
UNION ALL SELECT 'A18_disabled_constraints',COUNT_BIG(*) FROM sys.foreign_keys WHERE is_disabled=1 OR is_not_trusted=1
UNION ALL SELECT 'A19_disabled_checks',COUNT_BIG(*) FROM sys.check_constraints WHERE is_disabled=1 OR is_not_trusted=1;
