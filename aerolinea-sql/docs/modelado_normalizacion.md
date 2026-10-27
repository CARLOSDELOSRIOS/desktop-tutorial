# Modelado y normalización

## Conceptual

Personas compran tiquetes para pasajeros; algunas personas se registran como clientes o trabajan como empleados. Una ruta conecta aeropuertos, una programación repite la ruta y un vuelo concreta fecha y aeronave. El vuelo ofrece asientos en cabinas; un tiquete reserva uno. El precio procede de una versión de tarifa y admite una promoción. El tiquete recibe pagos y cada pago confirmado puede revertirse mediante un reembolso. La tripulación se asigna al intervalo de un vuelo.

## Cardinalidades y opcionalidad

|Relación|Cardinalidad|Opcionalidad y regla|
|---|---|---|
|Person–Customer|1 : 0..1|Una persona puede no registrarse; cada inscripción pertenece a una persona|
|Person–Employee|1 : 0..1|Persona y empleado pueden ser simultáneamente clientes|
|Airport–Route (origen/destino)|1 : 0..N|Una ruta tiene exactamente un origen y un destino diferentes|
|Route–Schedule|1 : 0..N|Un patrón pertenece a una ruta; una ruta puede aún no estar programada|
|Schedule–Flight|1 : 0..N|Un vuelo proviene de exactamente un patrón; UQ patrón/fecha|
|Aircraft–AircraftSeat|1 : 0..N|La configuración debe estar cargada antes de ofrecer un vuelo|
|Aircraft–Flight|1 : 0..N|Cada vuelo tiene un solo avión fijo; no se modela intercambio posterior|
|Flight–FlightSeat|1 : 0..N estructural; 1..N en API|La creación de vuelo carga todos los asientos en la misma transacción|
|Flight–Employee|N : M por CrewAssignment|Puede faltar tripulación en planificación; se exige mínimo al embarcar|
|Cabin–AircraftSeat / Fare|1 : 0..N|Cada asiento y tarifa corresponde a una cabina|
|FlightSeat–Ticket|1 : 0..N histórico; 0..1 activo|Cancelados conservan historial; el índice filtrado limita activos|
|Person–Ticket (comprador/pasajero)|1 : 0..N por rol|Cada tiquete requiere exactamente una persona en cada rol|
|SalesChannel–Ticket|1 : 0..N|Cada tiquete procede de un punto de venta|
|Route/Cabin–Fare|1 : 0..N|Versiones con intervalos de venta no superpuestos|
|Fare–Ticket|1 : 0..N|Cada tiquete conserva la versión utilizada|
|Discount–Ticket|1 : 0..N|El tiquete admite 0..1 descuento, sin acumulación|
|Ticket–Payment|1 : 0..N|Se permite reserva sin pago y pagos múltiples|
|Payment–Refund|1 : 0..1|Solo pagos confirmados; devolución integral según política|
|Ticket/Flight–StatusEvent|1 : 0..N|Cada evento pertenece exactamente a una de las dos entidades|

Los diagramas lógicos enumeran todas las entidades. Las FK y restricciones completas están en `schema.json`, `diccionario.md` y `sql/01_schema.sql`. Los diagramas físicos por módulo incluyen nombres y tipos de todas las columnas relevantes del módulo; la vista global se entrega en SVG/PDF ampliable. Una relación derivada puede dibujarse en el conceptual sin crear otra FK redundante en el físico.

## Dependencias funcionales y tercera forma normal

Una relación está en 3FN si, para cada dependencia funcional no trivial X→A, X es superclave o A es atributo primo. Los identificadores artificiales no bastan por sí solos: también se analizan claves naturales y dependencias entre atributos no clave.

|Relación / dependencia|Decisión|Anomalía evitada|
|AirportCode→Name, City, WindowsTZ, IanaTZ|Datos del aeropuerto una sola vez|Cambiar un nombre/zona en cada vuelo o venta|
|PersonId→FullName, Email, BirthDate|Customer y Employee referencian Person|Duplicar identidad al comprar, viajar y emplearse|
|PersonId→RegisteredAt en Customer|Registro como especialización opcional|Obligar inscripción para poder vender|
|RouteId↔(OriginCode,DestinationCode)|Clave candidata natural protegida por UQ|Duplicar la misma ruta con distintos identificadores|
|ScheduleId→RouteId, día, hora, duración, vigencia|Separar patrón de ruta|Repetir aeropuertos en cada recurrencia|
|(ScheduleId,FlightDate)→FlightId,AircraftId,DepartureUtc,ArrivalUtc,Status|UQ de instancia, hechos programados fijos|Repetir vuelos de la misma programación y día|
|(AircraftId,SeatNo)→CabinCode|Configurar asiento físico fuera del avión|Capacidades declaradas distintas del mapa de asientos|
|(FlightId,SeatNo)→AircraftId,CabinCode en FlightSeat|Redundancia controlada, explicada abajo|Evitar ofrecer plazas ajenas al avión|
|FareId→ruta, cabina, vigencia, precio de referencia|Versionar tarifas|Sobrescribir tarifa usada en compras pasadas|
|TicketId y RequestKey→asiento, personas, fecha, importes y estado|Hecho de venta con claves alternativas|Duplicación de un mismo intento de emisión|
|TicketId→OriginalPrice,DiscountPercent,FinalPrice|FinalPrice es atributo derivado persistido|Evitar cálculos inconsistentes entre clientes|
|PaymentId y RequestKey→TicketId,Amount,Status,Method,PaidAt|Pagos en relación propia|Columnas Pago1/Pago2 o repetición del tiquete|
|PaymentId→RefundId,Amount,RefundedAt en Refund|UQ PaymentId|Doble devolución integral de un pago|
|(FlightId,EmployeeId) es clave de CrewAssignment|Resolver N:M|Lista de empleados en una celda o duplicados de asignación|

Todas las celdas son atómicas (1FN), no se guardan listas de asientos/pagos ni grupos repetitivos. Las relaciones con claves compuestas no incluyen atributos dependientes de una sola parte salvo las redundancias físicas señaladas (2FN). Los datos descriptivos de rutas, personas, aeropuertos y canales no se repiten como dependencias transitivas de cada venta (3FN).

## Redundancias físicas justificadas

1. `FlightSeat.AircraftId` depende de FlightId, una parte de su clave. Es una desnormalización física explícita, por lo que no se afirma que esta tabla cumpla estrictamente 2FN/3FN. Permite dos FK compuestas: (FlightId,AircraftId) al avión del vuelo y (AircraftId,SeatNo,CabinCode) al asiento físico. Se prefiere esta integridad declarativa verificable a un trigger multitabla. También CabinCode es redundante respecto de asiento físico; los componentes se mantienen por las FK. La API crea el inventario completo atómicamente y el rol operativo no lo modifica.
2. `Ticket.CabinCode` repite la cabina del inventario para restringir la combinación mediante FK compuesta y facilitar agrupaciones. Es otra desnormalización física explícita; el diseño lógico puede derivarla de FlightSeat. La FK impide discrepancias.
3. `FinalPrice` es un derivado determinista de valores históricos del propio hecho. SQL lo calcula como columna persistida; la aplicación no lo escribe independientemente. No se presenta el esquema físico completo como estrictamente 3FN: es un modelo lógico normalizado con excepciones documentadas.
4. Precio original y porcentaje histórico no son una copia accidental del precio vigente: expresan las condiciones contractuales de ese tiquete. Cambiar una tarifa o promoción futura no debe cambiar el hecho histórico. Son dependientes del tiquete y tienen semántica temporal propia. FareId y DiscountId proporcionan trazabilidad, sin recalcular ventas desde referencias actuales.
5. DepartureUtc y ArrivalUtc materializan el programa acordado en la fecha del vuelo. Las reglas de horario estacional del sistema operativo pueden cambiar; la salida contractual no debe recalcularse en cada consulta. Modificar una programación o su zona después de crear vuelos queda reservado a administración y debe revisarse con auditoría.

## Alternativas comparadas

Normalizar cada redundancia mediante vistas simplificaría la forma normal, pero perdería las FK compuestas elegidas. Usar triggers para esas relaciones añade manejo de conjuntos y riesgos de concurrencia; se opta por restricciones declarativas y procedimientos con permisos. Un contador `SeatsSold` sería más rápido en ciertos informes, pero duplicaría una magnitud derivable y crearía otra conciliación. El bloqueo global reduce paralelismo; es defendible con 896 tiquetes y debe reemplazarse por bloqueos por vuelo/tiquete, orden fijo y pruebas de carga si escala el sistema.
