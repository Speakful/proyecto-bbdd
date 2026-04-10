-- Estudiantes aptos por vertical
SELECT estudiante.nombre, COUNT(calificacion), MIN(vertical.vertical)
FROM calificacion
JOIN estudiante ON calificacion.estudiante_id = estudiante.id
JOIN promocion ON estudiante.promocion_id = promocion.id
JOIN vertical ON promocion.vertical_id = vertical.id
WHERE calificacion.resultado = 'Apto'
GROUP BY estudiante.nombre
ORDER BY MIN(vertical.vertical)

-- Estudiantes por promocion
SELECT e.nombre, COUNT(c.resultado), MIN(p.promocion), MIN(e.fecha_comienzo)
FROM calificacion AS c
LEFT JOIN estudiante AS e ON c.estudiante_id = e.id
LEFT JOIN promocion AS p ON e.promocion_id = p.id
WHERE c.resultado = 'Apto'
GROUP BY e.nombre
ORDER BY MIN(p.promocion)

-- 5 Proyectos con mas aptos
SELECT t.tipo_proyecto, COUNT(c.resultado)
FROM calificacion AS c
JOIN tipo_proyecto AS t ON c.tipo_proyecto_id = t.tipo_proyecto_id
WHERE c.resultado = 'Apto'
GROUP BY t.tipo_proyecto
ORDER BY COUNT(c.resultado) DESC
LIMIT 5

-- Numeros de estudiantes aptos por proyecto
SELECT t.tipo_proyecto, COUNT(c.resultado)
FROM calificacion AS c
JOIN tipo_proyecto AS t ON c.tipo_proyecto_id = t.tipo_proyecto_id
WHERE c.resultado = 'Apto'
GROUP BY t.tipo_proyecto

-- 5 Proyectos con mas aptos
SELECT t.tipo_proyecto, COUNT(c.resultado)
FROM calificacion AS c
JOIN tipo_proyecto AS t ON c.tipo_proyecto_id = t.tipo_proyecto_id
WHERE c.resultado = 'No Apto'
GROUP BY t.tipo_proyecto
ORDER BY COUNT(c.resultado) DESC
LIMIT 5

-- Numero de estudiantes 'No Aptos' por proyecto
SELECT t.tipo_proyecto, COUNT(c.resultado)
FROM calificacion AS c
JOIN tipo_proyecto AS t ON c.tipo_proyecto_id = t.tipo_proyecto_id
WHERE c.resultado = 'No Apto'
GROUP BY t.tipo_proyecto

-- Numero de estudiantes por vertical
SELECT v.vertical, COUNT(e)
FROM estudiante AS e
LEFT JOIN promocion AS p ON e.promocion_id = p.id
LEFT JOIN vertical AS v ON p.vertical_id = v.id
GROUP BY v.vertical

-- Numero de estudiantes por campus
SELECT c.nombre, COUNT(e)
FROM estudiante AS e
LEFT JOIN campus AS c ON e.promocion_id = c.id
GROUP BY c.nombre