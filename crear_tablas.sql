-- Crear tablas
CREATE TABLE clientes (
  id      INTEGER PRIMARY KEY,
  nombre  TEXT,
  correo  TEXT,
  ciudad  TEXT
);

CREATE TABLE productos (
  id      INTEGER PRIMARY KEY,
  nombre  TEXT,
  precio  DECIMAL,
  stock   INTEGER
);

CREATE TABLE ventas (
  id          INTEGER PRIMARY KEY,
  cliente_id  INTEGER,
  producto_id INTEGER,
  cantidad    INTEGER,
  fecha       DATE,
  FOREIGN KEY (cliente_id)  REFERENCES clientes(id),
  FOREIGN KEY (producto_id) REFERENCES productos(id)
);

-- Insertar datos de prueba
INSERT INTO clientes VALUES (1, 'Carlos Méndez',    'carlos@mail.com',  'Querétaro');
INSERT INTO clientes VALUES (2, 'Laura Sánchez',    'laura@mail.com',   'Guadalajara');
INSERT INTO clientes VALUES (3, 'Pedro Ramírez',    'pedro@mail.com',   'Querétaro');
INSERT INTO clientes VALUES (4, 'Ana Torres',       'ana@mail.com',     'Monterrey');
INSERT INTO clientes VALUES (5, 'Jorge Gutiérrez',  'jorge@mail.com',   'Ciudad de México');

INSERT INTO productos VALUES (1, 'Mouse',     350.00, 50);
INSERT INTO productos VALUES (2, 'Teclado',   650.00, 30);
INSERT INTO productos VALUES (3, 'Monitor',  3200.00, 15);
INSERT INTO productos VALUES (4, 'Webcam',    890.00, 25);
INSERT INTO productos VALUES (5, 'Audífonos', 480.00, 40);

INSERT INTO ventas VALUES (1, 1, 3, 1, '2024-01-10');
INSERT INTO ventas VALUES (2, 2, 1, 2, '2024-01-15');
INSERT INTO ventas VALUES (3, 3, 5, 3, '2024-02-01');
INSERT INTO ventas VALUES (4, 4, 2, 1, '2024-02-20');
INSERT INTO ventas VALUES (5, 5, 4, 2, '2024-03-05');
