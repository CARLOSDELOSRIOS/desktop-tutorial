# Guía común de estudio y defensa

Todos deben poder explicar objetivo, modelo, una consulta, las garantías y lo que aún no se ejecutó. La selección de expositores es aleatoria según las guías. No hay asignaciones ni contribuciones inventadas.

## Guion de demostración (integrado en los 20 minutos)

Preparar dos bases: AirlinePAC para resultados y AirlinePAC_Test para pruebas; no ejecutar scripts destructivos durante la exposición. Si aún no se completó la instalación local o Azure, declarar esa limitación antes de mostrar código. No simular una conexión.

1. En SSMS ejecutar `00_diagnostic.sql`: identificar servidor, edición, versión, usuario, base y compatibilidad. Explicar que SSMS es cliente y el motor almacena/procesa.
2. Abrir modelo conceptual y módulo de ventas. Seguir persona→tiquete→pago→reembolso y programación→vuelo→asiento.
3. Mostrar Q01, Q03 y Q15 desde resultados guardados **solo si ya fueron generados**. Q15 debe conciliar en cero. Explicar reservas pagadas y no pagadas, ventas de contratos y caja.
4. Mostrar la prueba `test_same_last_seat_two_independent_sessions` y ejecutarla en base _Test. Esperar un ganador y un rechazo de asiento. Mostrar índice filtrado y bloqueo de aplicación.
5. En Azure, ejecutar consulta real que muestre EngineEdition=5 y una vista. Si no se desplegó, mostrar guía y reconocer pendiente: no presentar capturas locales como nube.
6. Mostrar GitHub únicamente después de que el equipo autorice y efectúe la publicación; conservar URL y registro real de aportes.

## Preguntas razonadas

1. **¿Por qué Person y Customer separados?** El registro es opcional y no define la existencia de la persona. Un comprador o pasajero invitado tiene Person y ninguna fila Customer, evitando registros ficticios.
2. **¿Comprador y pasajero pueden diferir?** Sí. Son dos FK a Person con roles distintos: una persona puede comprar para otra. Cada tiquete corresponde a un pasajero y un vuelo; no se modela una orden con varios pasajeros.
3. **¿Qué distingue ruta, programación y vuelo?** Ruta es el par ordenado de aeropuertos; programación añade día, hora, duración y vigencia; vuelo instancia una fecha local y avión. Así no se repiten aeropuertos en cada venta.
4. **¿Todo el físico está en 3FN?** El diseño lógico está normalizado, pero se reconocen excepciones físicas: AircraftId en FlightSeat, CabinCode en Ticket y FinalPrice persistido. Las dos primeras sostienen FK compuestas; no se ocultan como 3FN estricta.
5. **¿El precio histórico es redundancia incorrecta?** Representa una condición del contrato en el instante de venta, distinta del precio de catálogo actual. No debe cambiar cuando cambie una referencia; FareId documenta su origen.
6. **¿Cómo se calcula la capacidad?** Se cuentan asientos del avión y su cabina; el vuelo carga un inventario de esos asientos. No se mantiene un contador independiente que pueda desajustarse.
7. **¿Qué evita vender dos veces la última plaza?** Transacción, bloqueo exclusivo de aplicación compartido por todos los procedimientos y un índice único filtrado de asiento activo. La comprobación y escritura no pueden intercalarse entre dos ventas de la API.
8. **¿READ COMMITTED es suficiente?** Por sí solo, leer disponibilidad y luego insertar puede competir. La garantía adicional procede del bloqueo y del índice; no se atribuye a una lectura aislada.
9. **¿Por qué un bloqueo global?** Facilita demostrar corrección y evita órdenes de adquisición contradictorias con el volumen académico. Reduce concurrencia; a escala se necesitan recursos por vuelo/tiquete, orden fijo y pruebas de carga.
10. **¿Puede un administrador romper las reglas?** Puede eludir procedimientos. FK/CHECK/UQ siguen vigentes mientras no se deshabiliten, pero las reglas cruzadas requieren la API. Se restringe DML del operador y se explicita este límite.
11. **¿Cómo se evitan cobros duplicados por reintentos?** RequestKey es único. El mismo UUID y parámetros devuelve la operación existente; con parámetros distintos se rechaza. Un nuevo UUID corresponde a un nuevo intento, sujeto al saldo.
12. **¿Qué pasa con un pago fallido?** Se registra como intento sin afectar cobro ni estado del saldo. El informe no suma todos los intentos como ingresos.
13. **¿Cómo se cancela con dos pagos?** La misma transacción crea un reembolso por cada pago confirmado, marca el tiquete cancelado y libera asiento por el filtro del índice. Si falla una parte, se revierte todo.
14. **¿Por qué agrupar pagos antes de unir?** Una unión tiquete-pagos repite el precio del tiquete una vez por pago. La vista reduce cada agregado a una fila por tiquete antes de la unión; Q15 verifica conciliación.
15. **¿Cómo se manejan husos y llegadas al día siguiente?** Se almacena UTC para instantes y zona del aeropuerto para convertir a hora local. La duración se mide en UTC; una llegada local posterior o distinta fecha no cambia la validez del vuelo.
16. **¿Qué pruebas ya se ejecutaron?** Veintiuna pruebas offline y análisis sintáctico parcial de 18 consultas. El motor no pudo descargarse por restricciones de red. Las pruebas T-SQL y de concurrencia están preparadas, pero pendientes; no se presentan como aprobadas.
17. **¿Qué demuestra Azure?** Una conexión real a Azure SQL Database con EngineEdition=5, carga, consultas y evidencias propias. Una guía o un motor local no satisfacen la exigencia de nube.
18. **¿Se puede inferir demanda o rentabilidad?** No de estos datos sintéticos. Son un escenario de prueba. Se describen ocupación y caja, sin causalidad ni generalización; sin costos no se calcula utilidad.

## Ensayo compartido

Cada integrante debe recorrer el README en su propio contexto, responder estas preguntas sin leer, explicar una regla declarativa y una procedimental, distinguir fuentes del docente de supuestos del equipo, y reconocer los pendientes. Medir 20 minutos completos con relevos aleatorios. Registrar únicamente ensayos y aportes realmente realizados.
