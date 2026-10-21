-- Ejercicio 3
-- Inserta un producto llamado "Webcam", precio 899 y stock 12
-- Después actualiza su stock a 10 usando su id

INSERT INTO productos VALUES (6, 'Webcam', 899.00, 12);

UPDATE productos
SET stock = 10
WHERE id = 6;
