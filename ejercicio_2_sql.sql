-- Ejercicio 2
-- Muestra los cinco productos más caros, incluyendo nombre, precio y stock

SELECT nombre, precio, stock FROM productos ORDER BY precio DESC
LIMIT 5;
