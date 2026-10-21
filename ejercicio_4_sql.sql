-- Ejercicio 4
-- Muestra por cada venta: id de venta, fecha, nombre del cliente, nombre del producto y cantidad

SELECT
  ventas.id        AS id_venta,
  ventas.fecha,
  clientes.nombre  AS cliente,
  productos.nombre AS producto,
  ventas.cantidad

FROM ventas
JOIN clientes  ON ventas.cliente_id  = clientes.id
JOIN productos ON ventas.producto_id = productos.id;
