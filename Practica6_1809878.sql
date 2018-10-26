
--3 Subconsultas
SELECT Id_Ruta, (SELECT Nombre FROM Ciudades WHERE Id_Ciudad = Ciudad_Origen) as Ciudad_Origen, 
C.Nombre as Ciudad_Destino, CONVERT(char(5), Duracion, 108) as Duracion, Escalas 
FROM Rutas as R 
LEFT JOIN Ciudades as C ON R.Ciudad_Destino = C.Id_Ciudad

--1 Subconsulta con WITH
WITH temp AS 
(SELECT Id_Cliente, Nombre, Apellidos, Telefono FROM Cliente) 
SELECT Nombre, Apellidos, Telefono FROM temp WHERE temp.Telefono!='N/A'

--5 Vistas
CREATE VIEW numero_ventas
	AS SELECT COUNT(Id_Venta) as Ventas FROM Venta WHERE DATEPART(MONTH, Fecha_Venta) = DATEPART(MONTH, GETDATE())

SELECT * FROM numero_ventas

--Consulta dinamica
DECLARE @Consulta varchar(200)
DECLARE @Tabla varchar(50)

SET @Tabla = 'Estados'
SET @Consulta = 'SELECT * FROM ' + @Tabla + '--'

EXEC(@Consulta)