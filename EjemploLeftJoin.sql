Create database EjemploLeft;
use EjemploLeft;

CREATE TABLE productos (
    id_producto INT PRIMARY KEY,
    nombre VARCHAR(100),
    precio DECIMAL(10, 2),
    stock INT
);

INSERT INTO productos (id_producto, nombre, precio, stock)
VALUES
    (1, 'Smartphone', 499.99, 100),
    (2, 'Tablet', 299.00, 50),
    (3, 'Auriculares inalámbricos', 79.99, 200);

CREATE TABLE ventas (
    id_venta INT PRIMARY KEY,
    id_producto INT,
    cantidad INT,
    fecha DATE
);

INSERT INTO ventas (id_venta, id_producto, cantidad, fecha)
VALUES
    (101, 1, 3, '2024-02-10'),
    (102, 2, 2, '2024-02-11'),
    (103, 1, 1, '2024-02-12');

SELECT v.id_venta, p.nombre AS nombre_producto, v.cantidad, v.fecha
FROM ventas v
LEFT JOIN productos p ON v.id_producto = p.id_producto;
