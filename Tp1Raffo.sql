CREATE DATABASE IF NOT EXISTS tp;

USE tp;

CREATE TABLE oficinas
(oficina INT NOT NULL,
ciudad VARCHAR(15) NOT NULL,
region VARCHAR(10) NOT NULL,
dir INT,
objetivo FLOAT,
ventas FLOAT NOT NULL,
PRIMARY KEY (oficina)); 

DROP TABLE oficinas;


CREATE TABLE pedidos
(num_pedido INT NOT NULL AUTO_INCREMENT,
fecha_pedido DATE NOT NULL,
clie INT NOT NULL,
rep INT NOT NULL,
fab CHAR(3) NOT NULL,
producto CHAR(5) NOT NULL,
cant INT NOT NULL,
importe FLOAT NOT NULL,
PRIMARY KEY (num_pedido));

DROP TABLE pedidos;


CREATE TABLE clientes
(num_clie INT NOT NULL,
empresa VARCHAR(20) NOT NULL,
rep_clie INT NOT NULL,
limite_credito FLOAT,
PRIMARY KEY (num_clie));

DROP TABLE clientes;


CREATE TABLE repVentas (
num_empl INT NOT NULL,
NAME VARCHAR (15) NOT NULL,
edad INT,
oficina_rep INT,
titulo VARCHAR (10),
contrato DATE NOT NULL,
director INT,
cuota FLOAT,
ventas FLOAT NOT NULL,
PRIMARY KEY (num_empl));

DROP TABLE repventas;


CREATE TABLE productos
(id_fab CHAR (3) NOT NULL,
id_producto CHAR (6) NOT NULL,
descripcion VARCHAR (20) NOT NULL,
precio FLOAT NOT NULL,
existencias INT NOT NULL,
PRIMARY KEY (id_producto));

DROP TABLE productos;


INSERT INTO oficinas (oficina, ciudad, region, dir, objetivo, ventas) VALUES
(22, 'Denver', 'Oeste', 108, 300000.00, 186042.00),
(11, 'New York', 'Este', 106, 575000.00, 692637.00),
(12, 'Chicago', 'Este', 104, 800000.00, 735042.00),
(13, 'Atlanta', 'Este', 105, 350000.00, 367911.00),
(21, 'Los Angeles', 'Oeste', 108, 725000.00, 835915.00);

INSERT INTO pedidos (fecha_pedido, clie, rep, fab, producto, cant, importe) VALUES
('1989-12-17', 2117, 106, 'REI', '2A44L', 7, 31500),
('1990-01-11', 2111, 105, 'ACI', '41005', 35, 3745),
('1990-01-03', 2101, 106, 'FEA', '114', 3, 1458),
('1990-02-10', 2118, 108, 'QSA', 'K47', 4, 1420),
('1990-10-12', 2107, 110, 'ACI', '41002', 9, 22500),
('1990-01-30', 2107, 110, 'ACI', '41002', 3, 22500),
('1990-02-02', 2112, 108, 'REI', '2A44L', 10, 45000),
('1989-12-17', 2103, 106, 'ACI', '41005', 6, 810),
('1990-01-14', 2118, 108, 'BIC', '41003', 2, 652),
('1990-02-23', 2108, 107, 'FEA', '112', 10, 1860),
('1990-01-08', 2124, 107, 'ACI', '41003', 1, 652),
('1989-12-27', 2113, 108, 'QSA', 'XK47', 6, 702),
('1990-02-24', 2124, 107, 'ACI', '41005', 10, 2430),
('1990-10-12', 2114, 102, 'FEA', '114', 10, 2430),
('1990-02-12', 2103, 102, 'ACI', '41002', 54, 15000),
('1990-01-29', 2107, 110, 'ACI', '41002', 9, 22500),
('1989-11-04', 2118, 108, 'REI', '2A44L', 10, 45000),
('1990-01-08', 2124, 108, 'IMM', '77C', 3, 2925),
('1990-02-08', 2112, 108, 'IMM', '77C', 2, 1950),
('1990-01-29', 2107, 110, 'ACI', '41002', 10, 22500),
('1990-12-31', 2111, 103, 'REI', '2A44G', 6, 7500),
('1990-01-25', 2103, 106, 'IMM', '41005', 10, 1750),
('1990-10-10', 2101, 106, 'QSA', 'XK47', 6, 1420),
('1990-02-27', 2106, 102, 'QSA', 'XK47', 10, 1896),
('1990-12-18', 2112, 105, 'IMM', '779C', 3, 5625),
('1990-01-08', 2124, 106, 'IMM', '779C', 6, 3750),
('1990-02-14', 2120, 102, 'IMM', '779C', 6, 11250),
('1990-12-18', 2111, 103, 'REI', '2A45C', 2, 900),
('1990-01-10', 2103, 106, 'ACI', '41004', 4, 1800),
('1990-10-12', 2118, 108, 'ACI', '41004', 24, 6000),
('1990-12-31', 2113, 108, 'REI', '2A44R', 5, 22500);

SELECT * FROM pedidos;


INSERT INTO clientes (num_clie, empresa, rep_clie, limite_credito) VALUES
(2111, 'JCP Inc.', 103, 50000.00),
(2102, 'Fisrt Corp.', 101, 65000.00),
(2103, 'Acme Mfg.', 105, 40000.00),
(2123, 'Carter & Sons', 102, 40000.00),
(2107, 'Ace International', 110, 35000.00),
(2115, 'Smithson Corp.', 101, 20000.00),
(2101, 'Jones Mfg.', 106, 65000.00),
(2112, 'Zetacorp', 108, 50000.00),
(2121, 'QMA Assoc.', 103, 45000.00),
(2114, 'Orion Corp.', 102, 20000.00),
(2124, 'Peter Brothers', 107, 40000.00),
(2108, 'Holm & Landis', 109, 55000.00),
(2117, 'J.P.Sinclair', 106, 35000.00),
(2122, 'Three-Way Lines', 105, 30000.00),
(2120, 'Rico Enterprises', 102, 50000.00),
(2106, 'Fred Lewis Corp.', 102, 65000.00),
(2119, 'Solomon Inc.', 109, 25000.00),
(2118, 'Midwest Systems', 108, 60000.00),
(2113, 'Ian & Schmith', 104, 20000.00),
(2109, 'Chen Associates', 103, 25000.00),
(2105, 'AAA Investments', 101, 45000.00);

SELECT * FROM clientes;


INSERT INTO repVentas (num_empl, NAME, edad, oficina_rep, titulo, contrato, director, cuota, ventas) VALUES
(105, 'Bill Adams', 37, 13, 'Rep Ventas', '1988-02-12', 104, 350000.00, 367911.00),
(109, 'Mary Jones', 31, 11, 'Rep Ventas', '1999-10-12', 106, 300000.00, 392725.00),
(102, 'Sue Smith', 48, 21, 'Rep Ventas', '1986-12-10', 108, 350000.00, 474050.00),
(106, 'Sam Clarke', 52, 11, 'VP Ventas', '1988-06-14', NULL, 275000.00, 299912.00),
(104, 'Bob Smith', 33, 12, 'Dir Ventas', '1987-05-19', 106, 200000.00, 142594.00),
(101, 'Dan Roberts', 45, 12, 'Rep Ventas', '1986-10-20', 104, 300000.00, 305673.00),
(110, 'Tom Snyder', 41, NULL, 'Rep Ventas', '1990-01-13', 101, NULL, 75985.00),
(108, 'Larry Fitch', 62, 21, 'Dir Ventas', '1989-10-12', 106, 350000.00, 361865.00),
(103, 'Paul Cruz', 29, 12, 'Rep Ventas', '1987-03-03', 104, 275000.00, 286775.00),
(107, 'Nancy Angelli', 49, 22, 'Rep Ventas', '1988-11-14', 108, 300000.00, 186042.00);
 
SELECT * FROM repVentas; 


INSERT INTO Productos (id_fab, id_producto, descripcion, precio, existencias) VALUES
('REI', '2A45C', 'V Stago Trinquete', 79, 210),
('ASI', '4100Y', 'Extractor', 2750, 25),
('QSA', 'XK47', 'Reductor', 355, 38),
('BIC', '41672', 'Plate', 180, 0),
('IMM', '779C', 'Riostra 2-Tm', 1875, 9),
('ACI', '41003X', 'Articulo tipo 3', 107, 207),
('ACI', '41004', 'Articulo tipo 4', 117, 139),
('BIC', '41003', 'Manivela', 652, 3), 
('IMM', '887P', 'Perno Riostra', 250, 24),
('QSA', 'XK48', 'Reductor', 134, 203),
('REI', '2A44L', 'Bisagra Izqda', 4500, 12),
('FEA', '112', 'Cubierta', 148, 115),
('IMM', '887H', 'Soporte Riostra', 54, 223),
('BIC', '41089', 'Retn', 225, 78),
('ASI', '41001', 'Articulo tipo 1', 55, 277),
('IMM', '775C', 'Riostra 1-Tm', 1425, 5),
('ACI', '4100Z', 'Montador', 2500, 28),
('QSA', 'XK48A', 'Reductor', 117, 37),
('ACI', '41002', 'Articulo Tipo 2', 76, 167),
('REI', '2A44R', 'Bisagra Dcha', 4500, 12),
('IMM', '773C', 'Riostra 1/2-Tm', 975, 28),
('ACI', '4100X', 'Ajustador', 25, 37),
('FEA', '114', 'Bancada Motor', 243, 15),
('IMM', '887X', 'Retenedor Riostra', 475, 31),
('REI', '2A44G', 'Pasador Bisagra', 350, 14);

SELECT * FROM Productos;
 
 
/*ejercicio 1*/
SELECT  ciudad, objetivo, ventas FROM oficinas 
WHERE region = 'Este';
 

/*Ejercicio 2 */
SELECT  ciudad, objetivo, ventas FROM oficinas
WHERE region = 'Este' AND ventas > objetivo
ORDER BY ciudad;
 

/*Ejercicio 3*/
SELECT AVG(objetivo) AS promedio_Objetivo, AVG(ventas) AS promedio_Ventas
FROM oficinas WHERE region = 'Este';
 

/*ejercicio 4*/
SELECT name, cuota, ventas FROM repventas 
WHERE num_empl = 107;
 
 
/*ejercicio 5*/
SELECT ciudad, region, (ventas - objetivo) AS diferencia
FROM oficinas;
 

/*ejercicio 6 */
SELECT descripcion, precio * existencias AS valor_inventario
FROM productos;
 
 
/* ejercicio 7*/
SELECT name, contrato FROM repventas 
WHERE contrato < '1988-01-01';
 
 
/*ejercicio 8*/
SELECT ciudad, ventas, objetivo FROM oficinas 
WHERE ventas < 0.8 * objetivo ;
 
 
/*ejercicio 9 */
SELECT * FROM pedidos 
WHERE fecha_pedido >='1989-10-01' AND fecha_pedido <='1989-12-31';
 
 
/*ejercicio 10 */
SELECT * FROM pedidos 
WHERE rep IN (107,109, 103, 101);

