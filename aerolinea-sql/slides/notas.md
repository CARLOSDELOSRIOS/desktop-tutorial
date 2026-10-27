# Notas del expositor — 13 diapositivas, 20 minutos

La selección de integrantes es aleatoria según las guías; no se asignan nombres ni aportes ficticios. Los tiempos incluyen la demostración breve explicada en docs/defensa.md. No añadir otra demo de 5 minutos fuera del presupuesto.

|N.º|Tema|Duración|Intervalo|

|---|---|---|---|

|1|Una plaza, una venta válida|1:00|0:00–1:00|

|2|Problema, objetivos y alcance|1:30|1:00–2:30|

|3|Requisitos con fuente y límites|1:15|2:30–3:45|

|4|Arquitectura reproducible|1:30|3:45–5:15|

|5|Del concepto a las relaciones|2:00|5:15–7:15|

|6|Normalización e historia comercial|1:45|7:15–9:00|

|7|Integridad de plazas y recursos|2:00|9:00–11:00|

|8|Venta, cobro y cancelación atómicos|1:45|11:00–12:45|

|9|Python y datos reproducibles|1:30|12:45–14:15|

|10|Análisis que concilia|1:45|14:15–16:00|

|11|Pruebas: evidencia y pendientes|1:30|16:00–17:30|

|12|Azure y demostración verificable|1:30|17:30–19:00|

|13|Conclusiones y cierre del equipo|1:00|19:00–20:00|


## 1. Una plaza, una venta válida (60 segundos)

Presentar el objetivo: vender plazas finitas y conciliar pagos sin duplicar información. Identificar participantes reales. Declarar desde el inicio qué se ejecutó y qué permanece pendiente.


## 2. Problema, objetivos y alcance (90 segundos)

Explicar un caso concreto: una persona compra para otra y paga en dos abonos. Una tabla plana duplicaría el precio al sumar los pagos. El objetivo es integridad relacional, con análisis descriptivo y sin modelos predictivos.


## 3. Requisitos con fuente y límites (75 segundos)

Citar guía VIERNES pp. 21–23 y guía general pp. 21–24. No suponer que el nombre VIERNES identifica vigencia. Rúbrica de cuatro criterios, máximo 20. Confirmar calendario y páginas con el docente.


## 4. Arquitectura reproducible (90 segundos)

Mostrar que localhost de este entorno remoto no es la laptop. En local usar autenticación Windows y cifrado; Azure requiere FQDN y certificado válido. No se han creado recursos facturables.


## 5. Del concepto a las relaciones (120 segundos)

Recorrer las dos cadenas. Customer es inscripción opcional de Person. Un vuelo procede de un patrón semanal y ofrece asientos del avión. Canal comercial es distinto de aeropuerto. Mostrar el SVG ampliable si se necesita detalle.


## 6. Normalización e historia comercial (105 segundos)

No afirmar que todo el físico es 3FN estricta. FlightSeat.AircraftId permite FK compuestas a vuelo y asiento físico; Ticket.CabinCode también está protegido por FK. Explicar anomalías evitadas y el límite de cada desnormalización.


## 7. Integridad de plazas y recursos (120 segundos)

Explicar la carrera por la última plaza: leer disponible e insertar por separado es insuficiente. El bloqueo global serializa las operaciones y el índice impide dos activos incluso en una escritura directa. Conceder el costo de bajo paralelismo y que los 45 minutos son supuesto académico.


## 8. Venta, cobro y cancelación atómicos (105 segundos)

Seguir el caso de dos pagos. La devolución es contable y sintética: no hay integración bancaria. XACT_ABORT, TRY/CATCH y THROW revierten toda la unidad de trabajo ante error. El operador no puede saltarse la API con DML directo.


## 9. Python y datos reproducibles (90 segundos)

Distinguir generación de insumos de carga SQL real. La muestra cubre ambas cabinas, canales, inscritos/invitados, pagos múltiples y cancelaciones. No generalizar patrones sintéticos al mercado.


## 10. Análisis que concilia (105 segundos)

Presentar Q01, Q03 y Q15 en el guion de demo. Definir ocupación reservada y pagada y el denominador de capacidad. Q04 usa fecha de caja; Q03 usa cohorte de venta. No mostrar cifras SQL inexistentes. Tras la ejecución, incorporar las tablas y figuras reales.


## 11. Pruebas: evidencia y pendientes (90 segundos)

Decir exactamente lo observado: las comprobaciones de Python no demuestran ejecución T-SQL. La prueba concurrente exige un éxito y un rechazo y solo debe mostrarse como resultado cuando se ejecute. En la demo usar la base _Test aislada.


## 12. Azure y demostración verificable (90 segundos)

Mostrar la guía, configuración y script preparados. Cuando se autorice y despliegue, demostrar una consulta real de nube. Una captura local no satisface el requisito. Si aún no existe ejecución, reconocerlo como pendiente de la entrega académica.


## 13. Conclusiones y cierre del equipo (60 segundos)

Cerrar respondiendo a los objetivos sin afirmar éxito de operaciones no ejecutadas. Citar informe §15 para fuentes oficiales y anexos para trazabilidad. Confirmar líder, miembros activos y próximos pasos reales. No inventar resultados ni contribuciones.
