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