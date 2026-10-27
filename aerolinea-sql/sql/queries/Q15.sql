SELECT COALESCE(SUM(NetSales-NetCash-Outstanding),0) BalanceDifference,
COALESCE(SUM(Collected),0)-(SELECT COALESCE(SUM(p.Amount),0) FROM air.Payment p JOIN air.Ticket t ON t.TicketId=p.TicketId WHERE p.Status='CONFIRMED' AND t.SoldAt>=@Start AND t.SoldAt<@End) CollectedDifference
FROM air.vTicketFinance WHERE SoldAt>=@Start AND SoldAt<@End;
