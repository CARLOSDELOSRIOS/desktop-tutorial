# Revisión final y pendientes efectivos

## Revisión de la rúbrica

|Criterio, hasta 5 puntos|Cobertura comprobable|Límite / tarea pendiente|
|---|---|---|
|Información|Fuentes recibidas leídas, páginas y hashes registrados; modelo y archivos propios; decisiones separadas de la consigna|Completar carátula y datos reales del equipo; confirmar versión docente vigente|
|Análisis|Dependencias funcionales, alternativas, transacciones, bloqueos, denominadores y conciliación explícitos|Ejecutar T-SQL y contrastar cifras; todavía no hay análisis empírico de la base|
|Conclusiones|Responden a objetivos y se limitan a diseño y verificaciones observadas|Actualizar con resultados reales locales y Azure; no inventar causalidad o rentabilidad|
|Estilo/gramática|Español formal, informe editable/PDF, diagramas resumidos legibles y exportaciones ampliables|Revisión final del equipo y norma editorial docente; mínimo de páginas no especificado numéricamente|

Esta revisión no asigna una nota ni garantiza la calificación del docente.

## Concordancia y entregables

Se verificó correspondencia estructural entre las 19 tablas/99 atributos de schema.json, el diccionario y el DDL. El modelo lógico Mermaid incluye atributos y cardinalidades derivadas de nulabilidad y claves candidatas; los DOT físicos muestran las entidades y relaciones. Hay exportaciones completas ampliables y resúmenes para informe/presentación. Las excepciones físicas de normalización están explicadas; no se afirma 3FN estricta del físico completo.

El informe PDF contiene cuerpo y anexos con diccionario, 18 consultas y matriz resumida. El DOCX y Markdown son editables. Las 13 diapositivas suman exactamente 1200 segundos y contienen notas; la guía común tiene 18 preguntas razonadas. La revisión visual se realizó sobre el PDF del informe y las diapositivas, con figuras compactas para evitar texto ilegible. Los SVG/PDF completos permiten inspeccionar las columnas de cada módulo ampliando o imprimiendo a mayor tamaño.

Las cifras existentes describen únicamente insumos generados o pruebas offline: 32 vuelos, 896 solicitudes, 21 pruebas y 18 SELECT analizados parcialmente. No existen CSV de ejecución de negocio ni figuras financieras del motor en esta entrega. Analyze solo los crea desde una conexión real, guarda manifiestos y verifica conciliación. Los 34 casos de SQL se mantienen pendientes y el log registra su omisión.

No se guardaron credenciales ni `.env`. El repositorio preparado no contiene historial de colaboración inventado ni fue publicado. Las fuentes docentes originales no se redistribuyen: se conservan nombres, páginas, síntesis y hashes. Local y nube tienen directorios/evidencias diferentes; EngineEdition=5 se exige al generar resultados de Azure.

## Pendientes efectivos

1. Comprobar versión/edición de SQL Server, SSMS, permisos, Python y ODBC en Windows. El estado del servicio proviene de la instrucción del usuario, sin observación directa del equipo.
2. Desplegar en AirlinePAC vacía, ejecutar auditoría y 18 consultas. Corregir cualquier fallo del motor antes de declarar funcionalidad verificada.
3. Crear AirlinePAC_Test y ejecutar las 34 pruebas funcionales/concurrentes sin omitidos; guardar logs reales y resultados. La descarga del motor remoto fue bloqueada por red, por lo que no se ejecutó aquí.
4. Incorporar CSV/figuras y conclusiones empíricas al informe, indicando destino, ventana temporal, versión y fecha.
5. Autorizar gasto, crear/configurar Azure SQL Database y ejecutar/desplegar allí. Guardar EngineEdition=5 y evidencia de nube propia. No hay recursos creados.
6. Autorizar y publicar el repositorio GitHub, completar aportes reales y URL, y comprobar que los scripts estén allí como exigen las guías.
7. Completar participantes activos, líder, docente, institución del equipo, cohorte, entrega y contribuciones. Confirmar calendario, zona horaria del aula, guía vigente y mínimo numérico de páginas con el docente.
8. Ensayar 20 minutos con selección aleatoria, siguiendo las notas y la demostración en base aislada. Registrar únicamente reuniones/ensayos ocurridos.
