SELECT CAST(SoldAt AS date) SaleDayUtc,COUNT(*) Tickets,SUM(FinalPrice) GrossIssued FROM air.Ticket
WHERE SoldAt>=@Start AND SoldAt<@End GROUP BY CAST(SoldAt AS date) ORDER BY SaleDayUtc;
