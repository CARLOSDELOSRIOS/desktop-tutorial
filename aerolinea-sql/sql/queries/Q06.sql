SELECT TicketId,Collected,Refunded,NetCash FROM air.vTicketFinance
WHERE SoldAt>=@Start AND SoldAt<@End AND Status='CANCELLED' ORDER BY TicketId;
