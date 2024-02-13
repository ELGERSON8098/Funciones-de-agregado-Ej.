DROP DATABASE eyemplos

CREATE DATABASE eyemplos;
USE eyemplos

CREATE TABLE Ventas (
    ID_Venta INT AUTO_INCREMENT PRIMARY KEY,
    Producto VARCHAR(50),
    Cantidad INT,
    Precio_unitario DECIMAL(10, 2)
);


INSERT INTO Ventas (Producto, Cantidad, Precio_unitario) VALUES
('Producto A', 10, 15.00),
('Producto B', 5, 20.00),
('Producto A', 8, 15.00),
('Producto C', 12, 10.00),
('Producto B', 3, 20.00),
('Producto A', 15, 15.00),
('Producto C', 7, 10.00),
('Producto B', 10, 20.00);

SELECT COUNT(*) AS Total_Ventas FROM Ventas;

SELECT SUM(Cantidad) AS Cantidad_Total_Vendida FROM Ventas;

SELECT AVG(Precio_unitario) AS Precio_Promedio FROM Ventas;

SELECT MAX(Precio_unitario) AS Precio_Unitario_Maximo FROM Ventas;

SELECT MIN(Precio_unitario) AS Precio_Unitario_Minimo FROM Ventas;# Funciones-de-agregado-Ej.
