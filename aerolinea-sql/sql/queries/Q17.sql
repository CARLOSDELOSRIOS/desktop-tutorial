SELECT t.TicketId,COUNT(p.PaymentId) Attempts,SUM(CASE WHEN p.Status='CONFIRMED' THEN 1 ELSE 0 END) ConfirmedCount,
SUM(CASE WHEN p.Status='CONFIRMED' THEN p.Amount ELSE 0 END) Collected
FROM air.Ticket t JOIN air.Payment p ON p.TicketId=t.TicketId WHERE t.SoldAt>=@Start AND t.SoldAt<@End GROUP BY t.TicketId HAVING COUNT(p.PaymentId)>1 ORDER BY t.TicketId;
