USE LogisticaFeria;

-- REPORTE 1 (Cantidad de visitantes de la feria.)
SELECT f.nombre AS nombreFeria,
    COUNT(DISTINCT v.id) AS totalVisitantes
FROM feria f
LEFT JOIN visitante v ON v.id != 0
GROUP BY f.nombre;

-- REPORTE 2 (Cantidad de stands por empresa.)
SELECT e.nombre AS nombreEmpresa,
    COUNT(DISTINCT s.id) AS totalStands
FROM empresa e
LEFT JOIN stand s ON e.id = s.idEmpresa
GROUP BY e.nombre
ORDER BY totalStands DESC;

-- REPORTE 3 (Cantidad de registros por charla.)

SELECT c.nombre AS nombreCharla,
    COUNT(DISTINCT r.idVisitante) AS totalRegistros
FROM registro r
LEFT JOIN charlas c ON c.id = r.idCharlas
GROUP BY c.nombre
ORDER BY totalRegistros DESC;