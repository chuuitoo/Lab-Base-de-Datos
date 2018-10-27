USE Camiones

--NUMERO DE ENTIDADES: 19

CREATE TABLE Cliente (
Id_Cliente int NOT NULL,
Nombre varchar(50) NOT NULL,
Apellidos varchar(50) NOT NULL,
Correo varchar(50) NOT NULL DEFAULT 'N/A',
Telefono varchar(15) NOT NULL DEFAULT 'N/A', 
CONSTRAINT PK_Cliente_IdCliente PRIMARY KEY CLUSTERED (Id_Cliente)
)

CREATE TABLE Cliente_Boletos (
Id_Cliente int NOT NULL,
Id_Boleto varchar(50) NOT NULL,
CONSTRAINT PK_ClienteBoletos_IdCliente PRIMARY KEY CLUSTERED (Id_Cliente, Id_Boleto)

)

CREATE TABLE Boletos (
Num_Folio varchar(50) NOT NULL,
Id_TPasajero tinyint NOT NULL,
Id_Viaje int NOT NULL,
Num_Asiento varchar(5) NOT NULL,
Id_Producto int NOT NULL,
Precio money NOT NULL,
CONSTRAINT PK_Boletos_NumFolio PRIMARY KEY CLUSTERED (Num_Folio)
)

CREATE TABLE Tipo_Pasajero (
Id_Tipo tinyint NOT NULL,
Tipo varchar(40) NOT NULL DEFAULT 'Adulto', --Bebe, Niño, Adulto y Adulto mayor
CONSTRAINT PK_TipoPasajero_IdTipo PRIMARY KEY CLUSTERED (Id_Tipo)
)

CREATE TABLE Viaje (
Id_Viaje int NOT NULL,
Id_Ruta int NOT NULL,
Id_Autobus int NOT NULL,
Id_Conductor  int NOT NULL,
FechaHora_Salida datetime NOT NULL,
TerminalSalida varchar(10) NOT NULL,
CONSTRAINT PK_Viajes_IdViaje PRIMARY KEY CLUSTERED (Id_Viaje)
)

CREATE TABLE Rutas (
Id_Ruta int NOT NULL,
Ciudad_Origen int NOT NULL,
Ciudad_Destino int NOT NULL,
Duracion time NOT NULL,
Escalas tinyint NOT NULL DEFAULT 0,
CONSTRAINT PK_Rutas_IdRuta PRIMARY KEY CLUSTERED (Id_Ruta)
)

CREATE TABLE Ciudades (
Id_Ciudad int NOT NULL,
Nombre varchar(50) NOT NULL,
Id_Estado int NOT NULL,
CONSTRAINT PK_Ciudades_IdCiudad PRIMARY KEY CLUSTERED (Id_Ciudad)
)

CREATE TABLE Estados (
Id_Estado int NOT NULL,
Nombre varchar(50) NOT NULL,
CONSTRAINT PK_Estados_IdEstado PRIMARY KEY CLUSTERED (Id_Estado)
)

CREATE TABLE Autobuses (
Id_Autobus int NOT NULL,
Marca varchar(50) NOT NULL,
Modelo varchar(30) NOT NULL,
Capacidad tinyint NOT NULL,
Placas varchar(15) NOT NULL,
CONSTRAINT PK_Autobuses_IdAutobus PRIMARY KEY CLUSTERED (Id_Autobus)
)

CREATE TABLE Boletos_Asientos (
Id_Boleto varchar(50) NOT NULL,
Num_Asiento varchar(5) NOT NULL,
Id_Autobus int NOT NULL,
CONSTRAINT PK_BoletosAsientos_IdBoleto PRIMARY KEY CLUSTERED (Id_Boleto, Num_Asiento, Id_Autobus)
)

CREATE TABLE Asientos (
Num_Asiento varchar(5) NOT NULL,
Id_Autobus int NOT NULL,
Reservado bit NOT NULL DEFAULT 0,
CONSTRAINT PK_Asientos_NumAsiento PRIMARY KEY CLUSTERED (Num_Asiento, Id_Autobus)
)

CREATE TABLE Conductores (
Id_Conductor int NOT NULL,
Licencia varchar(15) NOT NULL,
CONSTRAINT PK_Conductores_IdConductor PRIMARY KEY CLUSTERED (Id_Conductor)
)

CREATE TABLE Cajeros (
Id_Cajero int NOT NULL,
Num_Caja tinyint NOT NULL,
CONSTRAINT PK_Cajeros_IdCajero PRIMARY KEY CLUSTERED (Id_Cajero)
)

CREATE TABLE Empleados (
Id_Empleado int NOT NULL,
Id_Puesto int NOT NULL,
Nombre varchar(50) NOT NULL,
Apellidos varchar(50) NOT NULL,
Sexo varchar(15) NOT NULL,
Fech_Nac date NOT NULL,
Correo varchar(50) NOT NULL DEFAULT 'N/A',
Telefono varchar(15) NOT NULL DEFAULT 'N/A',
CONSTRAINT PK_Empleados_IdEmpleado PRIMARY KEY CLUSTERED (Id_Empleado)
)

CREATE TABLE Puesto (
Id_Puesto int NOT NULL,
Descripcion varchar(50) NOT NULL,
CONSTRAINT PK_Puesto_IdPuesto PRIMARY KEY CLUSTERED (Id_Puesto)
)

CREATE TABLE Venta (
Id_Venta int NOT NULL,
Id_Cajero int NOT NULL,
Id_Cliente int NOT NULL,
Serie varchar(5) NOT NULL,
Fecha_Venta datetime NOT NULL,
Total money NOT NULL,
CONSTRAINT PK_Venta_IdVenta PRIMARY KEY CLUSTERED (Id_Venta)
)

CREATE TABLE Detalles_Venta (
Id_Detalles int NOT NULL,
Id_Venta int NOT NULL,
Id_Producto int NOT NULL,
Cantidad int NOT NULL,
Precio_Unitario money NOT NULL,
IVA money NOT NULL,
Subtotal money NOT NULL,
CONSTRAINT PK_DetallesVenta_IdDetalles PRIMARY KEY CLUSTERED (Id_Detalles, Id_Venta)
)

CREATE TABLE Producto (
Id_Producto int NOT NULL,
Id_Categoria int NOT NULL,
Nombre varchar(30) NOT NULL,
Stock int NOT NULL,
Precio_Compra money NULL,
Precio_Venta money NOT NULL,
CONSTRAINT PK_Producto_IdProducto PRIMARY KEY CLUSTERED (Id_Producto)
)

CREATE TABLE Categorias (
Id_Categoria int NOT NULL,
Descripcion varchar(30) NOT NULL, --Servicio, Suministro, Consumible, etc.
CONSTRAINT PK_Categorias_IdCategoria PRIMARY KEY CLUSTERED (Id_Categoria)
)

/* Llaves Foraneas */

ALTER TABLE Ciudades ADD CONSTRAINT FK_Ciudades_Estados FOREIGN KEY (Id_Estado) REFERENCES Estados (Id_Estado)

ALTER TABLE Rutas ADD CONSTRAINT FK_Rutas_Ciudades1 FOREIGN KEY (Ciudad_Origen) REFERENCES Ciudades (Id_Ciudad)
ALTER TABLE Rutas ADD CONSTRAINT FK_Rutas_Ciudades2 FOREIGN KEY (Ciudad_Destino) REFERENCES Ciudades (Id_Ciudad)

ALTER TABLE Viaje ADD CONSTRAINT FK_Viaje_Rutas FOREIGN KEY (Id_Ruta) REFERENCES Rutas (Id_Ruta)
ALTER TABLE Viaje ADD CONSTRAINT FK_Viaje_Autobuses FOREIGN KEY (Id_Autobus) REFERENCES Autobuses (Id_Autobus)
ALTER TABLE Viaje ADD CONSTRAINT FK_Viaje_Conductores FOREIGN KEY (Id_Conductor) REFERENCES Conductores (Id_Conductor)

ALTER TABLE Boletos ADD CONSTRAINT FK_Boletos_Viaje FOREIGN KEY (Id_Viaje) REFERENCES Viaje (Id_Viaje)
ALTER TABLE Boletos ADD CONSTRAINT FK_Boletos_TPasajero FOREIGN KEY (Id_TPasajero) REFERENCES Tipo_Pasajero (Id_Tipo)
ALTER TABLE Boletos ADD CONSTRAINT FK_Boletos_Producto FOREIGN KEY (Id_Producto) REFERENCES Producto (Id_Producto)

--PELIGRO
ALTER TABLE Boletos_Asientos ADD CONSTRAINT FK_BoletoAsientos_Boletos FOREIGN KEY (Id_Boleto) REFERENCES Boletos (Num_Folio)
ALTER TABLE Boletos_Asientos ADD CONSTRAINT FK_BoletoAsientos_Asientos FOREIGN KEY (Num_Asiento, Id_Autobus) REFERENCES Asientos (Num_Asiento, Id_Autobus)
--PELIGRO

--PELIGRO
ALTER TABLE Cliente_Boletos ADD CONSTRAINT FK_ClienteBoletos_Boletos FOREIGN KEY (Id_Boleto) REFERENCES Boletos (Num_Folio)
ALTER TABLE Cliente_Boletos ADD CONSTRAINT FK_ClienteBoletos_Cliente FOREIGN KEY (Id_Cliente) REFERENCES Cliente (Id_Cliente)
--PELIGRO

ALTER TABLE Asientos ADD CONSTRAINT FK_Asientos_Autobuses FOREIGN KEY (Id_Autobus) REFERENCES Autobuses (Id_Autobus)

ALTER TABLE Conductores ADD CONSTRAINT FK_Conductores_Empleados FOREIGN KEY (Id_Conductor) REFERENCES Empleados (Id_Empleado)

ALTER TABLE Cajeros ADD CONSTRAINT FK_Cajeros_Empleados FOREIGN KEY (Id_Cajero) REFERENCES Empleados (Id_Empleado)

ALTER TABLE Empleados ADD CONSTRAINT FK_Empleados_Puesto FOREIGN KEY (Id_Puesto) REFERENCES Puesto (Id_Puesto)

ALTER TABLE Producto ADD CONSTRAINT FK_Producto_Categorias FOREIGN KEY (Id_Categoria) REFERENCES Categorias (Id_Categoria)

ALTER TABLE Venta ADD CONSTRAINT FK_Venta_Cajero FOREIGN KEY (Id_Cajero) REFERENCES Cajeros (Id_Cajero)
ALTER TABLE Venta ADD CONSTRAINT FK_Venta_Cliente FOREIGN KEY (Id_Cliente) REFERENCES Cliente (Id_Cliente)

--PELIGRO
ALTER TABLE Detalles_Venta ADD CONSTRAINT FK_DetallesVenta_Venta FOREIGN KEY (Id_Venta) REFERENCES Venta (Id_Venta)
--PELIGRO
ALTER TABLE Detalles_Venta ADD CONSTRAINT FK_DetallesVenta_Producto FOREIGN KEY (Id_Producto) REFERENCES Producto (Id_Producto)

/* INSERTS */
INSERT Puesto (Id_Puesto, Descripcion) VALUES (1, 'Cajero')
INSERT Puesto (Id_Puesto, Descripcion) VALUES (2, 'Conductor')
INSERT Puesto (Id_Puesto, Descripcion) VALUES (3, 'Gerente')

INSERT Autobuses (Marca, Modelo, Capacidad, Placas) VALUES (1, 'Transportes del Norte', 'DINA Avante', 40, 'ABC-123')
INSERT Autobuses (Marca, Modelo, Capacidad, Placas) VALUES (2, 'Transportes del Norte', 'DINA Avante', 40, 'FGH-877')
INSERT Autobuses (Marca, Modelo, Capacidad, Placas) VALUES (3, 'Tamaulipas', 'BonluckBus J6140', 45, 'THF-652')
INSERT Autobuses (Marca, Modelo, Capacidad, Placas) VALUES (4, 'Coahuilenses', 'Neobus NG', 50, 'HFA-452')
INSERT Autobuses (Marca, Modelo, Capacidad, Placas) VALUES (5, 'Turimex Internacional', 'BonluckBus J6140', 45, 'GHK-865')

INSERT Empleados (Id_Puesto, Nombre, Apellidos, Sexo, Fech_Nac) VALUES (1, 'Eliseo', 'Rodriguez Rodriguez', 'M', '19/10/1990')
INSERT Empleados (Id_Puesto, Nombre, Apellidos, Sexo, Fech_Nac) VALUES (1, 'Alan David', 'Martinez Melchor', 'M', '13/9/1980')
INSERT Empleados (Id_Puesto, Nombre, Apellidos, Sexo, Fech_Nac) VALUES (1, 'Galileo', 'Galilei', 'M', '21/11/1997')
INSERT Empleados (Id_Puesto, Nombre, Apellidos, Sexo, Fech_Nac) VALUES (1, 'Emiliano', 'Juarez Santiago', 'M', '25/1/2000')
INSERT Empleados (Id_Puesto, Nombre, Apellidos, Sexo, Fech_Nac) VALUES (2, 'Monica Alejandra', 'Villegas Hernandez', 'F', '6/12/1987')
INSERT Empleados (Id_Puesto, Nombre, Apellidos, Sexo, Fech_Nac) VALUES (2, 'Hernesto', 'Rodriguez Santiago', 'M', '9/9/1999')
INSERT Empleados (Id_Puesto, Nombre, Apellidos, Sexo, Fech_Nac) VALUES (2, 'Gerardo', 'Ruiz Cortinez', 'M', '19/10/1990')
INSERT Empleados (Id_Puesto, Nombre, Apellidos, Sexo, Fech_Nac) VALUES (2, 'Jose', 'Hernandez Hernandez', 'M', '7/7/1967')
INSERT Empleados (Id_Puesto, Nombre, Apellidos, Sexo, Fech_Nac) VALUES (2, 'Cristina', 'Flores Mata', 'F', '31/10/1998')
INSERT Empleados (Id_Puesto, Nombre, Apellidos, Sexo, Fech_Nac) VALUES (3, 'Enrique', 'Ortera Medina', 'M', '4/5/1994')
INSERT Empleados (Id_Puesto, Nombre, Apellidos, Sexo, Fech_Nac) VALUES (3, 'Fernanda', 'Contreras Gaitan', 'M', '15/5/1985')
INSERT Empleados (Id_Puesto, Nombre, Apellidos, Sexo, Fech_Nac) VALUES (3, 'Roberto Alberto', 'Garcia Hernandez', 'M', '19/9/1969')

INSERT Conductores (Id_Conductor, Licencia) VALUES (5, 'B869259430')
INSERT Conductores (Id_Conductor, Licencia) VALUES (6, 'F985678954')
INSERT Conductores (Id_Conductor, Licencia) VALUES (7, 'B657667678')
INSERT Conductores (Id_Conductor, Licencia) VALUES (8, 'B196643837')
INSERT Conductores (Id_Conductor, Licencia) VALUES (9, 'F679856721')

INSERT Cajeros (Id_Cajero, Num_Caja) VALUES (1, 5)
INSERT Cajeros (Id_Cajero, Num_Caja) VALUES (2, 3)
INSERT Cajeros (Id_Cajero, Num_Caja) VALUES (3, 1)
INSERT Cajeros (Id_Cajero, Num_Caja) VALUES (4, 2)

INSERT Cliente (Nombre, Apellidos, Correo) VALUES (1, 'Juan', 'Rodriguez Rodriguez', 'juanRR@yahoo.com')
INSERT Cliente (Nombre, Apellidos, Telefono) VALUES (2, 'Antonio', 'Banderas', 81173456)
INSERT Cliente (Nombre, Apellidos, Correo, Telefono) VALUES (3, 'Oscar', 'Perez Martinez', 'gamer_pro123@gamil.com', 81175975)
INSERT Cliente (Nombre, Apellidos, Correo, Telefono) VALUES (4, 'Jose Juan', 'Flores Caballero', 'JJFlores.99@hotmail.com', 81196684)
INSERT Cliente (Nombre, Apellidos) VALUES (5, 'Alfonso', 'Gutierrez')
INSERT Cliente (Nombre, Apellidos, Correo, Telefono) VALUES (6, 'Roberto', 'Melchor Alvarado', 'Melchor.77@outlook.es', 81135952)
INSERT Cliente (Nombre, Apellidos, Correo, Telefono) VALUES (7, 'Cristobal', 'Colon', 'america.99@uanl.mx', 81199999)
INSERT Cliente (Nombre, Apellidos, Correo, Telefono) VALUES (8, 'Miguel', 'Salazar', 'miguel_r4@capcom.com', 81167548)
INSERT Cliente (Nombre, Apellidos, Telefono) VALUES (9, 'Jose Miguel', 'Salazar', 81167548)
INSERT Cliente (Nombre, Apellidos, Correo, Telefono) VALUES (10, 'Heriberto', 'Contreras Maldonado', 'sectec.80@cisco.com', 81145790)

INSERT Estados (Nombre) VALUES (1, 'Aguascalientes')
INSERT Estados (Nombre) VALUES (2, 'Baja California')
INSERT Estados (Nombre) VALUES (3, 'Baja California Sur')
INSERT Estados (Nombre) VALUES (4, 'Campeche')
INSERT Estados (Nombre) VALUES (5, 'Chiapas')
INSERT Estados (Nombre) VALUES (6, 'Chihuahua')
INSERT Estados (Nombre) VALUES (7, 'Ciudad de México')
INSERT Estados (Nombre) VALUES (8, 'Coahuila')
INSERT Estados (Nombre) VALUES (9, 'Colima')
INSERT Estados (Nombre) VALUES (10, 'Durango')
INSERT Estados (Nombre) VALUES (11, 'Guanajuato')
INSERT Estados (Nombre) VALUES (12, 'Guerrero')
INSERT Estados (Nombre) VALUES (13, 'Hidalgo')
INSERT Estados (Nombre) VALUES (14, 'Jalisco')
INSERT Estados (Nombre) VALUES (15, 'México')
INSERT Estados (Nombre) VALUES (16, 'Michoacán')
INSERT Estados (Nombre) VALUES (17, 'Morelos')
INSERT Estados (Nombre) VALUES (18, 'Nayarit')
INSERT Estados (Nombre) VALUES (19, 'Nuevo León')
INSERT Estados (Nombre) VALUES (20, 'Oaxaca')
INSERT Estados (Nombre) VALUES (21, 'Puebla')
INSERT Estados (Nombre) VALUES (22, 'Querétaro')
INSERT Estados (Nombre) VALUES (23, 'Quintana Roo')
INSERT Estados (Nombre) VALUES (24, 'San Luis Potosí')
INSERT Estados (Nombre) VALUES (25, 'Sinaloa')
INSERT Estados (Nombre) VALUES (26, 'Sonora')
INSERT Estados (Nombre) VALUES (27, 'Tabasco')
INSERT Estados (Nombre) VALUES (28, 'Tamaulipas')
INSERT Estados (Nombre) VALUES (29, 'Tlaxcala')
INSERT Estados (Nombre) VALUES (30, 'Veracruz')
INSERT Estados (Nombre) VALUES (31, 'Yucatán')
INSERT Estados (Nombre) VALUES (32, 'Zacatecas')

INSERT Ciudades (Nombre, Id_Estado) VALUES (1, 'Aguascalientes', 1)
INSERT Ciudades (Nombre, Id_Estado) VALUES (2, 'Mexicali', 2)
INSERT Ciudades (Nombre, Id_Estado) VALUES (3, 'La Paz', 3)
INSERT Ciudades (Nombre, Id_Estado) VALUES (4, 'Campeche', 4)
INSERT Ciudades (Nombre, Id_Estado) VALUES (5, 'Saltillo', 8)
INSERT Ciudades (Nombre, Id_Estado) VALUES (6, 'Colima', 9)
INSERT Ciudades (Nombre, Id_Estado) VALUES (7, 'Tuxtla Gutiérrez', 5)
INSERT Ciudades (Nombre, Id_Estado) VALUES (8, 'Chihuahua', 6)
INSERT Ciudades (Nombre, Id_Estado) VALUES (9, 'Ciudad de México', 7)
INSERT Ciudades (Nombre, Id_Estado) VALUES (10, 'Durango', 10)
INSERT Ciudades (Nombre, Id_Estado) VALUES (11, 'Guanajuato', 11)
INSERT Ciudades (Nombre, Id_Estado) VALUES (12, 'Chilpancingo', 12)
INSERT Ciudades (Nombre, Id_Estado) VALUES (13, 'Pachuca', 13)
INSERT Ciudades (Nombre, Id_Estado) VALUES (14, 'Guadalajara', 14)
INSERT Ciudades (Nombre, Id_Estado) VALUES (15, 'Toluca', 15)
INSERT Ciudades (Nombre, Id_Estado) VALUES (17, 'Cuernavaca', 17)
INSERT Ciudades (Nombre, Id_Estado) VALUES (18, 'Tepic', 18)
INSERT Ciudades (Nombre, Id_Estado) VALUES (19, 'Monterrey', 19)
INSERT Ciudades (Nombre, Id_Estado) VALUES (20, 'Oaxaca', 20)
INSERT Ciudades (Nombre, Id_Estado) VALUES (21, 'Puebla', 21)
INSERT Ciudades (Nombre, Id_Estado) VALUES (22, 'Querétaro', 22)
INSERT Ciudades (Nombre, Id_Estado) VALUES (23, 'Chetumal', 23)
INSERT Ciudades (Nombre, Id_Estado) VALUES (24, 'San Luis Potosí', 24)
INSERT Ciudades (Nombre, Id_Estado) VALUES (25, 'Culiacán', 25)
INSERT Ciudades (Nombre, Id_Estado) VALUES (26, 'Hermosillo', 26)
INSERT Ciudades (Nombre, Id_Estado) VALUES (27, 'Villahermosa', 27)
INSERT Ciudades (Nombre, Id_Estado) VALUES (28, 'Ciudad Victoria', 28)
INSERT Ciudades (Nombre, Id_Estado) VALUES (29, 'Tlaxcala', 29)
INSERT Ciudades (Nombre, Id_Estado) VALUES (30, 'Xalapa', 30)
INSERT Ciudades (Nombre, Id_Estado) VALUES (31, 'Mérida', 31)
INSERT Ciudades (Nombre, Id_Estado) VALUES (32, 'Zacatecas', 32)

INSERT Rutas (Id_Ruta, Ciudad_Origen, Ciudad_Destino, Duracion, Escalas) VALUES (1, 19, 14, '3:50:00', 0)
INSERT Rutas (Id_Ruta, Ciudad_Origen, Ciudad_Destino, Duracion, Escalas) VALUES (2, 19, 6, '3:00:00', 0)
INSERT Rutas (Id_Ruta, Ciudad_Origen, Ciudad_Destino, Duracion, Escalas) VALUES (3, 19, 8, '2:30:00', 0)
INSERT Rutas (Id_Ruta, Ciudad_Origen, Ciudad_Destino, Duracion, Escalas) VALUES (4, 19, 28, '3:30:00', 2)

INSERT Venta (Id_Cajero, Id_Cliente, Serie, Fecha_Venta, Total) VALUES (1, 1, 'TN', '19/10/2018 15:30:12', 2500.00)
INSERT Venta (Id_Cajero, Id_Cliente, Serie, Fecha_Venta, Total) VALUES (4, 2, 'TN', '18/10/2018 13:30:00', 2500.00)
INSERT Venta (Id_Cajero, Id_Cliente, Serie, Fecha_Venta, Total) VALUES (3, 3, 'TN', '19/10/2018 16:45:07', 1300.00)
INSERT Venta (Id_Cajero, Id_Cliente, Serie, Fecha_Venta, Total) VALUES (2, 4, 'TM', '17/10/2018 8:30:00', 5000.00)
INSERT Venta (Id_Cajero, Id_Cliente, Serie, Fecha_Venta, Total) VALUES (4, 5, 'TM', '19/10/2018 9:13:25', 2600.00)
INSERT Venta (Id_Cajero, Id_Cliente, Serie, Fecha_Venta, Total) VALUES (3, 6, 'TN', '20/10/2018 7:50:05', 2500.00)
INSERT Venta (Id_Cajero, Id_Cliente, Serie, Fecha_Venta, Total) VALUES (1, 7, 'TN', '19/10/2018 15:30:55', 1300.00)
INSERT Venta (Id_Cajero, Id_Cliente, Serie, Fecha_Venta, Total) VALUES (1, 8, 'TN', '19/10/2018 15:30:55', 1300.00)
INSERT Venta (Id_Cajero, Id_Cliente, Serie, Fecha_Venta, Total) VALUES (1, 9, 'TM', '19/10/2018 15:30:55', 2500.00)
INSERT Venta (Id_Cajero, Id_Cliente, Serie, Fecha_Venta, Total) VALUES (1, 10, 'TM', '19/10/2018 15:30:55', 1300.00)

INSERT Tipo_Pasajero (Tipo) VALUES (1, 'Niño')
INSERT Tipo_Pasajero (Tipo) VALUES (2, 'Adulto')
INSERT Tipo_Pasajero (Tipo) VALUES (3, 'Adulto Mayor')

INSERT Categorias (Id_Categoria, Descripcion) VALUES (1, 'Boleto bus Categ. Baja')
INSERT Categorias (Id_Categoria, Descripcion) VALUES (2, 'Boleto bus Categ. Media')
INSERT Categorias (Id_Categoria, Descripcion) VALUES (3, 'Boleto bus Categ. Alta')

INSERT Viaje (Id_Viaje, Id_Ruta, Id_Autobus, Id_Conductor, FechaHora_Salida, TerminalSalida) VALUES (1, 3, 4, 5, '29/10/2018 15:30:00', 'A11')
INSERT Viaje (Id_Viaje, Id_Ruta, Id_Autobus, Id_Conductor, FechaHora_Salida, TerminalSalida) VALUES (2, 4, 1, 7, '29/10/2018 18:00:00', 'B12')
INSERT Viaje (Id_Viaje, Id_Ruta, Id_Autobus, Id_Conductor, FechaHora_Salida, TerminalSalida) VALUES (3, 1, 2, 6, '29/10/2018 18:00:00', 'A10')
INSERT Viaje (Id_Viaje, Id_Ruta, Id_Autobus, Id_Conductor, FechaHora_Salida, TerminalSalida) VALUES (4, 2, 5, 8, '30/10/2018 12:45:00', 'B15')

--Camiones usados 4 = 50, 1 = 40, 2 = 40, 5 = 45
--Autobus 1 = 40
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'A1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'A2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'A3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'A4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'B1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'B2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'B3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'B4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'C1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'C2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'C3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'C4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'D1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'D2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'D3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'D4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'E1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'E2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'E3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'E4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'F1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'F2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'F3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'F4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'G1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'G2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'G3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'G4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'H1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'H2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'H3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'H4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'I1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'I2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'I3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'I4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'J1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'J2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'J3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (1, 'J4')
--Autobus 2 = 40
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'A1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'A2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'A3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'A4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'B1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'B2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'B3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'B4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'C1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'C2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'C3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'C4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'D1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'D2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'D3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'D4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'E1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'E2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'E3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'E4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'F1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'F2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'F3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'F4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'G1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'G2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'G3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'G4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'H1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'H2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'H3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'H4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'I1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'I2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'I3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'I4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'J1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'J2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'J3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (2, 'J4')
--Autobus 3 = 45
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'A1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'A2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'A3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'A4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'B1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'B2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'B3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'B4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'C1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'C2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'C3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'C4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'D1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'D2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'D3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'D4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'E1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'E2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'E3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'E4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'F1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'F2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'F3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'F4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'G1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'G2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'G3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'G4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'H1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'H2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'H3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'H4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'I1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'I2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'I3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'I4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'J1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'J2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'J3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'J4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'K1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'K2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'K3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'K4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (3, 'K5')
--Autobus 4 = 50
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'A1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'A2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'A3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'A4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'B1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'B2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'B3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'B4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'C1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'C2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'C3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'C4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'D1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'D2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'D3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'D4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'E1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'E2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'E3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'E4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'F1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'F2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'F3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'F4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'G1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'G2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'G3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'G4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'H1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'H2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'H3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'H4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'I1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'I2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'I3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'I4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'J1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'J2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'J3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'J4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'K1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'K2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'K3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'K4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'L1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'L2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'L3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'L4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'M1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (4, 'M2')
--Autobus 5 = 45
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'A1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'A2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'A3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'A4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'B1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'B2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'B3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'B4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'C1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'C2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'C3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'C4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'D1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'D2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'D3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'D4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'E1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'E2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'E3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'E4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'F1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'F2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'F3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'F4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'G1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'G2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'G3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'G4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'H1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'H2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'H3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'H4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'I1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'I2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'I3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'I4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'J1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'J2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'J3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'J4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'K1')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'K2')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'K3')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'K4')
INSERT Asientos (Id_Autobus, Num_Asiento) VALUES (5, 'K5')

INSERT Producto  (Id_Producto, Id_Categoria, Nombre, Stock, Precio_Compra, Precio_Venta) VALUES (1, 1, 'Boletos Chihuahua', 50, 0, 1300.00)
INSERT Producto  (Id_Producto, Id_Categoria, Nombre, Stock, Precio_Compra, Precio_Venta) VALUES (2, 2, 'Boletos Ciud. Victoria', 40, 0, 1300.00)
INSERT Producto  (Id_Producto, Id_Categoria, Nombre, Stock, Precio_Compra, Precio_Venta) VALUES (3, 2, 'Boletos Guadalajara', 40, 0, 1500.00)
INSERT Producto  (Id_Producto, Id_Categoria, Nombre, Stock, Precio_Compra, Precio_Venta) VALUES (4, 3, 'Boletos Colima', 45, 0, 1500.00)

--Boletos a Chihuahua
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'A1', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'A2', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'A3', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'A4', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'B1', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'B2', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'B3', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'B4', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'C1', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'C2', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'C3', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'C4', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'D1', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'D2', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'D3', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'D4', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'E1', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'E2', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'E3', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'E4', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'F1', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'F2', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'F3', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'F4', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'G1', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'G2', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'G3', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'G4', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'H1', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'H2', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'H3', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'H4', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'I1', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'I2', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'I3', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'I4', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'J1', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'J2', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'J3', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'J4', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'K1', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'K2', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'K3', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'K4', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'L1', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'L2', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'L3', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'L4', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'M1', 1, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 1, 2, 'L2', 1, 1300.00)

--Boletos a Ciudad Victoria
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'A1', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'A2', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'A3', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'A4', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'B1', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'B2', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'B3', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'B4', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'C1', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'C2', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'C3', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'C4', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'D1', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'D2', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'D3', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'D4', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'E1', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'E2', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'E3', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'E4', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'F1', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'F2', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'F3', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'F4', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'G1', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'G2', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'G3', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'G4', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'H1', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'H2', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'H3', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'H4', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'I1', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'I2', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'I3', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'I4', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'J1', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'J2', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'J3', 2, 1300.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 2, 2, 'J4', 2, 1300.00)

--Boletos a Guadalajara
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'A1', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'A2', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'A3', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'A4', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'B1', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'B2', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'B3', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'B4', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'C1', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'C2', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'C3', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'C4', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'D1', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'D2', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'D3', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'D4', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'E1', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'E2', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'E3', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'E4', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'F1', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'F2', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'F3', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'F4', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'G1', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'G2', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'G3', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'G4', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'H1', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'H2', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'H3', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'H4', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'I1', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'I2', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'I3', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'I4', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'J1', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'J2', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'J3', 3, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 3, 2, 'J4', 3, 1500.00)

--Boletos a Colima
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'A1', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'A2', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'A3', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'A4', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'B1', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'B2', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'B3', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'B4', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'C1', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'C2', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'C3', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'C4', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'D1', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'D2', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'D3', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'D4', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'E1', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'E2', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'E3', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'E4', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'F1', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'F2', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'F3', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'F4', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'G1', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'G2', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'G3', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'G4', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'H1', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'H2', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'H3', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'H4', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'I1', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'I2', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'I3', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'I4', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'J1', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'J2', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'J3', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'J4', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'K1', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'K2', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'K3', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'K4', 4, 1500.00)
INSERT Boletos (Num_Folio, Id_Viaje, Id_Tpasajero, Num_Asiento, Id_Producto, Precio) VALUES (NEWID(), 4, 2, 'K5', 4, 1500.00)

--INCOMPLETO XD
INSERT Detalles_Venta (Id_Detalles, Id_Venta, Id_Producto)

/* Consultas RANDOM */
SELECT * FROM Estados
SELECT * FROM Ciudades
SELECT * FROM Empleados
SELECT * FROM Conductores
SELECT * FROM Cajeros
SELECT * FROM Cliente
SELECT * FROM Venta
SELECT * FROM Categorias
SELECT * FROM Autobuses
SELECT * FROM Asientos ORDER BY Id_Autobus, Num_Asiento
SELECT * FROM Viaje
SELECT * FROM Producto
SELECT * FROM Boletos ORDER BY Id_Viaje, Num_Asiento

SELECT * FROM Rutas left join Ciudades ON Rutas.Ciudad_Destino = Ciudades.Id_Ciudad

SELECT * FROM Ciudades Left Join Estados ON Estados.Id_Estado = Ciudades.Id_Estado

SELECT Id_Ruta, (SELECT Nombre FROM Ciudades WHERE Id_Ciudad = Ciudad_Origen) as Ciudad_Origen, 
C.Nombre as Ciudad_Destino, CONVERT(char(5), Duracion, 108) as Duracion, Escalas 
FROM Rutas as R 
LEFT JOIN Ciudades as C ON R.Ciudad_Destino = C.Id_Ciudad