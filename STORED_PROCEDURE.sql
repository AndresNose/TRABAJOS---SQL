USE LogisticaFeria;
DELIMITER $$

CREATE PROCEDURE reportes(IN tipoReporte INT)
BEGIN
    -- Reporte 1
    IF tipoReporte = 1 THEN
        SELECT f.nombre AS nombreFeria,
            COUNT(DISTINCT v.id) AS totalVisitantes
        FROM feria f
        LEFT JOIN visitante v ON v.id != 0
        GROUP BY f.nombre;

    -- Reporte 2
    ELSEIF tipoReporte = 2 THEN
        SELECT e.nombre AS nombreEmpresa,
            COUNT(DISTINCT s.id) AS totalStands
        FROM empresa e
        LEFT JOIN stand s ON e.id = s.idEmpresa
        GROUP BY e.nombre
        ORDER BY totalStands DESC;

    -- Reporte 3
    ELSEIF tipoReporte = 3 THEN
        SELECT c.nombre AS nombreCharla,
            COUNT(DISTINCT r.idVisitante) AS totalRegistros
        FROM registro r
        LEFT JOIN charlas c ON c.id = r.idCharlas
        GROUP BY c.nombre
        ORDER BY totalRegistros DESC;
    END IF;
END$$

DELIMITER ;
