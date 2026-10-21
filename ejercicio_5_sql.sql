-- Ejercicio 5
-- Obtén por cliente el importe total de sus compras (cantidad * precio), ordenado de mayor a menor

SELECT
  clientes.nombre                          AS cliente,
  SUM(ventas.cantidad * productos.precio)  AS total_compras

FROM ventas
JOIN clientes  ON ventas.cliente_id  = clientes.id
JOIN productos ON ventas.producto_id = productos.id

GROUP BY clientes.nombre
ORDER BY total_compras DESC;
