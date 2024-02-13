create database EjemploRightJoin;
use EjemploRightJoin;

CREATE TABLE orden_items (
    orden_id INT PRIMARY KEY,
    producto_id INT,
    quantity INT
);

CREATE TABLE productos (
    producto_id INT PRIMARY KEY,
    producto_name VARCHAR(255),
    precio DECIMAL(10, 2)
);

INSERT INTO orden_items (orden_id, producto_id, quantity)
VALUES
    (1, 101, 3),
    (2, 102, 2),
    (3, 103, 1);

INSERT INTO productos (producto_id, producto_name, precio)
VALUES
    (101, 'Apple iPhone 12', 799.99),
    (102, 'Samsung Galaxy S21', 899.99),
    (103, 'Google Pixel 6', 699.99);

SELECT producto_name, orden_id
FROM orden_items
RIGHT JOIN productos
ON orden_items.producto_id = productos.producto_id;
