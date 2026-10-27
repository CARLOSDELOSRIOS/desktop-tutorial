# Catálogo de consultas

Cada archivo Qxx se ejecuta desde Python con `@Start` y `@End` parametrizados. Intervalos semiabiertos. Estado actual de la carga, sin inferir resultados no observados.


## Q01. Ocupación por vuelo y cabina

Pregunta y utilidad: Ocupación por vuelo y cabina. Compara ocupación reservada y pagada; no equivale a pasajeros efectivamente transportados.

Granularidad: vuelo × cabina. Filtros: FlightDate en [Start,End); excluye vuelos cancelados.

Fórmula: 100 × plazas reservadas activas / plazas ofrecidas.

```sql

SELECT FlightId,RouteId,FlightDate,CabinCode,Capacity,Reserved,PaidSeats,Available,OccupancyPercent
FROM air.vOccupancy WHERE FlightDate>=@Start AND FlightDate<@End AND Status<>'CANCELLED' ORDER BY FlightId,CabinCode;

```

Resultado ejecutado: PENDIENTE: requiere motor SQL Server; no existe resultado observado. Al ejecutar, se guarda en `reports/local/Q01.csv` o `reports/azure/Q01.csv` y su interpretación se completa en el resumen generado.


## Q02. Ocupación ponderada por ruta y cabina

Pregunta y utilidad: Ocupación ponderada por ruta y cabina. Ponderar por capacidad evita promediar porcentajes de vuelos con denominadores distintos.

Granularidad: ruta × cabina. Filtros: FlightDate; excluye cancelados.

Fórmula: 100 × SUM(Reserved) / SUM(Capacity).

```sql

SELECT RouteId,CabinCode,SUM(Capacity) Capacity,SUM(Reserved) Reserved,
CAST(100.0*SUM(Reserved)/NULLIF(SUM(Capacity),0) AS decimal(6,2)) OccupancyPercent
FROM air.vOccupancy WHERE FlightDate>=@Start AND FlightDate<@End AND Status<>'CANCELLED'
GROUP BY RouteId,CabinCode ORDER BY RouteId,CabinCode;

```

Resultado ejecutado: PENDIENTE: requiere motor SQL Server; no existe resultado observado. Al ejecutar, se guarda en `reports/local/Q02.csv` o `reports/azure/Q02.csv` y su interpretación se completa en el resumen generado.


## Q03. Ventas comerciales y cobros de la cohorte

Pregunta y utilidad: Ventas comerciales y cobros de la cohorte. Ventas netas son contratos vigentes; no son ingreso contable devengado ni utilidad.

Granularidad: cohorte de fecha de venta. Filtros: SoldAt en [Start,End); estado actual cargado.

Fórmula: emitido bruto, neto de cancelación, cobrado y reembolsado se agregan por tiquete.

```sql

SELECT COUNT_BIG(*) Tickets,COALESCE(SUM(FinalPrice),0) GrossIssued,COALESCE(SUM(NetSales),0) NetSales,
COALESCE(SUM(Collected),0) Collected,COALESCE(SUM(Refunded),0) Refunded,COALESCE(SUM(NetCash),0) NetCash,COALESCE(SUM(Outstanding),0) Outstanding
FROM air.vTicketFinance WHERE SoldAt>=@Start AND SoldAt<@End;

```

Resultado ejecutado: PENDIENTE: requiere motor SQL Server; no existe resultado observado. Al ejecutar, se guarda en `reports/local/Q03.csv` o `reports/azure/Q03.csv` y su interpretación se completa en el resumen generado.


## Q04. Flujo de caja por fecha de movimiento

Pregunta y utilidad: Flujo de caja por fecha de movimiento. Los movimientos de caja y las cohortes de venta tienen calendarios distintos.

Granularidad: día UTC de pago o reembolso. Filtros: PaidAt y RefundedAt en [Start,End).

Fórmula: cobros confirmados − reembolsos.

```sql

WITH movements AS (
SELECT CAST(PaidAt AS date) DayUtc,Amount Collected,CAST(0 AS decimal(12,2)) Refunded FROM air.Payment WHERE Status='CONFIRMED' AND PaidAt>=@Start AND PaidAt<@End
UNION ALL SELECT CAST(RefundedAt AS date),0,Amount FROM air.Refund WHERE RefundedAt>=@Start AND RefundedAt<@End)
SELECT DayUtc,SUM(Collected) Collected,SUM(Refunded) Refunded,SUM(Collected-Refunded) NetCash FROM movements GROUP BY DayUtc ORDER BY DayUtc;

```

Resultado ejecutado: PENDIENTE: requiere motor SQL Server; no existe resultado observado. Al ejecutar, se guarda en `reports/local/Q04.csv` o `reports/azure/Q04.csv` y su interpretación se completa en el resumen generado.


## Q05. Tiquetes con saldo pendiente

Pregunta y utilidad: Tiquetes con saldo pendiente. Prioriza cobros pendientes; el saldo es el estado actual, sin reconstrucción histórica al corte.

Granularidad: tiquete. Filtros: SoldAt y Outstanding>0.

Fórmula: FinalPrice − cobros confirmados, cero si cancelado.

```sql

SELECT TicketId,FlightId,Status,FinalPrice,Collected,Outstanding FROM air.vTicketFinance
WHERE SoldAt>=@Start AND SoldAt<@End AND Outstanding>0 ORDER BY Outstanding DESC,TicketId;

```

Resultado ejecutado: PENDIENTE: requiere motor SQL Server; no existe resultado observado. Al ejecutar, se guarda en `reports/local/Q05.csv` o `reports/azure/Q05.csv` y su interpretación se completa en el resumen generado.


## Q06. Conciliación de reembolsos

Pregunta y utilidad: Conciliación de reembolsos. Un pago fallido no se devuelve. Un valor distinto de cero es una inconsistencia.

Granularidad: tiquete cancelado. Filtros: SoldAt y estado CANCELLED.

Fórmula: Collected − Refunded debe ser cero.

```sql

SELECT TicketId,Collected,Refunded,NetCash FROM air.vTicketFinance
WHERE SoldAt>=@Start AND SoldAt<@End AND Status='CANCELLED' ORDER BY TicketId;

```

Resultado ejecutado: PENDIENTE: requiere motor SQL Server; no existe resultado observado. Al ejecutar, se guarda en `reports/local/Q06.csv` o `reports/azure/Q06.csv` y su interpretación se completa en el resumen generado.


## Q07. Precio medio y descuento efectivo

Pregunta y utilidad: Precio medio y descuento efectivo. El descuento efectivo se pondera por importe, no por promedio simple de porcentajes.

Granularidad: cabina. Filtros: SoldAt; tiquetes no cancelados.

Fórmula: AVG(FinalPrice); 100 × SUM(OriginalPrice−FinalPrice)/SUM(OriginalPrice).

```sql

SELECT CabinCode,COUNT(*) Tickets,AVG(OriginalPrice) MeanOriginal,AVG(FinalPrice) MeanFinal,
CAST(100.0*SUM(OriginalPrice-FinalPrice)/NULLIF(SUM(OriginalPrice),0) AS decimal(6,2)) EffectiveDiscountPercent
FROM air.Ticket WHERE SoldAt>=@Start AND SoldAt<@End AND Status<>'CANCELLED' GROUP BY CabinCode ORDER BY CabinCode;

```

Resultado ejecutado: PENDIENTE: requiere motor SQL Server; no existe resultado observado. Al ejecutar, se guarda en `reports/local/Q07.csv` o `reports/azure/Q07.csv` y su interpretación se completa en el resumen generado.


## Q08. Ventas por canal, incluidos canales sin venta

Pregunta y utilidad: Ventas por canal, incluidos canales sin venta. Los canales sin actividad aparecen con cero; no se interpreta ausencia de datos como información desconocida.

Granularidad: canal. Filtros: SoldAt en condición del LEFT JOIN.

Fórmula: SUM de importes por tiquete.

```sql

SELECT c.ChannelId,c.Name,c.Kind,COUNT(t.TicketId) Tickets,COALESCE(SUM(t.NetSales),0) NetSales,COALESCE(SUM(t.NetCash),0) NetCash
FROM air.SalesChannel c LEFT JOIN air.vTicketFinance t ON t.ChannelId=c.ChannelId AND t.SoldAt>=@Start AND t.SoldAt<@End
GROUP BY c.ChannelId,c.Name,c.Kind ORDER BY c.ChannelId;

```

Resultado ejecutado: PENDIENTE: requiere motor SQL Server; no existe resultado observado. Al ejecutar, se guarda en `reports/local/Q08.csv` o `reports/azure/Q08.csv` y su interpretación se completa en el resumen generado.


## Q09. Viajes según inscripción del pasajero al vender

Pregunta y utilidad: Viajes según inscripción del pasajero al vender. Se cuentan tiquetes, no personas únicas; comprador y pasajero son roles distintos.

Granularidad: inscrito o sin registro al vender. Filtros: SoldAt; tiquetes activos.

Fórmula: Customer.RegisteredAt <= SoldAt.

```sql

SELECT CASE WHEN c.PersonId IS NOT NULL AND c.RegisteredAt<=t.SoldAt THEN 'REGISTERED' ELSE 'UNREGISTERED' END Registration,
COUNT(*) Tickets,COUNT(DISTINCT t.PassengerId) DistinctPassengers FROM air.Ticket t LEFT JOIN air.Customer c ON c.PersonId=t.PassengerId
WHERE t.SoldAt>=@Start AND t.SoldAt<@End AND t.Status<>'CANCELLED'
GROUP BY CASE WHEN c.PersonId IS NOT NULL AND c.RegisteredAt<=t.SoldAt THEN 'REGISTERED' ELSE 'UNREGISTERED' END;

```

Resultado ejecutado: PENDIENTE: requiere motor SQL Server; no existe resultado observado. Al ejecutar, se guarda en `reports/local/Q09.csv` o `reports/azure/Q09.csv` y su interpretación se completa en el resumen generado.


## Q10. Cancelaciones por ruta

Pregunta y utilidad: Cancelaciones por ruta. La tasa descriptiva sintetiza las políticas sintéticas; no explica causas del mercado.

Granularidad: ruta. Filtros: SoldAt de la cohorte.

Fórmula: 100 × cancelados / emitidos.

```sql

SELECT s.RouteId,COUNT(*) Issued,SUM(CASE WHEN t.Status='CANCELLED' THEN 1 ELSE 0 END) Cancelled,
CAST(100.0*SUM(CASE WHEN t.Status='CANCELLED' THEN 1 ELSE 0 END)/COUNT(*) AS decimal(6,2)) CancellationPercent
FROM air.Ticket t JOIN air.Flight f ON f.FlightId=t.FlightId JOIN air.Schedule s ON s.ScheduleId=f.ScheduleId
WHERE t.SoldAt>=@Start AND t.SoldAt<@End GROUP BY s.RouteId ORDER BY s.RouteId;

```

Resultado ejecutado: PENDIENTE: requiere motor SQL Server; no existe resultado observado. Al ejecutar, se guarda en `reports/local/Q10.csv` o `reports/azure/Q10.csv` y su interpretación se completa en el resumen generado.


## Q11. Utilización programada de flota

Pregunta y utilidad: Utilización programada de flota. No incluye mantenimiento ni disponibilidad técnica; no representa utilización real observada.

Granularidad: avión. Filtros: FlightDate; excluye cancelados; incluye aviones ociosos.

Fórmula: minutos de vuelo programados / (días del intervalo × 1440).

```sql

SELECT a.AircraftId,a.Registration,COUNT(f.FlightId) Flights,COALESCE(SUM(DATEDIFF(minute,f.DepartureUtc,f.ArrivalUtc)),0) ScheduledMinutes,
CAST(100.0*COALESCE(SUM(DATEDIFF(minute,f.DepartureUtc,f.ArrivalUtc)),0)/NULLIF(DATEDIFF(day,@Start,@End)*1440.0,0) AS decimal(7,3)) CalendarUtilizationPercent
FROM air.Aircraft a LEFT JOIN air.Flight f ON f.AircraftId=a.AircraftId AND f.FlightDate>=@Start AND f.FlightDate<@End AND f.Status<>'CANCELLED'
GROUP BY a.AircraftId,a.Registration ORDER BY a.AircraftId;

```

Resultado ejecutado: PENDIENTE: requiere motor SQL Server; no existe resultado observado. Al ejecutar, se guarda en `reports/local/Q11.csv` o `reports/azure/Q11.csv` y su interpretación se completa en el resumen generado.


## Q12. Distribución temporal de compras

Pregunta y utilidad: Distribución temporal de compras. La semilla impone los patrones. Una serie de ventas no es una estimación del mercado.

Granularidad: día UTC. Filtros: SoldAt.

Fórmula: número de tiquetes por fecha de compra.

```sql

SELECT CAST(SoldAt AS date) SaleDayUtc,COUNT(*) Tickets,SUM(FinalPrice) GrossIssued FROM air.Ticket
WHERE SoldAt>=@Start AND SoldAt<@End GROUP BY CAST(SoldAt AS date) ORDER BY SaleDayUtc;

```

Resultado ejecutado: PENDIENTE: requiere motor SQL Server; no existe resultado observado. Al ejecutar, se guarda en `reports/local/Q12.csv` o `reports/azure/Q12.csv` y su interpretación se completa en el resumen generado.


## Q13. Acumulado de ventas comerciales netas

Pregunta y utilidad: Acumulado de ventas comerciales netas. Se acumula la cohorte según el estado final cargado; no es un libro mayor histórico diario.

Granularidad: día UTC de compra. Filtros: SoldAt; estado actual.

Fórmula: SUM diario seguida de SUM OVER ordenado.

```sql

WITH daily AS (SELECT CAST(SoldAt AS date) SaleDayUtc,SUM(NetSales) NetSales FROM air.vTicketFinance
WHERE SoldAt>=@Start AND SoldAt<@End GROUP BY CAST(SoldAt AS date))
SELECT SaleDayUtc,NetSales,SUM(NetSales) OVER(ORDER BY SaleDayUtc ROWS UNBOUNDED PRECEDING) CumulativeNetSales FROM daily ORDER BY SaleDayUtc;

```

Resultado ejecutado: PENDIENTE: requiere motor SQL Server; no existe resultado observado. Al ejecutar, se guarda en `reports/local/Q13.csv` o `reports/azure/Q13.csv` y su interpretación se completa en el resumen generado.


## Q14. Rutas con ocupación reservada superior al 50 %

Pregunta y utilidad: Rutas con ocupación reservada superior al 50 %. El umbral del 50 % es exploratorio, sin significado de rentabilidad.

Granularidad: ruta. Filtros: FlightDate; excluye cancelados.

Fórmula: HAVING SUM(Reserved) > 0.5 × SUM(Capacity).

```sql

SELECT RouteId,SUM(Reserved) Reserved,SUM(Capacity) Capacity FROM air.vOccupancy
WHERE FlightDate>=@Start AND FlightDate<@End AND Status<>'CANCELLED' GROUP BY RouteId HAVING SUM(Reserved)>0.5*SUM(Capacity) ORDER BY RouteId;

```

Resultado ejecutado: PENDIENTE: requiere motor SQL Server; no existe resultado observado. Al ejecutar, se guarda en `reports/local/Q14.csv` o `reports/azure/Q14.csv` y su interpretación se completa en el resumen generado.


## Q15. Conciliación global de importes sin multiplicación

Pregunta y utilidad: Conciliación global de importes sin multiplicación. Compara la vista con la suma independiente de pagos; dos pagos por tiquete no duplican la venta.

Granularidad: cohorte de tiquetes. Filtros: SoldAt.

Fórmula: NetSales − NetCash − Outstanding = 0.

```sql

SELECT COALESCE(SUM(NetSales-NetCash-Outstanding),0) BalanceDifference,
COALESCE(SUM(Collected),0)-(SELECT COALESCE(SUM(p.Amount),0) FROM air.Payment p JOIN air.Ticket t ON t.TicketId=p.TicketId WHERE p.Status='CONFIRMED' AND t.SoldAt>=@Start AND t.SoldAt<@End) CollectedDifference
FROM air.vTicketFinance WHERE SoldAt>=@Start AND SoldAt<@End;

```

Resultado ejecutado: PENDIENTE: requiere motor SQL Server; no existe resultado observado. Al ejecutar, se guarda en `reports/local/Q15.csv` o `reports/azure/Q15.csv` y su interpretación se completa en el resumen generado.


## Q16. Llegadas en un día local posterior

Pregunta y utilidad: Llegadas en un día local posterior. La duración siempre se calcula en UTC; la fecha local puede cambiar al cruzar husos.

Granularidad: vuelo. Filtros: FlightDate; llegada local de fecha mayor que salida local.

Fórmula: comparar fechas de datetimeoffset en zona de cada aeropuerto.

```sql

SELECT FlightId,OriginCode,DestinationCode,DepartureLocal,ArrivalLocal,DATEDIFF(minute,DepartureUtc,ArrivalUtc) DurationMinutes
FROM air.vFlightLocal WHERE FlightDate>=@Start AND FlightDate<@End AND CAST(ArrivalLocal AS date)>CAST(DepartureLocal AS date) ORDER BY FlightId;

```

Resultado ejecutado: PENDIENTE: requiere motor SQL Server; no existe resultado observado. Al ejecutar, se guarda en `reports/local/Q16.csv` o `reports/azure/Q16.csv` y su interpretación se completa en el resumen generado.


## Q17. Múltiples intentos y pagos por tiquete

Pregunta y utilidad: Múltiples intentos y pagos por tiquete. La presencia de múltiples intentos no significa cobro duplicado; se diferencian fallidos y confirmados.

Granularidad: tiquete con más de un intento. Filtros: SoldAt.

Fórmula: COUNT de pagos y SUM condicional de confirmados.

```sql

SELECT t.TicketId,COUNT(p.PaymentId) Attempts,SUM(CASE WHEN p.Status='CONFIRMED' THEN 1 ELSE 0 END) ConfirmedCount,
SUM(CASE WHEN p.Status='CONFIRMED' THEN p.Amount ELSE 0 END) Collected
FROM air.Ticket t JOIN air.Payment p ON p.TicketId=t.TicketId WHERE t.SoldAt>=@Start AND t.SoldAt<@End GROUP BY t.TicketId HAVING COUNT(p.PaymentId)>1 ORDER BY t.TicketId;

```

Resultado ejecutado: PENDIENTE: requiere motor SQL Server; no existe resultado observado. Al ejecutar, se guarda en `reports/local/Q17.csv` o `reports/azure/Q17.csv` y su interpretación se completa en el resumen generado.


## Q18. Carga programada por tripulante

Pregunta y utilidad: Carga programada por tripulante. La carga no certifica cumplimiento laboral o aeronáutico; se modela solo la no superposición.

Granularidad: empleado. Filtros: FlightDate; excluye cancelados.

Fórmula: suma de minutos de vuelos asignados.

```sql

SELECT e.EmployeeId,p.FullName,e.RoleCode,COUNT(f.FlightId) Flights,COALESCE(SUM(DATEDIFF(minute,f.DepartureUtc,f.ArrivalUtc)),0) ScheduledMinutes
FROM air.Employee e JOIN air.Person p ON p.PersonId=e.PersonId LEFT JOIN air.CrewAssignment c ON c.EmployeeId=e.EmployeeId
LEFT JOIN air.Flight f ON f.FlightId=c.FlightId AND f.FlightDate>=@Start AND f.FlightDate<@End AND f.Status<>'CANCELLED'
GROUP BY e.EmployeeId,p.FullName,e.RoleCode ORDER BY e.EmployeeId;

```

Resultado ejecutado: PENDIENTE: requiere motor SQL Server; no existe resultado observado. Al ejecutar, se guarda en `reports/local/Q18.csv` o `reports/azure/Q18.csv` y su interpretación se completa en el resumen generado.
