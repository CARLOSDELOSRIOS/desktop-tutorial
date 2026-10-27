# Requisitos, casos de uso y reglas verificables

## Problema y objetivos

Una aerolínea nueva necesita vender plazas finitas y relacionar personas, vuelos y pagos sin perder historia ni duplicar cobros en los informes. El objetivo general es construir una base relacional con operaciones atómicas y consultas reproducibles para apoyar decisiones descriptivas. Los objetivos específicos son modelar el dominio en tercera forma normal, implementar integridad y concurrencia, integrar Python, verificar invariantes y preparar una ejecución equivalente en Azure SQL Database.

## Actores y casos de uso

|Actor|Caso de uso|Precondición|Resultado / alternativa|
|---|---|---|---|
|Administrador académico|Configurar aeropuertos, flota, asientos, canales y programas|Permisos DDL/DML; base de práctica|Referencias consistentes; no se expone DML de configuración al rol operativo|
|Planificador|Crear vuelo a partir de programación; asignar tripulantes|Día y vigencia válidos; recursos libres|Vuelo con inventario y tripulación; se rechaza solapamiento|
|Agente o portal|Emitir tiquete para pasajero y comprador|Personas existentes; vuelo programado; asiento y tarifa válidos|Reserva HELD con precio histórico; falta de asiento/tarifa produce rollback|
|Comprador registrado o invitado|Comprar y realizar uno o varios pagos|No exige fila Customer; sí identidad Person|Pagos parciales y estado PARTIAL o PAID; fallidos no modifican cobro|
|Agente de atención|Cancelar y devolver cobros|Antes de salida y de estado DEPARTED|CANCELLED, plaza liberada y reembolsos completos contables|
|Operaciones|Cambiar estado de vuelo|Transición y tiempos válidos; tripulación mínima|Eventos de auditoría; no embarca con reservas pendientes|
|Analista|Ejecutar 18 consultas y exportar|Lectura y bloqueo de informe|CSV y figuras verificables, con conciliación|

## Reglas y clasificación

|ID|Regla|Origen|Garantía y evidencia prevista|
|---|---|---|---|
|RN01|Comprador y pasajero son roles Person distintos; inscripción opcional Customer 0..1|Aclaración del requisito documental|FK y pruebas de invitado|
|RN02|Ruta es par de aeropuertos; Schedule contiene día y hora; Flight representa una fecha local concreta|Normalización de rutas exigidas|FK, UQ y usp_CreateFlight|
|RN03|Aeropuerto y punto de venta son entidades diferentes; canal físico tiene dirección y web URL|Interpretación explícita de localizaciones|CHECK del canal y FK opcional a aeropuerto|
|RN04|Capacidad por cabina es COUNT(AircraftSeat); inventario del vuelo conserva esos asientos|Supuesto académico|FK compuestas y carga atómica; auditoría A14|
|RN05|Toda reserva HELD/PARTIAL/PAID ocupa una plaza; cancelados liberan la plaza|Supuesto académico conservador|Índice único filtrado y FK al inventario|
|RN06|Se rechazan asientos ajenos al vuelo y sobreventa; no hay lista de espera ni reasignación de avión|Mejora solicitada y alcance|Índice único, procedimientos, pruebas concurrentes|
|RN07|Una tarifa vigente por ruta/cabina, intervalo [inicio,fin); se usa la fecha de compra UTC|Supuesto académico|usp_AddFare serializa y rechaza superposición; emisión exige exactamente una|
|RN08|Precio original y descuento se copian al vender; precio final decimal persistido|Instrucción actual|Tipos, CHECK y prueba de modificación de referencia dentro de rollback|
|RN09|Máximo un descuento, de 0 a 30 %, sin acumulación; sin impuestos ni tasas adicionales|Supuesto académico, no política real|FK opcional, CHECK y validación de vigencia|
|RN10|USD, decimal(12,2); redondeo a centavos en precio final|Instrucción actual|Columna calculada; Decimal en generación y pruebas|
|RN11|Pagos son intentos definitivos CONFIRMED o FAILED; los fallidos no cuentan y no se reintentan mutando la misma fila|Supuesto académico|CHECK, nuevo RequestKey en nuevo intento y vista financiera|
|RN12|No se admite cobro confirmado mayor que saldo; las claves UUID de emisión/pago hacen idempotentes los reintentos idénticos|Mejora técnica|Bloqueo transaccional, comparación de parámetros y UQ|
|RN13|Cancelación antes de salida: devolución del 100 % de cada pago confirmado, sin penalización ni reembolsos parciales|Supuesto académico|usp_CancelTicket, UQ por pago, transacción y conciliación|
|RN14|Cancelación de vuelo cancela y reembolsa sus tiquetes atómicamente|Mejora solicitada|usp_ChangeFlightStatus y prueba de rollback|
|RN15|Flujo de vuelo: SCHEDULED→BOARDING→DEPARTED→ARRIVED; SCHEDULED/BOARDING→CANCELLED|Supuesto académico|Procedimiento y StatusEvent; terminales sin transición|
|RN16|Flujo de tiquete: HELD→PARTIAL→PAID y cualquiera activo→CANCELLED; se permite HELD→PAID|Supuesto académico|Pago y cancelación controlados; auditoría A08|
|RN17|Venta y pagos antes de salida; cancelación no anterior a venta/último pago; llegada UTC posterior a salida|Instrucción actual y supuesto|CHECK y procedimientos; no se permite cambiar programación después de crear vuelos por el rol operativo|
|RN18|Tiempo UTC en hechos; horarios recurrentes en zona local del origen; zonas IANA en Python y Windows en SQL|Supuesto técnico|AT TIME ZONE, zoneinfo y casos de llegada al día siguiente|
|RN19|Horas inexistentes por cambio estacional se rechazan por conversión de ida y vuelta. Horas repetidas usan el desplazamiento anterior al cambio que selecciona SQL Server|Política explícita|Procedimiento; el generador usa fold=0. Se evita 02:00–03:00 en la muestra; actualizar reglas horarias del SO|
|RN20|Avión y empleado no tienen intervalos solapados, incluyendo 45 minutos de preparación|Supuesto académico|Procedimientos bajo el mismo bloqueo; auditorías A11–A12|
|RN21|Embarque requiere al menos un piloto y un auxiliar, y que reservas activas estén pagadas|Supuesto académico, no estándar aeronáutico|Procedimiento; no se asegura cumplimiento FAA o descanso laboral|
|RN22|Escrituras operativas solo mediante procedimientos; administradores pueden eludir reglas procedimentales|Límite de seguridad explícito|DENY DML, GRANT EXECUTE y pruebas EXECUTE AS|
|RN23|No hay pasarela, tarjetas, check-in, equipaje, millas, mantenimiento, conexiones ni cumplimiento regulatorio completo|Delimitación académica|Informe y alcance; registros contables no ejecutan movimientos bancarios|

## Operaciones temporalmente sensibles

Las asignaciones se consideran intervalos [DepartureUtc, ArrivalUtc + 45 minutos). Los vuelos cancelados no bloquean recursos; los llegados mantienen su intervalo histórico. Una ruta no implica automáticamente que el avión pueda desplazarse entre aeropuertos: la continuidad geográfica y vuelos de posicionamiento quedan fuera del alcance y se revisarían en una solución operativa. La muestra encadena rutas ida y vuelta coherentes.

La API permite fechas académicas suministradas para regenerar un escenario histórico. En producción se impondría reloj del servidor, autorización de ajustes y tiempos reales separados de los programados. StatusEvent registra tiempos de negocio académicos y Actor; la creación del vuelo se coloca de forma convencional 90 días antes de salida. No representa una auditoría forense real.

Reservas sin pagar no expiran automáticamente: se cancelan por procedimiento antes del embarque o se mantienen HELD en vuelos SCHEDULED de la muestra. No se activa SQL Server Agent. La liquidación de pagos y reembolsos externos y el patrón outbox quedarían como trabajo futuro.
