CREATE DATABASE db_tienda_libros34;
USE db_tienda_libros34;

CREATE TABLE Autores (
    id_autor INT PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE Libros (
    id_libro INT PRIMARY KEY,
    titulo VARCHAR(100),
    id_autor INT,
    precio DECIMAL(5,2), 
    FOREIGN KEY (id_autor) REFERENCES Autores(id_autor)
);

INSERT INTO Autores (id_autor, nombre) VALUES (1, 'Gabriel García Márquez'), (2, 'Isabel Allende'), (3, 'Mario Vargas Llosa');


INSERT INTO Libros (id_libro, titulo, id_autor, precio) VALUES (1, 'Cien años de soledad', 1, 19.99), (2, 'La casa de los espíritus', 2, 14.99), (3, 'Conversación en La Catedral', 3, 24.99), (4, 'El amor en los tiempos del cólera', 1, 18.99), (5, 'Eva Luna', 2, 16.99);

SELECT COUNT(*) FROM Libros;

SELECT COUNT(id_autor) FROM Libros;

SELECT COUNT(DISTINCT id_autor) FROM Libros;

SELECT MAX(precio) AS Precio_Maximo FROM Libros;

SELECT MIN(precio) AS Precio_Minimo FROM Libros;

SELECT SUM(precio) AS Suma_Precios FROM Libros;

SELECT AVG(precio) AS Precio_Promedio FROM Libros;
