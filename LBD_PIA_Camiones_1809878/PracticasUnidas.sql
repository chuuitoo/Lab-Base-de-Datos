SET IDENTITY_INSERT Autobuses ON

INSERT INTO Autobuses(Id_Autobus, Marca, Modelo, Capacidad, Placas)
VALUES ('645', 'Mercedes Benz', 'Boxer Of', '50', 'DFG468'),
GO

INSERT INTO Autobuses(Id_Autobus, Marca, Modelo, Capacidad, Placas)
VALUES('1', 'Mercedes Benz', 'Boxer Of', '50', 'HTF647'),
('2', 'Mercedes Benz', 'Boxer Of', '50', 'JTG456'),
('3', 'Mercedes Benz', 'Boxer Of', '50', 'AER894'),
('4', 'Mercedes Benz', 'Boxer Of', '50', 'KNG674'),
('5', 'Mercedes Benz', 'Boxer Of', '50', 'HNZ875'),
('6', 'Mercedes Benz', 'Boxer Of', '50', 'GHJ457'),
('7', 'Mercedes Benz', 'Boxer Of', '50', 'DBE343'),
('8', 'Mercedes Benz', 'Boxer Of', '50', 'GBB354'),
('9', 'Mercedes Benz', 'GRAN VIALE LE CNG', '60', 'NFR356'),
('10', 'Mercedes Benz', 'GRAN VIALE LE CNG', '60', 'BFD354'),
('11', 'Mercedes Benz', 'GRAN VIALE LE CNG', '60', 'HKF675'),
('12', 'Mercedes Benz', 'GRAN VIALE LE CNG', '60', 'DFG424'),
('13', 'Mercedes Benz', 'GRAN VIALE LE CNG', '60', 'GGE421'),
('14', 'Mercedes Benz', 'GRAN VIALE LE CNG', '60', 'HJH245'),
('15', 'Mercedes Benz', 'GRAN VIALE LE CNG', '60', 'GHF333'),
('16', 'Mercedes Benz', 'GRAN VIALE LE CNG', '60', 'DRG232'),
('17', 'Mercedes Benz', 'GRAN VIALE LE CNG', '60', 'kgy452'),
('18', 'Mercedes Benz', 'GRAN VIALE LE CNG', '60', 'AAZ064'),
('19', 'Mercedes Benz', 'GRAN VIALE LE CNG', '60', 'LLG455')
GO


SET IDENTITY_INSERT Categorias ON

INSERT INTO Categorias(Id_Categoria, Descripcion)
VALUES ('001', 'Basico, asiento normal'),
('002', 'Medio, asiento comodo con vista a la ventana'),
('003', 'Alto, asiento con vista a ventana y una comida'),
('004', 'Alto Premium, asiento con pantalla, comodidad amplia y comida'),
('005', 'Prime, asiento que convierte en cama con pantalla, cobija y comida libre')
GO


SET IDENTITY_INSERT Puesto ON

INSERT INTO Puesto(Id_Puesto, Descripcion)
VALUES ('001', 'Director Ejecutivo'),
('002', 'Gerente Ejecutivo'),
('003', 'Director Regional'),
('004', 'Gerente Regional'),
('005', 'Gerente de Base'),
('006', 'Cajero'),
('007', 'Conductor'),
('008', 'Conserje'),
('009', 'Guardia'),
('010', 'Asafata')
GO


SET IDENTITY_INSERT Asientos ON

INSERT INTO Asientos(Num_Asiento, Id_Autobus, Reservado)
VALUES('A2', '1', 'S'),
('A3', '1', 'S'),
('A4', '1', 'N'),
('B1', '1', 'S'),
('B2', '1', 'N'),
('B3', '1', 'S'),
('B4', '1', 'S'),
('C1', '1', 'S'),
('C2', '1', 'S'),
('C3', '1', 'N'),
('C4', '1', 'S'),
('D1', '1', 'S'),
('D2', '1', 'S'),
('D3', '1', 'N'),
('D4', '1', 'S'),
('E1', '1', 'S'),
('E2', '1', 'S'),
('E3', '1', 'S'),
('E4', '1', 'S'),
('01', '1', 'S')
GO


SET IDENTITY_INSERT Cajeros ON

INSERT INTO Cajeros(Id_Cajero, Num_Caja)
VALUES('23245', '001'),
('78594', '002'),
('26356', '003'),
('79895', '004'),
('25043', '005'),
('80694', '006'),
('79402', '007'),
('88043', '008'),
('88943', '009'),
('12234', '010')
GO


SET IDENTITY_INSERT Cliente_Boletos ON

INSERT INTO Cliente_Boletos(Id_Cliente, Id_Boleto)
VALUES('4559283436', 'GKBJF47603'),
('4235322555', 'CJGFI55934'),
('46E2214667', 'VBKDV48593'),
('8978I86875', 'GHBFS43522'),
('5645789843', 'JTYFV24235'),
('6457688743', 'BDFBD32255'),
('6456222573', 'HRTHE34532'),
('5678833654', 'REFVD67555'),
('3453222453', 'HJJFR88756'),
('9786587486', 'HHREE57434')
GO




UPDATE "Asientos"
SET "Reservado" = 'N'
WHERE Num_Asiento = 'A2';
GO

UPDATE "Asientos"
SET "Reservado" = 'N'
WHERE Num_Asiento = 'A3';
GO

UPDATE "Asientos"
SET "Reservado" = 'S'
WHERE Num_Asiento = 'A4';
GO

UPDATE "Asientos"
SET "Reservado" = 'S'
WHERE Num_Asiento = 'B2';
GO

UPDATE "Asientos"
SET "Reservado" = 'N'
WHERE Num_Asiento = 'C3';
GO




DELETE FROM Cliente_Boletos
WHERE Id_Cliente = '4559283436';
GO

DELETE FROM Cliente_Boletos
WHERE Id_Cliente = '4235322555';
GO

DELETE FROM Cliente_Boletos
WHERE Id_Cliente = '46E2214667';
GO

DELETE FROM Cliente_Boletos
WHERE Id_Cliente = '8978I86875';
GO

DELETE FROM Cliente_Boletos
WHERE Id_Cliente = '6457688743';
GO


CREATE TRIGGER trigger_update
ON Autobuses 
INSTEAD OF UPDATE
as
BEGIN
	UPDATE Autobuses
	SET Placas = 'ACC997'
	WHERE Id_Autobus = '45643';
END



CREATE TRIGGER trigger_delete
ON Asientos 
INSTEAD OF DELETE
as
BEGIN
	DELETE FROM Asientos
	WHERE Id_Autobus = '45643';
END



CREATE TRIGGER trigger_insert
ON Asientos 
INSTEAD OF INSERT
as
BEGIN
	INSERT INTO Asientos(Id_Autobus, Num_Asiento, Reservado)
	VALUES ('45643', 'A1', 'S'),
	('45643', 'A2', 'S'),
	('45643', 'A3', 'S'),
	('45643', 'G4', 'S')
END


USE [Camiones]
GO




SELECT [Nombre] as Ciudad
FROM [dbo].[Ciudades]	
GO

SELECT [Nombre] as NombreCliente
  FROM [dbo].[Cliente]
GO

SELECT [Correo] as Correo_Electronico
  FROM [dbo].[Cliente]
GO

SELECT [Apellidos] as ApellidoPyM
  FROM [dbo].[Cliente]
GO

SELECT [Telefono] as Celular
  FROM [dbo].[Cliente]
GO




SELECT * FROM Cliente CROSS JOIN Ciudades
GO

SELECT * FROM Cliente INNER JOIN Ciudades ON Cliente.Nombre = Ciudades.Nombre
GO

SELECT * FROM Cliente LEFT OUTER JOIN Ciudades ON Cliente.Nombre = Ciudades.Nombre
GO

SELECT * FROM Cliente RIGHT OUTER JOIN Ciudades ON Cliente.Nombre = Ciudades.Nombre
GO




SELECT Nombre 
FROM Cliente
WHERE nombre = NULL
GO

SELECT Id_Ciudad 
FROM Ciudades
WHERE Id_Ciudad = 0
GO

SELECT Num_Asiento 
FROM Asientos
WHERE Num_Asiento < 10
GO

SELECT Total
FROM Venta
WHERE Total <= 300
GO

SELECT * FROM Cajeros
ORDER BY Id_Cajero, Num_Caja;
GO




SELECT Sexo , count(*) as Empleados
FROM Empleados
GROUP by Sexo
GO

SELECT Telefono , count(*) as Cliente
FROM Cliente
GROUP by Telefono
GO

SELECT Sum(Precio_Unitario * IVA) AS Subtotal FROM Detalles_Venta;
GO

SELECT Count(*) AS Total FROM Venta;
GO

SELECT Count(Id_Estado), Nombre
From Estados
GROUP BY Nombre
HAVING Count(Id_Estado) > 5
GO