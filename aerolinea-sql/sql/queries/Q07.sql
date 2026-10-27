SELECT CabinCode,COUNT(*) Tickets,AVG(OriginalPrice) MeanOriginal,AVG(FinalPrice) MeanFinal,
CAST(100.0*SUM(OriginalPrice-FinalPrice)/NULLIF(SUM(OriginalPrice),0) AS decimal(6,2)) EffectiveDiscountPercent
FROM air.Ticket WHERE SoldAt>=@Start AND SoldAt<@End AND Status<>'CANCELLED' GROUP BY CabinCode ORDER BY CabinCode;
