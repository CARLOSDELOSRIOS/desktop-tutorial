SELECT COUNT_BIG(*) Tickets,COALESCE(SUM(FinalPrice),0) GrossIssued,COALESCE(SUM(NetSales),0) NetSales,
COALESCE(SUM(Collected),0) Collected,COALESCE(SUM(Refunded),0) Refunded,COALESCE(SUM(NetCash),0) NetCash,COALESCE(SUM(Outstanding),0) Outstanding
FROM air.vTicketFinance WHERE SoldAt>=@Start AND SoldAt<@End;
