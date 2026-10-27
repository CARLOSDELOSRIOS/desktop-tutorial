WITH movements AS (
SELECT CAST(PaidAt AS date) DayUtc,Amount Collected,CAST(0 AS decimal(12,2)) Refunded FROM air.Payment WHERE Status='CONFIRMED' AND PaidAt>=@Start AND PaidAt<@End
UNION ALL SELECT CAST(RefundedAt AS date),0,Amount FROM air.Refund WHERE RefundedAt>=@Start AND RefundedAt<@End)
SELECT DayUtc,SUM(Collected) Collected,SUM(Refunded) Refunded,SUM(Collected-Refunded) NetCash FROM movements GROUP BY DayUtc ORDER BY DayUtc;
