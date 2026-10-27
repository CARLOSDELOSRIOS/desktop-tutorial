SELECT c.ChannelId,c.Name,c.Kind,COUNT(t.TicketId) Tickets,COALESCE(SUM(t.NetSales),0) NetSales,COALESCE(SUM(t.NetCash),0) NetCash
FROM air.SalesChannel c LEFT JOIN air.vTicketFinance t ON t.ChannelId=c.ChannelId AND t.SoldAt>=@Start AND t.SoldAt<@End
GROUP BY c.ChannelId,c.Name,c.Kind ORDER BY c.ChannelId;
