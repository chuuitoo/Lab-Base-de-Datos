--Mauricio Moreno Tamez #1796624--
--Ivan Osvaldo Carrillo Ramirez #1818748--
--Jorge Luis Blanco Saldívar #1812011--
--Jesús Salvador Isidro Trejo #1809878--
USE [Proyecto_BDComplete]
GO
/****** Object:  Trigger [Existencia_Producto]    Script Date: 27/10/2018 11:34:49 ******/
DROP TRIGGER [dbo].[Existencia_Producto]
GO
/****** Object:  Trigger [ActualizarDVentas]    Script Date: 27/10/2018 11:34:49 ******/
DROP TRIGGER [dbo].[ActualizarDVentas]
GO
/****** Object:  Trigger [Puesto_Existente]    Script Date: 27/10/2018 11:34:49 ******/
DROP TRIGGER [dbo].[Puesto_Existente]
GO
/****** Object:  Trigger [RevisarPrecio]    Script Date: 27/10/2018 11:34:49 ******/
DROP TRIGGER [dbo].[RevisarPrecio]
GO
/****** Object:  Trigger [ActualizarBoletos]    Script Date: 27/10/2018 11:34:49 ******/
DROP TRIGGER [dbo].[ActualizarBoletos]
GO
/****** Object:  Trigger [Producto_Categoria]    Script Date: 27/10/2018 11:34:49 ******/
DROP TRIGGER [dbo].[Producto_Categoria]
GO
/****** Object:  Trigger [RecordatorioBanco]    Script Date: 27/10/2018 11:34:49 ******/
DROP TRIGGER [dbo].[RecordatorioBanco]
GO
/****** Object:  Trigger [Nivelado_Regimiento]    Script Date: 27/10/2018 11:34:49 ******/
DROP TRIGGER [dbo].[Nivelado_Regimiento]
GO
/****** Object:  Trigger [Actualizacion]    Script Date: 27/10/2018 11:34:49 ******/
DROP TRIGGER [dbo].[Actualizacion]
GO
/****** Object:  StoredProcedure [dbo].[ViajesRealizadoAutobus]    Script Date: 27/10/2018 11:34:49 ******/
DROP PROCEDURE [dbo].[ViajesRealizadoAutobus]
GO
/****** Object:  StoredProcedure [dbo].[Tel]    Script Date: 27/10/2018 11:34:49 ******/
DROP PROCEDURE [dbo].[Tel]
GO
/****** Object:  StoredProcedure [dbo].[sexo]    Script Date: 27/10/2018 11:34:49 ******/
DROP PROCEDURE [dbo].[sexo]
GO
/****** Object:  StoredProcedure [dbo].[RevisarViajesDia]    Script Date: 27/10/2018 11:34:49 ******/
DROP PROCEDURE [dbo].[RevisarViajesDia]
GO
/****** Object:  StoredProcedure [dbo].[RevisarNumVentas]    Script Date: 27/10/2018 11:34:49 ******/
DROP PROCEDURE [dbo].[RevisarNumVentas]
GO
/****** Object:  StoredProcedure [dbo].[RestablecerCliente]    Script Date: 27/10/2018 11:34:49 ******/
DROP PROCEDURE [dbo].[RestablecerCliente]
GO
/****** Object:  StoredProcedure [dbo].[PromedioVentaBoletos]    Script Date: 27/10/2018 11:34:49 ******/
DROP PROCEDURE [dbo].[PromedioVentaBoletos]
GO
/****** Object:  StoredProcedure [dbo].[PagoConMoneda]    Script Date: 27/10/2018 11:34:49 ******/
DROP PROCEDURE [dbo].[PagoConMoneda]
GO
/****** Object:  StoredProcedure [dbo].[NumeroVentas]    Script Date: 27/10/2018 11:34:49 ******/
DROP PROCEDURE [dbo].[NumeroVentas]
GO
/****** Object:  StoredProcedure [dbo].[Name]    Script Date: 27/10/2018 11:34:49 ******/
DROP PROCEDURE [dbo].[Name]
GO
/****** Object:  StoredProcedure [dbo].[Moneda]    Script Date: 27/10/2018 11:34:49 ******/
DROP PROCEDURE [dbo].[Moneda]
GO
/****** Object:  StoredProcedure [dbo].[Fech_N]    Script Date: 27/10/2018 11:34:49 ******/
DROP PROCEDURE [dbo].[Fech_N]
GO
/****** Object:  StoredProcedure [dbo].[Descripcion]    Script Date: 27/10/2018 11:34:49 ******/
DROP PROCEDURE [dbo].[Descripcion]
GO
/****** Object:  StoredProcedure [dbo].[CantidadPorMoneda]    Script Date: 27/10/2018 11:34:49 ******/
DROP PROCEDURE [dbo].[CantidadPorMoneda]
GO
/****** Object:  StoredProcedure [dbo].[CantidadMoneda]    Script Date: 27/10/2018 11:34:49 ******/
DROP PROCEDURE [dbo].[CantidadMoneda]
GO
/****** Object:  StoredProcedure [dbo].[BuscadorPorId]    Script Date: 27/10/2018 11:34:49 ******/
DROP PROCEDURE [dbo].[BuscadorPorId]
GO
/****** Object:  StoredProcedure [dbo].[BancosOrigen]    Script Date: 27/10/2018 11:34:49 ******/
DROP PROCEDURE [dbo].[BancosOrigen]
GO
ALTER TABLE [dbo].[Viaje] DROP CONSTRAINT [FK_Viaje_Rutas]
GO
ALTER TABLE [dbo].[Viaje] DROP CONSTRAINT [FK_Viaje_Conductores]
GO
ALTER TABLE [dbo].[Viaje] DROP CONSTRAINT [FK_Viaje_Autobuses]
GO
ALTER TABLE [dbo].[Venta] DROP CONSTRAINT [FK_Venta_Cliente]
GO
ALTER TABLE [dbo].[Venta] DROP CONSTRAINT [FK_Venta_Cajero]
GO
ALTER TABLE [dbo].[Rutas] DROP CONSTRAINT [FK_Rutas_Ciudades1]
GO
ALTER TABLE [dbo].[Producto] DROP CONSTRAINT [FK_Producto_Categorias]
GO
ALTER TABLE [dbo].[Pago] DROP CONSTRAINT [FK__Pago__Tipo__1F63A897]
GO
ALTER TABLE [dbo].[Pago] DROP CONSTRAINT [FK__Pago__Moneda__2057CCD0]
GO
ALTER TABLE [dbo].[Empleados] DROP CONSTRAINT [FK_Empleados_Puesto]
GO
ALTER TABLE [dbo].[Detalles_Venta] DROP CONSTRAINT [FK_DetallesVenta_Venta]
GO
ALTER TABLE [dbo].[Detalles_Venta] DROP CONSTRAINT [FK_DetallesVenta_Producto]
GO
ALTER TABLE [dbo].[Conductores] DROP CONSTRAINT [FK_Conductores_Empleados]
GO
ALTER TABLE [dbo].[Cliente_Boletos] DROP CONSTRAINT [FK_ClienteBoletos_Cliente]
GO
ALTER TABLE [dbo].[Cliente_Boletos] DROP CONSTRAINT [FK_ClienteBoletos_Boletos]
GO
ALTER TABLE [dbo].[Ciudades] DROP CONSTRAINT [FK_Ciudades_Estados]
GO
ALTER TABLE [dbo].[Cajeros] DROP CONSTRAINT [FK_Cajeros_Empleados]
GO
ALTER TABLE [dbo].[Boletos_Asientos] DROP CONSTRAINT [FK_BoletoAsientos_Boletos]
GO
ALTER TABLE [dbo].[Boletos_Asientos] DROP CONSTRAINT [FK_BoletoAsientos_Asientos]
GO
ALTER TABLE [dbo].[Boletos] DROP CONSTRAINT [FK_Boletos_Viaje]
GO
ALTER TABLE [dbo].[Boletos] DROP CONSTRAINT [FK_Boletos_TPasajero]
GO
ALTER TABLE [dbo].[Boletos] DROP CONSTRAINT [FK_Boletos_Producto]
GO
ALTER TABLE [dbo].[Bancos] DROP CONSTRAINT [FK__Bancos__Regimien__1B9317B3]
GO
ALTER TABLE [dbo].[Bancos] DROP CONSTRAINT [FK__Bancos__Nivel__1C873BEC]
GO
ALTER TABLE [dbo].[Asientos] DROP CONSTRAINT [FK_Asientos_Autobuses]
GO
/****** Object:  View [dbo].[viajes_programados]    Script Date: 27/10/2018 11:34:49 ******/
DROP VIEW [dbo].[viajes_programados]
GO
/****** Object:  View [dbo].[viaje_autobus]    Script Date: 27/10/2018 11:34:49 ******/
DROP VIEW [dbo].[viaje_autobus]
GO
/****** Object:  View [dbo].[tipos_boletos]    Script Date: 27/10/2018 11:34:49 ******/
DROP VIEW [dbo].[tipos_boletos]
GO
/****** Object:  View [dbo].[TipoMonedaDL]    Script Date: 27/10/2018 11:34:49 ******/
DROP VIEW [dbo].[TipoMonedaDL]
GO
/****** Object:  View [dbo].[Telfono_ID9]    Script Date: 27/10/2018 11:34:49 ******/
DROP VIEW [dbo].[Telfono_ID9]
GO
/****** Object:  View [dbo].[Pago_y_Tipo]    Script Date: 27/10/2018 11:34:49 ******/
DROP VIEW [dbo].[Pago_y_Tipo]
GO
/****** Object:  View [dbo].[numero_ventas]    Script Date: 27/10/2018 11:34:49 ******/
DROP VIEW [dbo].[numero_ventas]
GO
/****** Object:  View [dbo].[NombreCompleto]    Script Date: 27/10/2018 11:34:49 ******/
DROP VIEW [dbo].[NombreCompleto]
GO
/****** Object:  View [dbo].[Nacimiento_Blanco]    Script Date: 27/10/2018 11:34:49 ******/
DROP VIEW [dbo].[Nacimiento_Blanco]
GO
/****** Object:  View [dbo].[Monedas]    Script Date: 27/10/2018 11:34:49 ******/
DROP VIEW [dbo].[Monedas]
GO
/****** Object:  View [dbo].[Menor_10]    Script Date: 27/10/2018 11:34:49 ******/
DROP VIEW [dbo].[Menor_10]
GO
/****** Object:  View [dbo].[Id_Empleado]    Script Date: 27/10/2018 11:34:49 ******/
DROP VIEW [dbo].[Id_Empleado]
GO
/****** Object:  View [dbo].[Existente]    Script Date: 27/10/2018 11:34:49 ******/
DROP VIEW [dbo].[Existente]
GO
/****** Object:  View [dbo].[CuantosDeMonedasPorTipo]    Script Date: 27/10/2018 11:34:49 ******/
DROP VIEW [dbo].[CuantosDeMonedasPorTipo]
GO
/****** Object:  View [dbo].[cliente_promedio]    Script Date: 27/10/2018 11:34:49 ******/
DROP VIEW [dbo].[cliente_promedio]
GO
/****** Object:  UserDefinedFunction [dbo].[FuncionPrueba]    Script Date: 27/10/2018 11:34:49 ******/
DROP FUNCTION [dbo].[FuncionPrueba]
GO
/****** Object:  Table [dbo].[Viaje]    Script Date: 27/10/2018 11:34:49 ******/
DROP TABLE [dbo].[Viaje]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 27/10/2018 11:34:49 ******/
DROP TABLE [dbo].[Venta]
GO
/****** Object:  Table [dbo].[TipoDePago]    Script Date: 27/10/2018 11:34:49 ******/
DROP TABLE [dbo].[TipoDePago]
GO
/****** Object:  Table [dbo].[TipoDeMoneda]    Script Date: 27/10/2018 11:34:49 ******/
DROP TABLE [dbo].[TipoDeMoneda]
GO
/****** Object:  Table [dbo].[Tipo_Pasajero]    Script Date: 27/10/2018 11:34:49 ******/
DROP TABLE [dbo].[Tipo_Pasajero]
GO
/****** Object:  Table [dbo].[Rutas]    Script Date: 27/10/2018 11:34:49 ******/
DROP TABLE [dbo].[Rutas]
GO
/****** Object:  Table [dbo].[Regimiento]    Script Date: 27/10/2018 11:34:49 ******/
DROP TABLE [dbo].[Regimiento]
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 27/10/2018 11:34:49 ******/
DROP TABLE [dbo].[Puesto]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 27/10/2018 11:34:49 ******/
DROP TABLE [dbo].[Producto]
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 27/10/2018 11:34:49 ******/
DROP TABLE [dbo].[Pago]
GO
/****** Object:  Table [dbo].[NivelB]    Script Date: 27/10/2018 11:34:49 ******/
DROP TABLE [dbo].[NivelB]
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 27/10/2018 11:34:49 ******/
DROP TABLE [dbo].[Estados]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 27/10/2018 11:34:49 ******/
DROP TABLE [dbo].[Empleados]
GO
/****** Object:  Table [dbo].[Detalles_Venta]    Script Date: 27/10/2018 11:34:49 ******/
DROP TABLE [dbo].[Detalles_Venta]
GO
/****** Object:  Table [dbo].[Conductores]    Script Date: 27/10/2018 11:34:49 ******/
DROP TABLE [dbo].[Conductores]
GO
/****** Object:  Table [dbo].[Cliente_Boletos]    Script Date: 27/10/2018 11:34:49 ******/
DROP TABLE [dbo].[Cliente_Boletos]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 27/10/2018 11:34:49 ******/
DROP TABLE [dbo].[Cliente]
GO
/****** Object:  Table [dbo].[Ciudades]    Script Date: 27/10/2018 11:34:49 ******/
DROP TABLE [dbo].[Ciudades]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 27/10/2018 11:34:49 ******/
DROP TABLE [dbo].[Categorias]
GO
/****** Object:  Table [dbo].[Cajeros]    Script Date: 27/10/2018 11:34:49 ******/
DROP TABLE [dbo].[Cajeros]
GO
/****** Object:  Table [dbo].[Boletos_Asientos]    Script Date: 27/10/2018 11:34:49 ******/
DROP TABLE [dbo].[Boletos_Asientos]
GO
/****** Object:  Table [dbo].[Boletos]    Script Date: 27/10/2018 11:34:49 ******/
DROP TABLE [dbo].[Boletos]
GO
/****** Object:  Table [dbo].[Bancos]    Script Date: 27/10/2018 11:34:49 ******/
DROP TABLE [dbo].[Bancos]
GO
/****** Object:  Table [dbo].[Autobuses]    Script Date: 27/10/2018 11:34:49 ******/
DROP TABLE [dbo].[Autobuses]
GO
/****** Object:  Table [dbo].[Asientos]    Script Date: 27/10/2018 11:34:49 ******/
DROP TABLE [dbo].[Asientos]
GO
/****** Object:  UserDefinedFunction [dbo].[VentasTotalesDolares]    Script Date: 27/10/2018 11:34:49 ******/
DROP FUNCTION [dbo].[VentasTotalesDolares]
GO
USE [master]
GO
/****** Object:  Database [Proyecto_BDComplete]    Script Date: 27/10/2018 11:34:49 ******/
DROP DATABASE [Proyecto_BDComplete]
GO
/****** Object:  Database [Proyecto_BDComplete]    Script Date: 27/10/2018 11:34:49 ******/
CREATE DATABASE [Proyecto_BDComplete]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Proyecto_BDComplete', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Proyecto_BDComplete.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Proyecto_BDComplete_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Proyecto_BDComplete_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Proyecto_BDComplete] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Proyecto_BDComplete].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Proyecto_BDComplete] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Proyecto_BDComplete] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Proyecto_BDComplete] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Proyecto_BDComplete] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Proyecto_BDComplete] SET ARITHABORT OFF 
GO
ALTER DATABASE [Proyecto_BDComplete] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Proyecto_BDComplete] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Proyecto_BDComplete] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Proyecto_BDComplete] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Proyecto_BDComplete] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Proyecto_BDComplete] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Proyecto_BDComplete] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Proyecto_BDComplete] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Proyecto_BDComplete] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Proyecto_BDComplete] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Proyecto_BDComplete] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Proyecto_BDComplete] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Proyecto_BDComplete] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Proyecto_BDComplete] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Proyecto_BDComplete] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Proyecto_BDComplete] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Proyecto_BDComplete] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Proyecto_BDComplete] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Proyecto_BDComplete] SET  MULTI_USER 
GO
ALTER DATABASE [Proyecto_BDComplete] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Proyecto_BDComplete] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Proyecto_BDComplete] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Proyecto_BDComplete] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Proyecto_BDComplete] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Proyecto_BDComplete]
GO
/****** Object:  UserDefinedFunction [dbo].[VentasTotalesDolares]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[VentasTotalesDolares](
@PrecioDolar money,
@Mes int
) RETURNS money
AS
BEGIN
	return (SELECT SUM(Total) FROM Venta WHERE DATEPART(MONTH, Fecha_Venta) = @Mes)/@PrecioDolar
END
GO
/****** Object:  Table [dbo].[Asientos]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Asientos](
	[Num_Asiento] [varchar](5) NOT NULL,
	[Id_Autobus] [int] NOT NULL,
	[Reservado] [bit] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_Asientos_NumAsiento] PRIMARY KEY CLUSTERED 
(
	[Num_Asiento] ASC,
	[Id_Autobus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Autobuses]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Autobuses](
	[Id_Autobus] [int] NOT NULL,
	[Marca] [varchar](50) NOT NULL,
	[Modelo] [varchar](30) NOT NULL,
	[Capacidad] [tinyint] NOT NULL,
	[Placas] [varchar](15) NOT NULL,
 CONSTRAINT [PK_Autobuses_IdAutobus] PRIMARY KEY CLUSTERED 
(
	[Id_Autobus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bancos]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bancos](
	[BancosId] [int] NOT NULL,
	[Nombre] [varchar](20) NULL,
	[Origen] [varchar](20) NULL,
	[monedas] [varchar](20) NULL,
	[Regimiento] [int] NULL,
	[Nivel] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[BancosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Boletos]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Boletos](
	[Num_Folio] [varchar](50) NOT NULL,
	[Id_TPasajero] [tinyint] NOT NULL,
	[Id_Viaje] [int] NOT NULL,
	[Num_Asiento] [varchar](5) NOT NULL,
	[Id_Producto] [int] NOT NULL,
	[Precio] [int] NULL,
 CONSTRAINT [PK_Boletos_NumFolio] PRIMARY KEY CLUSTERED 
(
	[Num_Folio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Boletos_Asientos]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Boletos_Asientos](
	[Id_Boleto] [varchar](50) NOT NULL,
	[Num_Asiento] [varchar](5) NOT NULL,
	[Id_Autobus] [int] NOT NULL,
 CONSTRAINT [PK_BoletosAsientos_IdBoleto] PRIMARY KEY CLUSTERED 
(
	[Id_Boleto] ASC,
	[Num_Asiento] ASC,
	[Id_Autobus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cajeros]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cajeros](
	[Id_Cajero] [int] NOT NULL,
	[Num_Caja] [tinyint] NOT NULL,
 CONSTRAINT [PK_Cajeros_IdCajero] PRIMARY KEY CLUSTERED 
(
	[Id_Cajero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categorias](
	[Id_Categoria] [int] NOT NULL,
	[Descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Categorias_IdCategoria] PRIMARY KEY CLUSTERED 
(
	[Id_Categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ciudades]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ciudades](
	[Id_Ciudad] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Id_Estado] [int] NOT NULL,
 CONSTRAINT [PK_Ciudades_IdCiudad] PRIMARY KEY CLUSTERED 
(
	[Id_Ciudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id_Cliente] [int] NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
	[Apellido] [varchar](20) NOT NULL,
	[Correo] [varchar](30) NULL,
	[Telefono] [int] NULL,
 CONSTRAINT [PK_Cliente_IdCliente] PRIMARY KEY CLUSTERED 
(
	[Id_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cliente_Boletos]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente_Boletos](
	[Id_Cliente] [int] NOT NULL,
	[Id_Boleto] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ClienteBoletos_IdCliente] PRIMARY KEY CLUSTERED 
(
	[Id_Cliente] ASC,
	[Id_Boleto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Conductores]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Conductores](
	[Id_Conductor] [int] NOT NULL,
	[Licencia] [varchar](15) NOT NULL,
 CONSTRAINT [PK_Conductores_IdConductor] PRIMARY KEY CLUSTERED 
(
	[Id_Conductor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Detalles_Venta]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalles_Venta](
	[Id_Detalles] [int] NOT NULL,
	[Id_Venta] [int] NOT NULL,
	[Id_Producto] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Precio_Unitario] [money] NOT NULL,
	[IVA] [money] NOT NULL,
	[Subtotal] [money] NOT NULL,
 CONSTRAINT [PK_DetallesVenta_IdDetalles] PRIMARY KEY CLUSTERED 
(
	[Id_Detalles] ASC,
	[Id_Venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleados](
	[Id_Empleado] [int] NOT NULL,
	[Id_Puesto] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellidos] [varchar](50) NOT NULL,
	[Sexo] [varchar](15) NOT NULL,
	[Fech_Nac] [date] NOT NULL,
	[Correo] [varchar](50) NOT NULL DEFAULT ('N/A'),
	[Telefono] [varchar](15) NOT NULL DEFAULT ('N/A'),
 CONSTRAINT [PK_Empleados_IdEmpleado] PRIMARY KEY CLUSTERED 
(
	[Id_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estados](
	[Id_Estado] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Estados_IdEstado] PRIMARY KEY CLUSTERED 
(
	[Id_Estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NivelB]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NivelB](
	[Id_Nivel] [int] NOT NULL,
	[Descripcion] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Nivel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pago](
	[PagoId] [int] NOT NULL,
	[Tipo] [int] NULL,
	[Moneda] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PagoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Producto]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Producto](
	[Id_Producto] [int] NOT NULL,
	[Id_Categoria] [int] NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Stock] [int] NOT NULL,
	[Precio_Compra] [money] NULL,
	[Precio_Venta] [money] NOT NULL,
 CONSTRAINT [PK_Producto_IdProducto] PRIMARY KEY CLUSTERED 
(
	[Id_Producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Puesto](
	[Id_Puesto] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Puesto_IdPuesto] PRIMARY KEY CLUSTERED 
(
	[Id_Puesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Regimiento]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Regimiento](
	[Id_Regimiento] [int] NOT NULL,
	[Descripcion] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Regimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rutas]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rutas](
	[Id_Ruta] [int] NOT NULL,
	[Ciudad_Origen] [int] NOT NULL,
	[Ciudad_Destino] [int] NOT NULL,
	[Duracion] [time](7) NOT NULL,
	[Escalas] [tinyint] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_Rutas_IdRuta] PRIMARY KEY CLUSTERED 
(
	[Id_Ruta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tipo_Pasajero]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tipo_Pasajero](
	[Id_Tipo] [tinyint] NOT NULL,
	[Tipo] [varchar](40) NOT NULL DEFAULT ('Adulto'),
 CONSTRAINT [PK_TipoPasajero_IdTipo] PRIMARY KEY CLUSTERED 
(
	[Id_Tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoDeMoneda]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoDeMoneda](
	[TipoMonedaId] [int] NOT NULL,
	[TipoDeMon] [varchar](2) NOT NULL,
	[Pais] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TipoMonedaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoDePago]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoDePago](
	[TipoId] [int] NOT NULL,
	[TipoDP] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TipoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Venta](
	[Id_Venta] [int] NOT NULL,
	[Id_Cajero] [int] NOT NULL,
	[Id_Cliente] [int] NOT NULL,
	[Serie] [varchar](5) NOT NULL,
	[Fecha_Venta] [datetime] NOT NULL,
	[Total] [money] NOT NULL,
 CONSTRAINT [PK_Venta_IdVenta] PRIMARY KEY CLUSTERED 
(
	[Id_Venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Viaje]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Viaje](
	[Id_Viaje] [int] NOT NULL,
	[Id_Ruta] [int] NOT NULL,
	[Id_Autobus] [int] NOT NULL,
	[Id_Conductor] [int] NOT NULL,
	[FechaHora_Salida] [datetime] NOT NULL,
	[TerminalSalida] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Viajes_IdViaje] PRIMARY KEY CLUSTERED 
(
	[Id_Viaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[FuncionPrueba]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[FuncionPrueba] (@id2 int)
returns table
as
return 
select * from Bancos where BancosId = @id2

GO
/****** Object:  View [dbo].[cliente_promedio]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[cliente_promedio]
	AS SELECT AVG(CantidadBoletos.Cantidad) as PromedioBoletosxCliente 
	FROM (SELECT COUNT(Id_Boleto) as Cantidad FROM Cliente_Boletos GROUP BY Id_Cliente) as CantidadBoletos
GO
/****** Object:  View [dbo].[CuantosDeMonedasPorTipo]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[CuantosDeMonedasPorTipo]
as
select count(Moneda) as ConteoMoneda, Tipo from Pago group by Tipo

GO
/****** Object:  View [dbo].[Existente]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Existente] 
 as
 select Nombre, Stock from Producto
GO
/****** Object:  View [dbo].[Id_Empleado]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Id_Empleado]
 as
 select Id_Empleado as ID, Nombre + Apellidos as Nombre_Completo from Empleados
GO
/****** Object:  View [dbo].[Menor_10]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Menor_10]
as
select * from Empleados where Id_Puesto < 10
 
GO
/****** Object:  View [dbo].[Monedas]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Monedas] 
as 
select PagoId, Moneda from Pago where PagoId > 2

GO
/****** Object:  View [dbo].[Nacimiento_Blanco]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Nacimiento_Blanco]
 as
 select Fech_Nac from Empleados where Apellidos = 'Blanco'
GO
/****** Object:  View [dbo].[NombreCompleto]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[NombreCompleto]
as
select Nombre, Nombre + Apellido as NombreCompleto from Cliente


GO
/****** Object:  View [dbo].[numero_ventas]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[numero_ventas]
	AS SELECT COUNT(Id_Venta) as Ventas FROM Venta WHERE DATEPART(MONTH, Fecha_Venta) = DATEPART(MONTH, GETDATE())
GO
/****** Object:  View [dbo].[Pago_y_Tipo]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Pago_y_Tipo]
as
select PagoId, Tipo, Moneda,TipoDeMon from Pago inner join TipoDeMoneda on Moneda = TipoMonedaId

GO
/****** Object:  View [dbo].[Telfono_ID9]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE view [dbo].[Telfono_ID9]
 as
 select Nombre, Telefono from Empleados where Id_Empleado = 9
GO
/****** Object:  View [dbo].[TipoMonedaDL]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[TipoMonedaDL]
as
select TipoDeMon, Pais from TipoDeMoneda where TipoDeMon = 'DL'

GO
/****** Object:  View [dbo].[tipos_boletos]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[tipos_boletos]
	AS SELECT t.Tipo, COUNT(Num_Folio) as Cantidad FROM Boletos as b RIGHT JOIN Tipo_Pasajero as t ON t.Id_Tipo = b.Id_TPasajero GROUP BY t.Tipo
GO
/****** Object:  View [dbo].[viaje_autobus]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[viaje_autobus]
	AS SELECT a.Id_Autobus, a.Modelo, COUNT(v.Id_Autobus) as NumeroViajes
	 FROM Viaje as v RIGHT JOIN Autobuses as a ON a.Id_Autobus=v.Id_Autobus GROUP BY a.Id_Autobus, a.Modelo
GO
/****** Object:  View [dbo].[viajes_programados]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[viajes_programados]
	AS SELECT COUNT(Id_Viaje) as Viajes FROM Viaje WHERE DATEPART(MONTH, FechaHora_Salida) = DATEPART(MONTH, GETDATE())
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'01', 1, 1)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'A1', 1, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'A1', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'A1', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'A1', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'A1', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'A2', 1, 1)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'A2', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'A2', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'A2', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'A2', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'A3', 1, 1)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'A3', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'A3', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'A3', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'A3', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'A4', 1, 1)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'A4', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'A4', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'A4', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'A4', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'B1', 1, 1)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'B1', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'B1', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'B1', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'B1', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'B2', 1, 1)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'B2', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'B2', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'B2', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'B2', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'B3', 1, 1)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'B3', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'B3', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'B3', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'B3', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'B4', 1, 1)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'B4', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'B4', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'B4', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'B4', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'C1', 1, 1)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'C1', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'C1', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'C1', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'C1', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'C2', 1, 1)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'C2', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'C2', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'C2', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'C2', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'C3', 1, 1)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'C3', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'C3', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'C3', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'C3', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'C4', 1, 1)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'C4', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'C4', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'C4', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'C4', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'D1', 1, 1)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'D1', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'D1', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'D1', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'D1', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'D2', 1, 1)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'D2', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'D2', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'D2', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'D2', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'D3', 1, 1)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'D3', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'D3', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'D3', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'D3', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'D4', 1, 1)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'D4', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'D4', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'D4', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'D4', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'E1', 1, 1)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'E1', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'E1', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'E1', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'E1', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'E2', 1, 1)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'E2', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'E2', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'E2', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'E2', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'E3', 1, 1)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'E3', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'E3', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'E3', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'E3', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'E4', 1, 1)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'E4', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'E4', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'E4', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'E4', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'F1', 1, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'F1', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'F1', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'F1', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'F1', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'F2', 1, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'F2', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'F2', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'F2', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'F2', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'F3', 1, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'F3', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'F3', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'F3', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'F3', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'F4', 1, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'F4', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'F4', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'F4', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'F4', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'G1', 1, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'G1', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'G1', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'G1', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'G1', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'G2', 1, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'G2', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'G2', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'G2', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'G2', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'G3', 1, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'G3', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'G3', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'G3', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'G3', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'G4', 1, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'G4', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'G4', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'G4', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'G4', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'H1', 1, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'H1', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'H1', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'H1', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'H1', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'H2', 1, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'H2', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'H2', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'H2', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'H2', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'H3', 1, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'H3', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'H3', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'H3', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'H3', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'H4', 1, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'H4', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'H4', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'H4', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'H4', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'I1', 1, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'I1', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'I1', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'I1', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'I1', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'I2', 1, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'I2', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'I2', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'I2', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'I2', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'I3', 1, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'I3', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'I3', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'I3', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'I3', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'I4', 1, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'I4', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'I4', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'I4', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'I4', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'J1', 1, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'J1', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'J1', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'J1', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'J1', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'J2', 1, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'J2', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'J2', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'J2', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'J2', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'J3', 1, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'J3', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'J3', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'J3', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'J3', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'J4', 1, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'J4', 2, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'J4', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'J4', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'J4', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'K1', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'K1', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'K1', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'K2', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'K2', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'K2', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'K3', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'K3', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'K3', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'K4', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'K4', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'K4', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'K5', 3, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'K5', 5, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'L1', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'L2', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'L3', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'L4', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'M1', 4, 0)
GO
INSERT [dbo].[Asientos] ([Num_Asiento], [Id_Autobus], [Reservado]) VALUES (N'M2', 4, 0)
GO
INSERT [dbo].[Autobuses] ([Id_Autobus], [Marca], [Modelo], [Capacidad], [Placas]) VALUES (1, N'Mercedes Benz', N'Boxer Of', 50, N'HTF647')
GO
INSERT [dbo].[Autobuses] ([Id_Autobus], [Marca], [Modelo], [Capacidad], [Placas]) VALUES (2, N'Mercedes Benz', N'Boxer Of', 50, N'JTG456')
GO
INSERT [dbo].[Autobuses] ([Id_Autobus], [Marca], [Modelo], [Capacidad], [Placas]) VALUES (3, N'Mercedes Benz', N'Boxer Of', 50, N'AER894')
GO
INSERT [dbo].[Autobuses] ([Id_Autobus], [Marca], [Modelo], [Capacidad], [Placas]) VALUES (4, N'Mercedes Benz', N'Boxer Of', 50, N'KNG674')
GO
INSERT [dbo].[Autobuses] ([Id_Autobus], [Marca], [Modelo], [Capacidad], [Placas]) VALUES (5, N'Mercedes Benz', N'Boxer Of', 50, N'HNZ875')
GO
INSERT [dbo].[Autobuses] ([Id_Autobus], [Marca], [Modelo], [Capacidad], [Placas]) VALUES (6, N'Mercedes Benz', N'Boxer Of', 50, N'GHJ457')
GO
INSERT [dbo].[Autobuses] ([Id_Autobus], [Marca], [Modelo], [Capacidad], [Placas]) VALUES (7, N'Mercedes Benz', N'Boxer Of', 50, N'DBE343')
GO
INSERT [dbo].[Autobuses] ([Id_Autobus], [Marca], [Modelo], [Capacidad], [Placas]) VALUES (8, N'Mercedes Benz', N'Boxer Of', 50, N'GBB354')
GO
INSERT [dbo].[Autobuses] ([Id_Autobus], [Marca], [Modelo], [Capacidad], [Placas]) VALUES (9, N'Mercedes Benz', N'GRAN VIALE LE CNG', 60, N'NFR356')
GO
INSERT [dbo].[Autobuses] ([Id_Autobus], [Marca], [Modelo], [Capacidad], [Placas]) VALUES (10, N'Mercedes Benz', N'GRAN VIALE LE CNG', 60, N'BFD354')
GO
INSERT [dbo].[Autobuses] ([Id_Autobus], [Marca], [Modelo], [Capacidad], [Placas]) VALUES (11, N'Mercedes Benz', N'GRAN VIALE LE CNG', 60, N'HKF675')
GO
INSERT [dbo].[Autobuses] ([Id_Autobus], [Marca], [Modelo], [Capacidad], [Placas]) VALUES (12, N'Mercedes Benz', N'GRAN VIALE LE CNG', 60, N'DFG424')
GO
INSERT [dbo].[Autobuses] ([Id_Autobus], [Marca], [Modelo], [Capacidad], [Placas]) VALUES (13, N'Mercedes Benz', N'GRAN VIALE LE CNG', 60, N'GGE421')
GO
INSERT [dbo].[Autobuses] ([Id_Autobus], [Marca], [Modelo], [Capacidad], [Placas]) VALUES (14, N'Mercedes Benz', N'GRAN VIALE LE CNG', 60, N'HJH245')
GO
INSERT [dbo].[Autobuses] ([Id_Autobus], [Marca], [Modelo], [Capacidad], [Placas]) VALUES (15, N'Mercedes Benz', N'GRAN VIALE LE CNG', 60, N'GHF333')
GO
INSERT [dbo].[Autobuses] ([Id_Autobus], [Marca], [Modelo], [Capacidad], [Placas]) VALUES (16, N'Mercedes Benz', N'GRAN VIALE LE CNG', 60, N'DRG232')
GO
INSERT [dbo].[Autobuses] ([Id_Autobus], [Marca], [Modelo], [Capacidad], [Placas]) VALUES (17, N'Mercedes Benz', N'GRAN VIALE LE CNG', 60, N'kgy452')
GO
INSERT [dbo].[Autobuses] ([Id_Autobus], [Marca], [Modelo], [Capacidad], [Placas]) VALUES (18, N'Mercedes Benz', N'GRAN VIALE LE CNG', 60, N'AAZ064')
GO
INSERT [dbo].[Autobuses] ([Id_Autobus], [Marca], [Modelo], [Capacidad], [Placas]) VALUES (19, N'Mercedes Benz', N'GRAN VIALE LE CNG', 60, N'LLG455')
GO
INSERT [dbo].[Autobuses] ([Id_Autobus], [Marca], [Modelo], [Capacidad], [Placas]) VALUES (20, N'Transportes del Norte', N'DINA Avante', 40, N'ABC-123')
GO
INSERT [dbo].[Autobuses] ([Id_Autobus], [Marca], [Modelo], [Capacidad], [Placas]) VALUES (21, N'Transportes del Norte', N'DINA Avante', 40, N'FGH-877')
GO
INSERT [dbo].[Autobuses] ([Id_Autobus], [Marca], [Modelo], [Capacidad], [Placas]) VALUES (22, N'Tamaulipas', N'BonluckBus J6140', 45, N'THF-652')
GO
INSERT [dbo].[Autobuses] ([Id_Autobus], [Marca], [Modelo], [Capacidad], [Placas]) VALUES (23, N'Coahuilenses', N'Neobus NG', 50, N'HFA-452')
GO
INSERT [dbo].[Autobuses] ([Id_Autobus], [Marca], [Modelo], [Capacidad], [Placas]) VALUES (24, N'Turimex Internacional', N'BonluckBus J6140', 45, N'GHK-865')
GO
INSERT [dbo].[Bancos] ([BancosId], [Nombre], [Origen], [monedas], [Regimiento], [Nivel]) VALUES (1, N'Santander', N'Monterrey', N'Pesos', 3, 1)
GO
INSERT [dbo].[Bancos] ([BancosId], [Nombre], [Origen], [monedas], [Regimiento], [Nivel]) VALUES (2, N'Bancomer', N'Monterrey', N'Pesos', 3, 1)
GO
INSERT [dbo].[Bancos] ([BancosId], [Nombre], [Origen], [monedas], [Regimiento], [Nivel]) VALUES (3, N'American ', N'USA', N'Dolar', 2, 3)
GO
INSERT [dbo].[Bancos] ([BancosId], [Nombre], [Origen], [monedas], [Regimiento], [Nivel]) VALUES (4, N'Western ', N'USA', N'Dolar', NULL, NULL)
GO
INSERT [dbo].[Bancos] ([BancosId], [Nombre], [Origen], [monedas], [Regimiento], [Nivel]) VALUES (6, N'Suize', N'Monterrey', N'Pesos', 3, 1)
GO
INSERT [dbo].[Bancos] ([BancosId], [Nombre], [Origen], [monedas], [Regimiento], [Nivel]) VALUES (7, N'SantanderE', N'Monterrey', N'Pesos', 3, 1)
GO
INSERT [dbo].[Bancos] ([BancosId], [Nombre], [Origen], [monedas], [Regimiento], [Nivel]) VALUES (8, N'SantanderO', N'Monterrey', N'Pesos', 3, 1)
GO
INSERT [dbo].[Bancos] ([BancosId], [Nombre], [Origen], [monedas], [Regimiento], [Nivel]) VALUES (9, N'BanamexE', N'Torreon', N'Pesos', 5, 4)
GO
INSERT [dbo].[Bancos] ([BancosId], [Nombre], [Origen], [monedas], [Regimiento], [Nivel]) VALUES (10, N'BanamexO', N'Monterrey', N'Pesos', 3, 1)
GO
INSERT [dbo].[Bancos] ([BancosId], [Nombre], [Origen], [monedas], [Regimiento], [Nivel]) VALUES (11, N'American ', N'USA', N'Dolar', 2, 3)
GO
INSERT [dbo].[Bancos] ([BancosId], [Nombre], [Origen], [monedas], [Regimiento], [Nivel]) VALUES (12, N'Santander2', N'Monterrey2', N'Pesos', 5, 4)
GO
INSERT [dbo].[Bancos] ([BancosId], [Nombre], [Origen], [monedas], [Regimiento], [Nivel]) VALUES (13, N'Santander3', N'Monterrey3', N'Pesos', 5, 4)
GO
INSERT [dbo].[Bancos] ([BancosId], [Nombre], [Origen], [monedas], [Regimiento], [Nivel]) VALUES (14, N'Santander4', N'Monterrey4', N'Pesos', 5, 4)
GO
INSERT [dbo].[Bancos] ([BancosId], [Nombre], [Origen], [monedas], [Regimiento], [Nivel]) VALUES (15, N'Santander5', N'Monterrey5', N'Pesos', 5, 4)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'0075D3F1-C567-4876-B385-00DB046A9AE6', 2, 4, N'G1', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'0266FA20-F425-467F-902B-D4BA509B6B3F', 2, 3, N'E1', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'05E76804-E5BC-4837-A4C2-E2C673AF44D5', 2, 4, N'I4', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'0A2D394C-728F-487D-B6B8-EEEA01A2F076', 2, 2, N'D4', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'0B0DE961-B491-40EC-85C6-A2E7C5A22B46', 2, 3, N'C1', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'0B78D0C9-4CAC-492A-AAFB-2D5901F6F0C6', 2, 1, N'H3', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'0BC47587-450C-41B3-8DA2-14DC6BFEA867', 2, 1, N'L2', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'0D0D300A-FDDB-4940-8955-0CCC31AC1628', 2, 1, N'D3', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'0E8FAAAA-1812-4AE6-94A0-4FBE34626BC5', 2, 3, N'D1', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'0FA434CC-A3E7-4F56-A012-DA102DA065CF', 2, 2, N'C4', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'0FC20A22-BC8A-45C7-A7FA-B0CA9256550F', 2, 2, N'D2', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'10EBE4E8-1638-42E3-9EF2-C9759BD163DC', 2, 3, N'I3', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'1395F385-B8D5-4DE7-BCBA-EC8A5119AF38', 2, 4, N'E4', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'15A6B271-C4EB-4FF1-9D1D-6C7D83A92F77', 2, 3, N'B2', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'165D4390-5E2C-42EE-ADD6-77F522118C9E', 2, 1, N'F1', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'17AF1743-4124-4F32-9AEB-DDB189C888FF', 2, 2, N'G4', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'181257A2-5FA3-4FC4-9E9C-31E4C348B9AE', 2, 3, N'I2', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'19D9A5EA-E788-4210-8195-FC43B2799C4E', 2, 1, N'G4', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'1BF1267E-A014-44B4-83C5-9180F605B335', 2, 3, N'J3', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'1CC2BFE9-5A76-4D4E-B030-0A59A4303D79', 2, 3, N'H3', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'1FC9042A-7710-4B06-A635-A27265C3801E', 2, 2, N'F4', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'212C1B8F-5388-4EC0-9954-B2F94FB16895', 2, 3, N'E3', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'23068F7E-C07F-4FE8-8DFC-BDF72D8CBFAE', 2, 4, N'G3', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'230EE236-02DA-455D-85CD-066C6779B3A3', 2, 4, N'E2', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'27193B10-51C5-43A9-862F-D0BCD7D139D1', 2, 2, N'J2', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'2A5DDB96-17D4-4248-907F-EFA54402EB87', 2, 1, N'H4', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'2B2E9D2B-78C1-4BA6-96D6-A8135891D371', 2, 1, N'B3', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'2C64E8CA-3289-4950-98CF-B693EFCAD275', 2, 3, N'J4', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'2DE701C2-4311-441D-A4B5-677E9BFE5C06', 2, 4, N'D2', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'2E7C3040-D09A-4DD2-BE07-EC580D4D4A27', 2, 3, N'B1', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'371A4C78-A672-481E-8FA9-0F1BBC48AE03', 2, 4, N'D3', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'37B6AF52-37D1-4F66-AE6F-65BEBE072CF7', 2, 3, N'D2', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'38866937-E512-4BF8-A67E-EF75944F6EA8', 2, 3, N'E4', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'39390854-7D0F-4A42-A5BD-17B1B22BB0D0', 2, 1, N'D4', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'39A31390-7582-4529-8794-0CBA690FD122', 2, 4, N'F2', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'3B17803A-4C75-41CD-9DF8-860832781803', 2, 1, N'I4', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'3B9AA39C-431E-472A-BBF4-54D285F14A99', 2, 3, N'H1', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'41BBB355-E5DA-493F-A655-F3363439714E', 2, 1, N'J4', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'41FFA950-064E-4E9E-87A5-3FB08E2EC86B', 2, 4, N'K4', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'4266E698-3D6D-41CE-80B8-453775A1A36A', 2, 2, N'H4', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'4536FEB4-BF3E-4D9B-92EC-BB0A5EE4D2B6', 2, 1, N'L1', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'4648B2B3-B212-441B-B2FA-D4EAA233920E', 2, 1, N'F2', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'4704016A-E424-44A2-9CD7-A3C16266EE49', 2, 1, N'J2', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'47BB1875-33FB-4680-9FBB-424B10CC78C5', 2, 2, N'D1', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'48A9E269-C442-4609-97D0-AACE8D57D81C', 2, 2, N'I2', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'48EA3557-5195-4CB7-8D14-917FFDBF1771', 2, 4, N'C2', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'490F5628-A628-45A6-BA8C-1DE800598BD7', 2, 2, N'I3', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'4E95D47F-8CD6-467E-BB8F-8642E81C4D19', 2, 4, N'E1', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'4EE07EA1-78FB-4E76-95DF-1B89F90ADA33', 2, 2, N'F1', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'5018924C-C615-47EE-8449-3F7E9F47FE40', 2, 1, N'B2', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'513C499D-C94B-48A9-9DA7-82B128078BF6', 2, 1, N'L4', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'52C4EAB7-73F1-4BC0-B470-22DE8D0537AB', 2, 3, N'C2', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'5311EA2D-B099-4CBD-A9E6-BD2470B96621', 2, 1, N'F3', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'53651E7B-0785-42C4-B862-B208EFFC2FDB', 2, 4, N'K5', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'559BDD4B-14AC-4D51-999D-F2CEC976B75A', 2, 2, N'J4', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'55C9229C-9DC1-4D66-BD62-B62970F14E68', 2, 1, N'E2', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'56C7C91A-04E5-415D-904A-D6A804CE4C3C', 2, 4, N'K2', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'5983427E-1676-4C09-9288-9C3982716A7A', 2, 1, N'H1', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'5C93AD9B-2962-4D41-9913-669814C3EFB3', 2, 4, N'G2', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'5D0A36A8-D3CF-4999-AC23-42419F6FF276', 2, 2, N'A3', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'6066EFA6-101C-47AB-9330-B0827D1F1E8E', 2, 2, N'G2', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'6265BDBD-F42F-4769-8209-10E563EB3F47', 2, 3, N'F4', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'639161D8-5BBE-46D2-9847-5D80C03258F0', 2, 4, N'B1', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'66122DF6-F041-437F-A85D-CAB089F1B70E', 2, 1, N'D1', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'66168D86-04D0-4199-937F-495A3BA25870', 2, 4, N'A4', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'6763B09A-5A08-4C75-ADF0-DF95FAB06671', 2, 4, N'C3', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'690A49FE-29E1-4EB0-A33C-D26AEA2C2007', 2, 3, N'G1', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'6B97FEB1-BD3C-41D8-8C60-F33781FA015B', 2, 3, N'G3', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'6BCDA0F3-B98B-4C31-982C-3264F72494BF', 2, 4, N'B4', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'6C8BA0F5-889F-4E4E-863A-39DA9A365134', 2, 3, N'G4', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'6E4E4436-C449-4BD0-8C6F-561240CFDA6E', 2, 2, N'F2', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'6EE826C4-4453-4ABB-906D-7C172860FD4B', 2, 4, N'H2', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'6FEE9583-F8D4-41DF-A0B8-AA6B6E515826', 2, 4, N'H4', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'7124CFEB-7790-4C68-B313-D9060DFF2600', 2, 3, N'D3', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'71675ECB-6572-47B4-B44B-29EB54C3089E', 2, 1, N'L2', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'71C0A6EC-7A4A-469D-BD14-594ABFC9CF13', 2, 2, N'B3', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'726F3627-8D61-4AF8-A602-A0CD4EC7EED8', 2, 2, N'B4', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'73263462-DFFE-4DD0-80EF-B9C8CA83F72A', 2, 3, N'B3', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'736BD360-5259-449B-8DD5-C1EE63AD49D0', 2, 3, N'H2', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'74A9FB5B-675A-4515-B929-7883ED1E4F69', 2, 4, N'I1', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'7598642D-ADE7-4BEC-A29D-64F54D651085', 2, 1, N'C1', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'76ACFF32-0D3B-4AB5-AE67-DF1696674BE1', 2, 1, N'F4', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'7943C09D-49CA-4F68-BD1A-DBC2CCAC3362', 2, 1, N'J1', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'7AAFBF9B-4500-4E6A-9964-CA68AA305DE2', 2, 3, N'B4', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'7B293B4E-77DC-4094-A085-05348A59CF08', 2, 1, N'C2', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'7C047150-A49B-4E0C-8BDF-BE5674078233', 2, 2, N'E3', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'7EA0D7C7-3686-4866-A4C1-961145A80628', 2, 4, N'I3', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'8132FD5F-AB41-4D42-A7D1-6A86602E2D6F', 2, 1, N'I3', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'835637B0-3AAC-4D4F-87AD-99D7956C3412', 2, 3, N'J1', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'83946A80-6ADF-4999-A223-D841667C025D', 2, 3, N'A4', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'84B7D9D9-DAAA-4A21-A5F8-7C7D20C68027', 2, 4, N'H1', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'86678AB6-BEC5-4ACE-A96F-BD4B2575FD43', 2, 1, N'C3', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'893665CA-0520-4590-B7AF-336B826A126A', 2, 1, N'J3', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'8A1B50E7-3A49-4AC3-B5FA-E97514AFD05E', 2, 4, N'E3', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'8ACABC42-0B55-4C57-A76F-51E34505B057', 2, 4, N'A3', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'8C785DC8-2E11-411F-BE3C-2864E1CCA323', 2, 1, N'G1', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'8D3B489C-B26E-4F26-AB75-7C5B0B9BA86F', 2, 2, N'E1', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'8DCE2E98-45DD-497C-8B85-CC1ED11DCF19', 2, 4, N'C1', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'8DFA2ED0-EB39-4E1F-A2C1-855DA23E304C', 2, 3, N'J2', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'8E4EF428-684D-4B53-B355-2EBDA6687706', 2, 3, N'H4', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'8F4C54A9-FA12-4D35-B848-EDF0E63F4895', 2, 1, N'G2', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'953BED1C-3B50-4AE1-A24C-9572C1A4BFE4', 2, 1, N'K2', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'95E388DB-E24E-47FF-AE65-FA9BCD35B916', 2, 4, N'F1', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'98698421-B573-4139-AD71-E4E3657E2042', 2, 2, N'I1', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'98F853F4-6081-4C41-92B3-49E0399C73F1', 2, 4, N'J3', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'9B370521-44DF-4FC5-927B-A3A4BC621A64', 2, 4, N'B3', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'9BF3FC84-569A-4A66-9439-E93A0F86980E', 2, 2, N'C2', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'9CC55626-BB0D-48EA-BACF-AC931649FD3C', 2, 4, N'J2', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'9DA80702-0371-4AA4-96CE-4AED5191FC02', 2, 1, N'E1', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'9E093D51-EFB3-482B-AE84-B571FFEA8D6D', 2, 4, N'F3', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'9E8DF8AE-F0EF-4720-9F69-08F727FEB415', 2, 1, N'I2', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'9F10C62D-B2EF-4F4F-B820-844A7814ED5F', 2, 1, N'A1', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'9F815263-5BA0-4710-B7B6-8A60E7426409', 2, 2, N'B1', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'A087279D-ABC3-4233-9F5C-8308EBE29134', 2, 4, N'J1', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'A0C02506-C49D-4411-8093-DEB01F256D15', 2, 4, N'K3', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'A0DA0CAA-6F0D-4015-9AA6-EE5933BA1C13', 2, 4, N'I2', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'A0EAF8A3-49D8-43D1-9CD4-40DCABF4DD08', 2, 3, N'A1', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'A1C15810-52C7-4B8D-B2F4-F2725F01DD23', 2, 2, N'H3', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'A1ED76A0-15C8-4088-AE67-284DD1FF318C', 2, 4, N'F4', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'A29DD1C6-168C-4684-8943-6F45CBA0CE8C', 2, 1, N'H2', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'A3F772F5-B744-4E51-9C3B-0B56A707903B', 2, 3, N'G2', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'A5B5C1A7-9273-4DAF-BA91-289399C52654', 2, 2, N'A4', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'AB96B875-2E7D-43F7-A661-F78175F71B53', 2, 1, N'E4', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'AEDF73BB-1DA7-4B46-B2EF-6A84F46E05FC', 2, 1, N'B4', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'B07AA453-40BF-49C8-A49D-D530DD890F42', 2, 2, N'G3', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'B1026300-B447-40FD-882D-B8462C54AF66', 2, 1, N'A3', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'B124C0E5-5A00-4C22-B7EB-FB9673A1C734', 2, 3, N'F3', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'B1FC318F-A707-4AFA-95FC-F3A2664A26E4', 2, 2, N'C3', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'B31CF194-10D3-466E-9905-2841AF1D6886', 2, 1, N'C4', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'B5981908-DF5A-45B7-9A59-3D3887A6D38D', 2, 1, N'L3', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'B8296C34-3837-4374-A431-2D07E6CEB659', 2, 4, N'B2', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'BC55CF20-C320-446A-842D-B4606A91C9BA', 2, 4, N'C4', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'BD40F5DB-5E07-4E9A-B456-919F490FBC12', 2, 1, N'K1', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'BE3A4DF8-9548-4392-BFD1-5EDE6143C5FA', 2, 1, N'K3', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'C0938A9E-85CA-4CE5-9848-2CD66D0BBF65', 2, 1, N'I1', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'C35135C5-5E92-4893-9F59-87CE670874B9', 2, 4, N'H3', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'C368C6BD-E501-4093-8353-E5D57C7DEEE4', 2, 3, N'E2', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'C3A165B9-0C96-4C46-90BD-1AFE94DFD92D', 2, 2, N'J3', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'C48D02CA-369C-485B-9CF0-4D45B0A410AE', 2, 1, N'M1', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'C5F77C13-FD0C-4CEF-B985-6C56B2F26253', 2, 3, N'A2', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'C72A7EF7-7D35-494D-9D06-AE8EF47C16C1', 2, 1, N'A2', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'C738106F-DC8A-4454-9FF0-4EEE8928E588', 2, 2, N'F3', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'C7631207-605D-4B87-936D-635F84D53785', 2, 3, N'D4', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'C9147048-83A8-4D97-BCCC-34DC0ECF05EB', 2, 1, N'B1', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'CC4F14FA-8647-43A7-A787-4FCA67AEB011', 2, 2, N'H1', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'CEA22C26-3AFC-4208-A887-914C324C2CEE', 2, 2, N'E2', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'D2F7A898-54E6-4798-8BBB-94A8FF5562C2', 2, 4, N'D4', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'D3E08F84-E2ED-4FD4-B078-B10AF2F9EB28', 2, 2, N'G1', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'D5A4A029-B0F1-433A-8F5C-C69E35763BEC', 2, 2, N'D3', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'DBA8A062-7DF9-4664-B992-166A135FDD63', 2, 3, N'F2', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'DC9EEA49-35C6-47BA-B3D6-DD1D99740797', 2, 1, N'D2', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'DE41E40E-9132-463F-B18A-FAF2A74CB7C8', 2, 4, N'D1', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'DE98CBCE-BA94-418F-BA23-D2A61A153A96', 2, 3, N'A3', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'DF44BECD-17BD-4D94-B892-AD94986DFC12', 2, 2, N'A1', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'E02FACF6-6E7A-45A2-AD11-8D1833F6B7CC', 2, 1, N'G3', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'E0B760E6-0FD3-4D6B-8AF3-AFE0DC54049F', 2, 3, N'C3', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'E0F05EED-C2F2-4D19-BDE3-1658ECBAE025', 2, 1, N'E3', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'E12F0FB7-BEC5-405A-A46B-719EAF3E3322', 2, 1, N'A4', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'E1D56C42-3980-400A-B3AF-4BE10195B338', 2, 2, N'H2', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'E1ED49D3-824A-4AA4-83B4-EE5FB4FE6E1D', 2, 1, N'K4', 1, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'E2611214-4D75-4F04-B05D-C71902C76545', 2, 4, N'J4', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'E4EA9029-338D-47C9-9A05-FDFC7D330CF4', 2, 2, N'J1', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'E910E737-082E-45AF-B93F-DEAC8022AD85', 2, 2, N'A2', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'E9B551FF-52AA-4936-83D7-8A3646109E64', 2, 2, N'I4', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'EAEF3C7D-410C-4306-A5B7-ECC7A0F77BC0', 2, 4, N'A1', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'F03D108F-271D-4C74-9DC3-AF3E880D55D4', 2, 4, N'A2', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'F44598E7-067C-4676-A3D2-4D690DED4EDB', 2, 4, N'G4', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'F50237D3-3130-4AB2-884F-B609DC1BC4A8', 2, 2, N'B2', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'F6F27187-D54D-4B73-9580-4D267ED9EA1E', 2, 4, N'K1', 4, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'F7B64B8F-0581-4DFC-B3B5-6D9B5E3F6AD7', 2, 3, N'C4', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'F9620697-47C6-4843-A689-32AA25D1A328', 2, 2, N'E4', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'FA9C011E-92AF-4EAB-A10B-126B5245BB01', 2, 2, N'C1', 2, 1300)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'FAA5ECEB-FB05-45AF-BFEA-636D621194A5', 2, 3, N'I4', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'FC64EFB0-D983-4427-B892-0B87AD807F5D', 2, 3, N'I1', 3, 1500)
GO
INSERT [dbo].[Boletos] ([Num_Folio], [Id_TPasajero], [Id_Viaje], [Num_Asiento], [Id_Producto], [Precio]) VALUES (N'FF94ED5D-63E2-4ABC-B3D5-D3888719276E', 2, 3, N'F1', 3, 1500)
GO
INSERT [dbo].[Cajeros] ([Id_Cajero], [Num_Caja]) VALUES (2, 10)
GO
INSERT [dbo].[Cajeros] ([Id_Cajero], [Num_Caja]) VALUES (3, 11)
GO
INSERT [dbo].[Cajeros] ([Id_Cajero], [Num_Caja]) VALUES (4, 12)
GO
INSERT [dbo].[Cajeros] ([Id_Cajero], [Num_Caja]) VALUES (6, 14)
GO
INSERT [dbo].[Cajeros] ([Id_Cajero], [Num_Caja]) VALUES (7, 15)
GO
INSERT [dbo].[Cajeros] ([Id_Cajero], [Num_Caja]) VALUES (9, 17)
GO
INSERT [dbo].[Cajeros] ([Id_Cajero], [Num_Caja]) VALUES (11, 19)
GO
INSERT [dbo].[Cajeros] ([Id_Cajero], [Num_Caja]) VALUES (12, 2)
GO
INSERT [dbo].[Cajeros] ([Id_Cajero], [Num_Caja]) VALUES (13, 5)
GO
INSERT [dbo].[Cajeros] ([Id_Cajero], [Num_Caja]) VALUES (14, 3)
GO
INSERT [dbo].[Categorias] ([Id_Categoria], [Descripcion]) VALUES (1, N'Alta A')
GO
INSERT [dbo].[Categorias] ([Id_Categoria], [Descripcion]) VALUES (2, N'Alta B')
GO
INSERT [dbo].[Categorias] ([Id_Categoria], [Descripcion]) VALUES (3, N'Alta C')
GO
INSERT [dbo].[Categorias] ([Id_Categoria], [Descripcion]) VALUES (4, N'Alta D')
GO
INSERT [dbo].[Categorias] ([Id_Categoria], [Descripcion]) VALUES (5, N'Alta E')
GO
INSERT [dbo].[Categorias] ([Id_Categoria], [Descripcion]) VALUES (6, N'Media A')
GO
INSERT [dbo].[Categorias] ([Id_Categoria], [Descripcion]) VALUES (7, N'Media B')
GO
INSERT [dbo].[Categorias] ([Id_Categoria], [Descripcion]) VALUES (8, N'Media C')
GO
INSERT [dbo].[Categorias] ([Id_Categoria], [Descripcion]) VALUES (9, N'Media D')
GO
INSERT [dbo].[Categorias] ([Id_Categoria], [Descripcion]) VALUES (10, N'Media E')
GO
INSERT [dbo].[Categorias] ([Id_Categoria], [Descripcion]) VALUES (11, N'Baja A')
GO
INSERT [dbo].[Categorias] ([Id_Categoria], [Descripcion]) VALUES (12, N'Baja B')
GO
INSERT [dbo].[Categorias] ([Id_Categoria], [Descripcion]) VALUES (13, N'Baja C')
GO
INSERT [dbo].[Categorias] ([Id_Categoria], [Descripcion]) VALUES (14, N'Baja D')
GO
INSERT [dbo].[Categorias] ([Id_Categoria], [Descripcion]) VALUES (15, N'Baja E')
GO
INSERT [dbo].[Categorias] ([Id_Categoria], [Descripcion]) VALUES (16, N'Basico, asiento normal')
GO
INSERT [dbo].[Categorias] ([Id_Categoria], [Descripcion]) VALUES (17, N'Medio, asiento comodo')
GO
INSERT [dbo].[Categorias] ([Id_Categoria], [Descripcion]) VALUES (18, N'Alto, una comida')
GO
INSERT [dbo].[Categorias] ([Id_Categoria], [Descripcion]) VALUES (19, N'Alto Premium')
GO
INSERT [dbo].[Categorias] ([Id_Categoria], [Descripcion]) VALUES (20, N'Prime, cama, comida, pantalla')
GO
INSERT [dbo].[Categorias] ([Id_Categoria], [Descripcion]) VALUES (21, N'MediaBaja')
GO
INSERT [dbo].[Ciudades] ([Id_Ciudad], [Nombre], [Id_Estado]) VALUES (1, N'Aguascalientes', 1)
GO
INSERT [dbo].[Ciudades] ([Id_Ciudad], [Nombre], [Id_Estado]) VALUES (2, N'Mexicali', 2)
GO
INSERT [dbo].[Ciudades] ([Id_Ciudad], [Nombre], [Id_Estado]) VALUES (3, N'La Paz', 3)
GO
INSERT [dbo].[Ciudades] ([Id_Ciudad], [Nombre], [Id_Estado]) VALUES (4, N'Campeche', 4)
GO
INSERT [dbo].[Ciudades] ([Id_Ciudad], [Nombre], [Id_Estado]) VALUES (5, N'Saltillo', 8)
GO
INSERT [dbo].[Ciudades] ([Id_Ciudad], [Nombre], [Id_Estado]) VALUES (6, N'Colima', 9)
GO
INSERT [dbo].[Ciudades] ([Id_Ciudad], [Nombre], [Id_Estado]) VALUES (7, N'Tuxtla Gutiérrez', 5)
GO
INSERT [dbo].[Ciudades] ([Id_Ciudad], [Nombre], [Id_Estado]) VALUES (8, N'Chihuahua', 6)
GO
INSERT [dbo].[Ciudades] ([Id_Ciudad], [Nombre], [Id_Estado]) VALUES (9, N'Ciudad de México', 7)
GO
INSERT [dbo].[Ciudades] ([Id_Ciudad], [Nombre], [Id_Estado]) VALUES (10, N'Durango', 10)
GO
INSERT [dbo].[Ciudades] ([Id_Ciudad], [Nombre], [Id_Estado]) VALUES (11, N'Guanajuato', 11)
GO
INSERT [dbo].[Ciudades] ([Id_Ciudad], [Nombre], [Id_Estado]) VALUES (12, N'Chilpancingo', 12)
GO
INSERT [dbo].[Ciudades] ([Id_Ciudad], [Nombre], [Id_Estado]) VALUES (13, N'Pachuca', 13)
GO
INSERT [dbo].[Ciudades] ([Id_Ciudad], [Nombre], [Id_Estado]) VALUES (14, N'Guadalajara', 14)
GO
INSERT [dbo].[Ciudades] ([Id_Ciudad], [Nombre], [Id_Estado]) VALUES (15, N'Toluca', 15)
GO
INSERT [dbo].[Ciudades] ([Id_Ciudad], [Nombre], [Id_Estado]) VALUES (16, N'Morelia', 16)
GO
INSERT [dbo].[Ciudades] ([Id_Ciudad], [Nombre], [Id_Estado]) VALUES (17, N'Cuernavaca', 17)
GO
INSERT [dbo].[Ciudades] ([Id_Ciudad], [Nombre], [Id_Estado]) VALUES (18, N'Tepic', 18)
GO
INSERT [dbo].[Ciudades] ([Id_Ciudad], [Nombre], [Id_Estado]) VALUES (19, N'Monterrey', 19)
GO
INSERT [dbo].[Ciudades] ([Id_Ciudad], [Nombre], [Id_Estado]) VALUES (20, N'Oaxaca', 20)
GO
INSERT [dbo].[Ciudades] ([Id_Ciudad], [Nombre], [Id_Estado]) VALUES (21, N'Puebla', 21)
GO
INSERT [dbo].[Ciudades] ([Id_Ciudad], [Nombre], [Id_Estado]) VALUES (22, N'Querétaro', 22)
GO
INSERT [dbo].[Ciudades] ([Id_Ciudad], [Nombre], [Id_Estado]) VALUES (23, N'Chetumal', 23)
GO
INSERT [dbo].[Ciudades] ([Id_Ciudad], [Nombre], [Id_Estado]) VALUES (24, N'San Luis Potosí', 24)
GO
INSERT [dbo].[Ciudades] ([Id_Ciudad], [Nombre], [Id_Estado]) VALUES (25, N'Culiacán', 25)
GO
INSERT [dbo].[Ciudades] ([Id_Ciudad], [Nombre], [Id_Estado]) VALUES (26, N'Hermosillo', 26)
GO
INSERT [dbo].[Ciudades] ([Id_Ciudad], [Nombre], [Id_Estado]) VALUES (27, N'Villahermosa', 27)
GO
INSERT [dbo].[Ciudades] ([Id_Ciudad], [Nombre], [Id_Estado]) VALUES (28, N'Ciudad Victoria', 28)
GO
INSERT [dbo].[Ciudades] ([Id_Ciudad], [Nombre], [Id_Estado]) VALUES (29, N'Tlaxcala', 29)
GO
INSERT [dbo].[Ciudades] ([Id_Ciudad], [Nombre], [Id_Estado]) VALUES (30, N'Xalapa', 30)
GO
INSERT [dbo].[Ciudades] ([Id_Ciudad], [Nombre], [Id_Estado]) VALUES (31, N'Mérida', 31)
GO
INSERT [dbo].[Ciudades] ([Id_Ciudad], [Nombre], [Id_Estado]) VALUES (32, N'Zacatecas', 32)
GO
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Apellido], [Correo], [Telefono]) VALUES (1, N'Anonimo', N'Moreno', NULL, NULL)
GO
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Apellido], [Correo], [Telefono]) VALUES (2, N'Mauricio', N'Moreno', NULL, NULL)
GO
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Apellido], [Correo], [Telefono]) VALUES (3, N'Pedro', N'Paramo', NULL, NULL)
GO
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Apellido], [Correo], [Telefono]) VALUES (4, N'Javier', N'Gonzales', NULL, NULL)
GO
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Apellido], [Correo], [Telefono]) VALUES (5, N'Mauricio', N'Luna', NULL, NULL)
GO
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Apellido], [Correo], [Telefono]) VALUES (6, N'Anonimo', N'Moreno', NULL, NULL)
GO
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Apellido], [Correo], [Telefono]) VALUES (7, N'Isaac', N'Flores', NULL, NULL)
GO
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Apellido], [Correo], [Telefono]) VALUES (8, N'Audrey', N'Loza', NULL, NULL)
GO
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Apellido], [Correo], [Telefono]) VALUES (9, N'Daniela', N'Alvarado', NULL, NULL)
GO
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Apellido], [Correo], [Telefono]) VALUES (10, N'Karla', N'balleza', NULL, NULL)
GO
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Apellido], [Correo], [Telefono]) VALUES (11, N'Julio', N'Profe', NULL, NULL)
GO
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Apellido], [Correo], [Telefono]) VALUES (12, N'Maujhalo', N'Halo', NULL, NULL)
GO
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Apellido], [Correo], [Telefono]) VALUES (13, N'Javier', N'Martinez', NULL, NULL)
GO
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Apellido], [Correo], [Telefono]) VALUES (14, N'Julio', N'Maestro', NULL, NULL)
GO
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Apellido], [Correo], [Telefono]) VALUES (15, N'Loco', N'Adams', NULL, NULL)
GO
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Apellido], [Correo], [Telefono]) VALUES (16, N'Juan', N'Rodriguez Rodriguez', N'juanRR@yahoo.com', 811027647)
GO
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Apellido], [Correo], [Telefono]) VALUES (17, N'Antonio', N'Banderas', N'mauhalo@hotmail.com', 81173456)
GO
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Apellido], [Correo], [Telefono]) VALUES (18, N'Oscar', N'Perez Martinez', N'gamer_pro123@gamil.com', 81175975)
GO
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Apellido], [Correo], [Telefono]) VALUES (20, N'Roberto', N'Melchor Alvarado', N'Melchor.77@outlook.es', 81135952)
GO
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Apellido], [Correo], [Telefono]) VALUES (21, N'Cristobal', N'Colon', N'america.99@uanl.mx', 81199999)
GO
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Apellido], [Correo], [Telefono]) VALUES (22, N'Miguel', N'Salazar', N'miguel_r4@capcom.com', 81167548)
GO
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Apellido], [Correo], [Telefono]) VALUES (23, N'Jose Miguel', N'Salazar', NULL, 81167548)
GO
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Apellido], [Correo], [Telefono]) VALUES (24, N'Heriberto', N'Contreras Maldonado', N'sectec.80@cisco.com', 81145790)
GO
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Apellido], [Correo], [Telefono]) VALUES (25, N'Juan', N'Perez', N'mauhalo09@gmail.com', 8110)
GO
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Apellido], [Correo], [Telefono]) VALUES (40, N'Daniela', N'Alvarado', NULL, NULL)
GO
INSERT [dbo].[Conductores] ([Id_Conductor], [Licencia]) VALUES (6, N'F985678954')
GO
INSERT [dbo].[Conductores] ([Id_Conductor], [Licencia]) VALUES (7, N'B657667678')
GO
INSERT [dbo].[Conductores] ([Id_Conductor], [Licencia]) VALUES (9, N'F679856721')
GO
INSERT [dbo].[Empleados] ([Id_Empleado], [Id_Puesto], [Nombre], [Apellidos], [Sexo], [Fech_Nac], [Correo], [Telefono]) VALUES (1, 1, N'Eliseo', N'Rodriguez Rodriguez', N'W', CAST(N'1990-10-19' AS Date), N'ivan@gmail.com', N'8234567823')
GO
INSERT [dbo].[Empleados] ([Id_Empleado], [Id_Puesto], [Nombre], [Apellidos], [Sexo], [Fech_Nac], [Correo], [Telefono]) VALUES (2, 2, N'Jorge', N'Blanco', N'M', CAST(N'2000-01-20' AS Date), N'Blanco_J@gmail.com', N'8193731208')
GO
INSERT [dbo].[Empleados] ([Id_Empleado], [Id_Puesto], [Nombre], [Apellidos], [Sexo], [Fech_Nac], [Correo], [Telefono]) VALUES (3, 3, N'Jorge', N'Blanco', N'M', CAST(N'2000-01-20' AS Date), N'Blanco_J@gmail.com', N'8193731208')
GO
INSERT [dbo].[Empleados] ([Id_Empleado], [Id_Puesto], [Nombre], [Apellidos], [Sexo], [Fech_Nac], [Correo], [Telefono]) VALUES (4, 4, N'Jorge', N'Blanco', N'M', CAST(N'2000-01-20' AS Date), N'Blanco_J@gmail.com', N'8193731208')
GO
INSERT [dbo].[Empleados] ([Id_Empleado], [Id_Puesto], [Nombre], [Apellidos], [Sexo], [Fech_Nac], [Correo], [Telefono]) VALUES (6, 6, N'Mau', N'Jhalo', N'M', CAST(N'2000-08-10' AS Date), N'MauJhalo@gmail.com', N'8193732568')
GO
INSERT [dbo].[Empleados] ([Id_Empleado], [Id_Puesto], [Nombre], [Apellidos], [Sexo], [Fech_Nac], [Correo], [Telefono]) VALUES (7, 7, N'Mau', N'Jhalo', N'M', CAST(N'2000-08-10' AS Date), N'MauJhalo@gmail.com', N'8193732568')
GO
INSERT [dbo].[Empleados] ([Id_Empleado], [Id_Puesto], [Nombre], [Apellidos], [Sexo], [Fech_Nac], [Correo], [Telefono]) VALUES (9, 9, N'Mau', N'Jhalo', N'M', CAST(N'2000-08-10' AS Date), N'MauJhalo@gmail.com', N'8193732568')
GO
INSERT [dbo].[Empleados] ([Id_Empleado], [Id_Puesto], [Nombre], [Apellidos], [Sexo], [Fech_Nac], [Correo], [Telefono]) VALUES (11, 11, N'Ivan', N'Carrillo', N'M', CAST(N'2000-06-15' AS Date), N'Ivanc@gmail.com', N'8193271349')
GO
INSERT [dbo].[Empleados] ([Id_Empleado], [Id_Puesto], [Nombre], [Apellidos], [Sexo], [Fech_Nac], [Correo], [Telefono]) VALUES (12, 12, N'Ivan', N'Carrillo', N'M', CAST(N'2000-06-15' AS Date), N'Ivanc@gmail.com', N'8193271349')
GO
INSERT [dbo].[Empleados] ([Id_Empleado], [Id_Puesto], [Nombre], [Apellidos], [Sexo], [Fech_Nac], [Correo], [Telefono]) VALUES (13, 13, N'Ivan', N'Carrillo', N'M', CAST(N'2000-06-15' AS Date), N'Ivanc@gmail.com', N'8193271349')
GO
INSERT [dbo].[Empleados] ([Id_Empleado], [Id_Puesto], [Nombre], [Apellidos], [Sexo], [Fech_Nac], [Correo], [Telefono]) VALUES (14, 14, N'Ivan', N'Carrillo', N'M', CAST(N'2000-06-15' AS Date), N'Ivanc@gmail.com', N'8193271349')
GO
INSERT [dbo].[Estados] ([Id_Estado], [Nombre]) VALUES (1, N'Aguascalientes')
GO
INSERT [dbo].[Estados] ([Id_Estado], [Nombre]) VALUES (2, N'Baja California')
GO
INSERT [dbo].[Estados] ([Id_Estado], [Nombre]) VALUES (3, N'Baja California Sur')
GO
INSERT [dbo].[Estados] ([Id_Estado], [Nombre]) VALUES (4, N'Campeche')
GO
INSERT [dbo].[Estados] ([Id_Estado], [Nombre]) VALUES (5, N'Chiapas')
GO
INSERT [dbo].[Estados] ([Id_Estado], [Nombre]) VALUES (6, N'Chihuahua')
GO
INSERT [dbo].[Estados] ([Id_Estado], [Nombre]) VALUES (7, N'Ciudad de México')
GO
INSERT [dbo].[Estados] ([Id_Estado], [Nombre]) VALUES (8, N'Coahuila')
GO
INSERT [dbo].[Estados] ([Id_Estado], [Nombre]) VALUES (9, N'Colima')
GO
INSERT [dbo].[Estados] ([Id_Estado], [Nombre]) VALUES (10, N'Durango')
GO
INSERT [dbo].[Estados] ([Id_Estado], [Nombre]) VALUES (11, N'Guanajuato')
GO
INSERT [dbo].[Estados] ([Id_Estado], [Nombre]) VALUES (12, N'Guerrero')
GO
INSERT [dbo].[Estados] ([Id_Estado], [Nombre]) VALUES (13, N'Hidalgo')
GO
INSERT [dbo].[Estados] ([Id_Estado], [Nombre]) VALUES (14, N'Jalisco')
GO
INSERT [dbo].[Estados] ([Id_Estado], [Nombre]) VALUES (15, N'México')
GO
INSERT [dbo].[Estados] ([Id_Estado], [Nombre]) VALUES (16, N'Michoacán')
GO
INSERT [dbo].[Estados] ([Id_Estado], [Nombre]) VALUES (17, N'Morelos')
GO
INSERT [dbo].[Estados] ([Id_Estado], [Nombre]) VALUES (18, N'Nayarit')
GO
INSERT [dbo].[Estados] ([Id_Estado], [Nombre]) VALUES (19, N'Nuevo León')
GO
INSERT [dbo].[Estados] ([Id_Estado], [Nombre]) VALUES (20, N'Oaxaca')
GO
INSERT [dbo].[Estados] ([Id_Estado], [Nombre]) VALUES (21, N'Puebla')
GO
INSERT [dbo].[Estados] ([Id_Estado], [Nombre]) VALUES (22, N'Querétaro')
GO
INSERT [dbo].[Estados] ([Id_Estado], [Nombre]) VALUES (23, N'Quintana Roo')
GO
INSERT [dbo].[Estados] ([Id_Estado], [Nombre]) VALUES (24, N'San Luis Potosí')
GO
INSERT [dbo].[Estados] ([Id_Estado], [Nombre]) VALUES (25, N'Sinaloa')
GO
INSERT [dbo].[Estados] ([Id_Estado], [Nombre]) VALUES (26, N'Sonora')
GO
INSERT [dbo].[Estados] ([Id_Estado], [Nombre]) VALUES (27, N'Tabasco')
GO
INSERT [dbo].[Estados] ([Id_Estado], [Nombre]) VALUES (28, N'Tamaulipas')
GO
INSERT [dbo].[Estados] ([Id_Estado], [Nombre]) VALUES (29, N'Tlaxcala')
GO
INSERT [dbo].[Estados] ([Id_Estado], [Nombre]) VALUES (30, N'Veracruz')
GO
INSERT [dbo].[Estados] ([Id_Estado], [Nombre]) VALUES (31, N'Yucatán')
GO
INSERT [dbo].[Estados] ([Id_Estado], [Nombre]) VALUES (32, N'Zacatecas')
GO
INSERT [dbo].[NivelB] ([Id_Nivel], [Descripcion]) VALUES (1, N'Nivel Bajo')
GO
INSERT [dbo].[NivelB] ([Id_Nivel], [Descripcion]) VALUES (2, N'Nivel Medio')
GO
INSERT [dbo].[NivelB] ([Id_Nivel], [Descripcion]) VALUES (3, N'Nivel Alto')
GO
INSERT [dbo].[NivelB] ([Id_Nivel], [Descripcion]) VALUES (4, N'Nivel MedioBajo')
GO
INSERT [dbo].[NivelB] ([Id_Nivel], [Descripcion]) VALUES (5, N'Nivel MedioAlto')
GO
INSERT [dbo].[Pago] ([PagoId], [Tipo], [Moneda]) VALUES (1, 1, 1)
GO
INSERT [dbo].[Pago] ([PagoId], [Tipo], [Moneda]) VALUES (2, 2, 1)
GO
INSERT [dbo].[Pago] ([PagoId], [Tipo], [Moneda]) VALUES (3, 3, 3)
GO
INSERT [dbo].[Pago] ([PagoId], [Tipo], [Moneda]) VALUES (4, 7, 7)
GO
INSERT [dbo].[Pago] ([PagoId], [Tipo], [Moneda]) VALUES (6, 3, 3)
GO
INSERT [dbo].[Pago] ([PagoId], [Tipo], [Moneda]) VALUES (7, 6, 7)
GO
INSERT [dbo].[Pago] ([PagoId], [Tipo], [Moneda]) VALUES (8, 7, 3)
GO
INSERT [dbo].[Pago] ([PagoId], [Tipo], [Moneda]) VALUES (9, 6, 1)
GO
INSERT [dbo].[Pago] ([PagoId], [Tipo], [Moneda]) VALUES (10, 8, 5)
GO
INSERT [dbo].[Pago] ([PagoId], [Tipo], [Moneda]) VALUES (11, 3, 3)
GO
INSERT [dbo].[Pago] ([PagoId], [Tipo], [Moneda]) VALUES (12, 4, 8)
GO
INSERT [dbo].[Pago] ([PagoId], [Tipo], [Moneda]) VALUES (13, 8, 7)
GO
INSERT [dbo].[Pago] ([PagoId], [Tipo], [Moneda]) VALUES (14, 3, 1)
GO
INSERT [dbo].[Pago] ([PagoId], [Tipo], [Moneda]) VALUES (215, 6, 4)
GO
INSERT [dbo].[Producto] ([Id_Producto], [Id_Categoria], [Nombre], [Stock], [Precio_Compra], [Precio_Venta]) VALUES (1, 1, N'Viaje Cancun', 40, 0.0000, 1500.0000)
GO
INSERT [dbo].[Producto] ([Id_Producto], [Id_Categoria], [Nombre], [Stock], [Precio_Compra], [Precio_Venta]) VALUES (2, 2, N'Viaje Cuernavaca', 40, 0.0000, 1400.0000)
GO
INSERT [dbo].[Producto] ([Id_Producto], [Id_Categoria], [Nombre], [Stock], [Precio_Compra], [Precio_Venta]) VALUES (3, 3, N'Viaje Acapulco', 40, 0.0000, 2000.0000)
GO
INSERT [dbo].[Producto] ([Id_Producto], [Id_Categoria], [Nombre], [Stock], [Precio_Compra], [Precio_Venta]) VALUES (4, 4, N'Viaje CDMX', 40, 0.0000, 2000.0000)
GO
INSERT [dbo].[Producto] ([Id_Producto], [Id_Categoria], [Nombre], [Stock], [Precio_Compra], [Precio_Venta]) VALUES (5, 5, N'Viaje Guadalajara', 40, 0.0000, 1500.0000)
GO
INSERT [dbo].[Producto] ([Id_Producto], [Id_Categoria], [Nombre], [Stock], [Precio_Compra], [Precio_Venta]) VALUES (6, 6, N'Viaje Chiapas', 40, 0.0000, 1000.0000)
GO
INSERT [dbo].[Producto] ([Id_Producto], [Id_Categoria], [Nombre], [Stock], [Precio_Compra], [Precio_Venta]) VALUES (7, 7, N'Viaje Oaxaca', 40, 0.0000, 900.0000)
GO
INSERT [dbo].[Producto] ([Id_Producto], [Id_Categoria], [Nombre], [Stock], [Precio_Compra], [Precio_Venta]) VALUES (8, 8, N'Viaje Baja California Norte', 40, 0.0000, 1500.0000)
GO
INSERT [dbo].[Producto] ([Id_Producto], [Id_Categoria], [Nombre], [Stock], [Precio_Compra], [Precio_Venta]) VALUES (9, 9, N'Viaje Aguscalientes', 40, 0.0000, 1500.0000)
GO
INSERT [dbo].[Producto] ([Id_Producto], [Id_Categoria], [Nombre], [Stock], [Precio_Compra], [Precio_Venta]) VALUES (10, 10, N'Viaje Sonora', 40, 0.0000, 1500.0000)
GO
INSERT [dbo].[Producto] ([Id_Producto], [Id_Categoria], [Nombre], [Stock], [Precio_Compra], [Precio_Venta]) VALUES (11, 11, N'Viaje Tabasco', 40, 0.0000, 1300.0000)
GO
INSERT [dbo].[Producto] ([Id_Producto], [Id_Categoria], [Nombre], [Stock], [Precio_Compra], [Precio_Venta]) VALUES (12, 12, N'Viaje Torreon', 40, 0.0000, 1000.0000)
GO
INSERT [dbo].[Producto] ([Id_Producto], [Id_Categoria], [Nombre], [Stock], [Precio_Compra], [Precio_Venta]) VALUES (13, 13, N'Viaje Matamoros', 40, 0.0000, 1000.0000)
GO
INSERT [dbo].[Producto] ([Id_Producto], [Id_Categoria], [Nombre], [Stock], [Precio_Compra], [Precio_Venta]) VALUES (14, 14, N'Viaje Veracruz', 40, 0.0000, 1400.0000)
GO
INSERT [dbo].[Producto] ([Id_Producto], [Id_Categoria], [Nombre], [Stock], [Precio_Compra], [Precio_Venta]) VALUES (15, 15, N'Viaje Merida', 40, 0.0000, 2000.0000)
GO
INSERT [dbo].[Producto] ([Id_Producto], [Id_Categoria], [Nombre], [Stock], [Precio_Compra], [Precio_Venta]) VALUES (16, 1, N'Boletos Chihuahua', 50, 0.0000, 1300.0000)
GO
INSERT [dbo].[Producto] ([Id_Producto], [Id_Categoria], [Nombre], [Stock], [Precio_Compra], [Precio_Venta]) VALUES (17, 2, N'Boletos Ciud. Victoria', 40, 0.0000, 1300.0000)
GO
INSERT [dbo].[Producto] ([Id_Producto], [Id_Categoria], [Nombre], [Stock], [Precio_Compra], [Precio_Venta]) VALUES (18, 2, N'Boletos Guadalajara', 40, 0.0000, 1500.0000)
GO
INSERT [dbo].[Producto] ([Id_Producto], [Id_Categoria], [Nombre], [Stock], [Precio_Compra], [Precio_Venta]) VALUES (19, 3, N'Boletos Colima', 45, 0.0000, 1500.0000)
GO
INSERT [dbo].[Puesto] ([Id_Puesto], [Descripcion]) VALUES (1, N'Conductor')
GO
INSERT [dbo].[Puesto] ([Id_Puesto], [Descripcion]) VALUES (2, N'Conductor B')
GO
INSERT [dbo].[Puesto] ([Id_Puesto], [Descripcion]) VALUES (3, N'Conductor C')
GO
INSERT [dbo].[Puesto] ([Id_Puesto], [Descripcion]) VALUES (4, N'Conductor D')
GO
INSERT [dbo].[Puesto] ([Id_Puesto], [Descripcion]) VALUES (5, N'Conductor E')
GO
INSERT [dbo].[Puesto] ([Id_Puesto], [Descripcion]) VALUES (6, N'Cajero A')
GO
INSERT [dbo].[Puesto] ([Id_Puesto], [Descripcion]) VALUES (7, N'Cajero B')
GO
INSERT [dbo].[Puesto] ([Id_Puesto], [Descripcion]) VALUES (8, N'Cajero C')
GO
INSERT [dbo].[Puesto] ([Id_Puesto], [Descripcion]) VALUES (9, N'Cajero D')
GO
INSERT [dbo].[Puesto] ([Id_Puesto], [Descripcion]) VALUES (10, N'Cajero E')
GO
INSERT [dbo].[Puesto] ([Id_Puesto], [Descripcion]) VALUES (11, N'Chofer A')
GO
INSERT [dbo].[Puesto] ([Id_Puesto], [Descripcion]) VALUES (12, N'Chofer B')
GO
INSERT [dbo].[Puesto] ([Id_Puesto], [Descripcion]) VALUES (13, N'Chofer C')
GO
INSERT [dbo].[Puesto] ([Id_Puesto], [Descripcion]) VALUES (14, N'Chofer D')
GO
INSERT [dbo].[Puesto] ([Id_Puesto], [Descripcion]) VALUES (15, N'Chofer E')
GO
INSERT [dbo].[Puesto] ([Id_Puesto], [Descripcion]) VALUES (16, N'Director Ejecutivo')
GO
INSERT [dbo].[Puesto] ([Id_Puesto], [Descripcion]) VALUES (17, N'Gerente Ejecutivo')
GO
INSERT [dbo].[Puesto] ([Id_Puesto], [Descripcion]) VALUES (18, N'Director Regional')
GO
INSERT [dbo].[Puesto] ([Id_Puesto], [Descripcion]) VALUES (19, N'Gerente Regional')
GO
INSERT [dbo].[Puesto] ([Id_Puesto], [Descripcion]) VALUES (20, N'Gerente de Base')
GO
INSERT [dbo].[Puesto] ([Id_Puesto], [Descripcion]) VALUES (21, N'Cajero')
GO
INSERT [dbo].[Puesto] ([Id_Puesto], [Descripcion]) VALUES (22, N'Conductor')
GO
INSERT [dbo].[Puesto] ([Id_Puesto], [Descripcion]) VALUES (23, N'Conserje')
GO
INSERT [dbo].[Puesto] ([Id_Puesto], [Descripcion]) VALUES (24, N'Guardia')
GO
INSERT [dbo].[Puesto] ([Id_Puesto], [Descripcion]) VALUES (25, N'Asafata')
GO
INSERT [dbo].[Regimiento] ([Id_Regimiento], [Descripcion]) VALUES (1, N'Gubernamental')
GO
INSERT [dbo].[Regimiento] ([Id_Regimiento], [Descripcion]) VALUES (2, N'Privado')
GO
INSERT [dbo].[Regimiento] ([Id_Regimiento], [Descripcion]) VALUES (3, N'Semi Privado')
GO
INSERT [dbo].[Regimiento] ([Id_Regimiento], [Descripcion]) VALUES (4, N'Semi Independiente')
GO
INSERT [dbo].[Regimiento] ([Id_Regimiento], [Descripcion]) VALUES (5, N'Independiente')
GO
INSERT [dbo].[Rutas] ([Id_Ruta], [Ciudad_Origen], [Ciudad_Destino], [Duracion], [Escalas]) VALUES (1, 19, 14, CAST(N'03:50:00' AS Time), 0)
GO
INSERT [dbo].[Rutas] ([Id_Ruta], [Ciudad_Origen], [Ciudad_Destino], [Duracion], [Escalas]) VALUES (2, 19, 6, CAST(N'03:00:00' AS Time), 0)
GO
INSERT [dbo].[Rutas] ([Id_Ruta], [Ciudad_Origen], [Ciudad_Destino], [Duracion], [Escalas]) VALUES (3, 19, 8, CAST(N'02:30:00' AS Time), 0)
GO
INSERT [dbo].[Rutas] ([Id_Ruta], [Ciudad_Origen], [Ciudad_Destino], [Duracion], [Escalas]) VALUES (4, 19, 28, CAST(N'03:30:00' AS Time), 2)
GO
INSERT [dbo].[Tipo_Pasajero] ([Id_Tipo], [Tipo]) VALUES (1, N'Niño')
GO
INSERT [dbo].[Tipo_Pasajero] ([Id_Tipo], [Tipo]) VALUES (2, N'Niño')
GO
INSERT [dbo].[Tipo_Pasajero] ([Id_Tipo], [Tipo]) VALUES (3, N'Niño')
GO
INSERT [dbo].[Tipo_Pasajero] ([Id_Tipo], [Tipo]) VALUES (4, N'Niño')
GO
INSERT [dbo].[Tipo_Pasajero] ([Id_Tipo], [Tipo]) VALUES (5, N'Niño')
GO
INSERT [dbo].[Tipo_Pasajero] ([Id_Tipo], [Tipo]) VALUES (6, N'Adulto')
GO
INSERT [dbo].[Tipo_Pasajero] ([Id_Tipo], [Tipo]) VALUES (7, N'Adulto')
GO
INSERT [dbo].[Tipo_Pasajero] ([Id_Tipo], [Tipo]) VALUES (8, N'Adulto')
GO
INSERT [dbo].[Tipo_Pasajero] ([Id_Tipo], [Tipo]) VALUES (9, N'Adulto')
GO
INSERT [dbo].[Tipo_Pasajero] ([Id_Tipo], [Tipo]) VALUES (10, N'Adulto')
GO
INSERT [dbo].[Tipo_Pasajero] ([Id_Tipo], [Tipo]) VALUES (11, N'Adulto_Mayor')
GO
INSERT [dbo].[Tipo_Pasajero] ([Id_Tipo], [Tipo]) VALUES (12, N'Adulto_Mayor')
GO
INSERT [dbo].[Tipo_Pasajero] ([Id_Tipo], [Tipo]) VALUES (13, N'Adulto_Mayor')
GO
INSERT [dbo].[Tipo_Pasajero] ([Id_Tipo], [Tipo]) VALUES (14, N'Adulto_Mayor')
GO
INSERT [dbo].[Tipo_Pasajero] ([Id_Tipo], [Tipo]) VALUES (15, N'Adulto_Mayor')
GO
INSERT [dbo].[TipoDeMoneda] ([TipoMonedaId], [TipoDeMon], [Pais]) VALUES (1, N'DL', N'USA')
GO
INSERT [dbo].[TipoDeMoneda] ([TipoMonedaId], [TipoDeMon], [Pais]) VALUES (3, N'DL', N'USA22')
GO
INSERT [dbo].[TipoDeMoneda] ([TipoMonedaId], [TipoDeMon], [Pais]) VALUES (4, N'EU', N'España2')
GO
INSERT [dbo].[TipoDeMoneda] ([TipoMonedaId], [TipoDeMon], [Pais]) VALUES (5, N'DL', N'USA3')
GO
INSERT [dbo].[TipoDeMoneda] ([TipoMonedaId], [TipoDeMon], [Pais]) VALUES (6, N'EU', N'España3')
GO
INSERT [dbo].[TipoDeMoneda] ([TipoMonedaId], [TipoDeMon], [Pais]) VALUES (7, N'DL', N'USA4')
GO
INSERT [dbo].[TipoDeMoneda] ([TipoMonedaId], [TipoDeMon], [Pais]) VALUES (8, N'EU', N'Noruega')
GO
INSERT [dbo].[TipoDeMoneda] ([TipoMonedaId], [TipoDeMon], [Pais]) VALUES (9, N'DL', N'USA5')
GO
INSERT [dbo].[TipoDeMoneda] ([TipoMonedaId], [TipoDeMon], [Pais]) VALUES (10, N'EU', N'España5')
GO
INSERT [dbo].[TipoDeMoneda] ([TipoMonedaId], [TipoDeMon], [Pais]) VALUES (11, N'DL', N'USA6')
GO
INSERT [dbo].[TipoDeMoneda] ([TipoMonedaId], [TipoDeMon], [Pais]) VALUES (12, N'EU', N'España6')
GO
INSERT [dbo].[TipoDeMoneda] ([TipoMonedaId], [TipoDeMon], [Pais]) VALUES (13, N'DL', N'USA7')
GO
INSERT [dbo].[TipoDeMoneda] ([TipoMonedaId], [TipoDeMon], [Pais]) VALUES (14, N'EU', N'España7')
GO
INSERT [dbo].[TipoDeMoneda] ([TipoMonedaId], [TipoDeMon], [Pais]) VALUES (15, N'DL', N'USA8')
GO
INSERT [dbo].[TipoDePago] ([TipoId], [TipoDP]) VALUES (1, N'Efectivo')
GO
INSERT [dbo].[TipoDePago] ([TipoId], [TipoDP]) VALUES (2, N'Elect')
GO
INSERT [dbo].[TipoDePago] ([TipoId], [TipoDP]) VALUES (3, N'Cheque')
GO
INSERT [dbo].[TipoDePago] ([TipoId], [TipoDP]) VALUES (4, N'Web')
GO
INSERT [dbo].[TipoDePago] ([TipoId], [TipoDP]) VALUES (6, N'Elect3')
GO
INSERT [dbo].[TipoDePago] ([TipoId], [TipoDP]) VALUES (7, N'Web2')
GO
INSERT [dbo].[TipoDePago] ([TipoId], [TipoDP]) VALUES (8, N'Efectivo3')
GO
INSERT [dbo].[TipoDePago] ([TipoId], [TipoDP]) VALUES (9, N'Elect4')
GO
INSERT [dbo].[TipoDePago] ([TipoId], [TipoDP]) VALUES (10, N'Web3')
GO
INSERT [dbo].[TipoDePago] ([TipoId], [TipoDP]) VALUES (11, N'Web4')
GO
INSERT [dbo].[TipoDePago] ([TipoId], [TipoDP]) VALUES (12, N'Elect5')
GO
INSERT [dbo].[TipoDePago] ([TipoId], [TipoDP]) VALUES (13, N'Web5')
GO
INSERT [dbo].[TipoDePago] ([TipoId], [TipoDP]) VALUES (14, N'Web6')
GO
INSERT [dbo].[TipoDePago] ([TipoId], [TipoDP]) VALUES (15, N'Efectivo4')
GO
INSERT [dbo].[Venta] ([Id_Venta], [Id_Cajero], [Id_Cliente], [Serie], [Fecha_Venta], [Total]) VALUES (1, 2, 1, N'TN', CAST(N'2018-10-19 15:30:12.000' AS DateTime), 2500.0000)
GO
INSERT [dbo].[Venta] ([Id_Venta], [Id_Cajero], [Id_Cliente], [Serie], [Fecha_Venta], [Total]) VALUES (2, 3, 4, N'TM', CAST(N'2018-10-17 08:30:00.000' AS DateTime), 5000.0000)
GO
INSERT [dbo].[Venta] ([Id_Venta], [Id_Cajero], [Id_Cliente], [Serie], [Fecha_Venta], [Total]) VALUES (3, 2, 3, N'TN', CAST(N'2018-10-19 16:45:07.000' AS DateTime), 1300.0000)
GO
INSERT [dbo].[Venta] ([Id_Venta], [Id_Cajero], [Id_Cliente], [Serie], [Fecha_Venta], [Total]) VALUES (4, 2, 2, N'TN', CAST(N'2018-10-18 13:30:00.000' AS DateTime), 2500.0000)
GO
INSERT [dbo].[Venta] ([Id_Venta], [Id_Cajero], [Id_Cliente], [Serie], [Fecha_Venta], [Total]) VALUES (5, 2, 2, N'TN', CAST(N'2018-10-18 13:30:00.000' AS DateTime), 2500.0000)
GO
INSERT [dbo].[Venta] ([Id_Venta], [Id_Cajero], [Id_Cliente], [Serie], [Fecha_Venta], [Total]) VALUES (6, 4, 6, N'TN', CAST(N'2018-10-20 07:50:05.000' AS DateTime), 2500.0000)
GO
INSERT [dbo].[Venta] ([Id_Venta], [Id_Cajero], [Id_Cliente], [Serie], [Fecha_Venta], [Total]) VALUES (7, 6, 7, N'TN', CAST(N'2018-10-19 15:30:55.000' AS DateTime), 1300.0000)
GO
INSERT [dbo].[Venta] ([Id_Venta], [Id_Cajero], [Id_Cliente], [Serie], [Fecha_Venta], [Total]) VALUES (8, 11, 8, N'TN', CAST(N'2018-10-19 15:30:55.000' AS DateTime), 1300.0000)
GO
INSERT [dbo].[Venta] ([Id_Venta], [Id_Cajero], [Id_Cliente], [Serie], [Fecha_Venta], [Total]) VALUES (9, 3, 9, N'TM', CAST(N'2018-10-19 15:30:55.000' AS DateTime), 2500.0000)
GO
INSERT [dbo].[Venta] ([Id_Venta], [Id_Cajero], [Id_Cliente], [Serie], [Fecha_Venta], [Total]) VALUES (10, 11, 10, N'TM', CAST(N'2018-10-19 15:30:55.000' AS DateTime), 1300.0000)
GO
INSERT [dbo].[Viaje] ([Id_Viaje], [Id_Ruta], [Id_Autobus], [Id_Conductor], [FechaHora_Salida], [TerminalSalida]) VALUES (1, 3, 4, 6, CAST(N'2018-10-29 15:30:00.000' AS DateTime), N'A11')
GO
INSERT [dbo].[Viaje] ([Id_Viaje], [Id_Ruta], [Id_Autobus], [Id_Conductor], [FechaHora_Salida], [TerminalSalida]) VALUES (2, 4, 1, 7, CAST(N'2018-10-29 18:00:00.000' AS DateTime), N'B12')
GO
INSERT [dbo].[Viaje] ([Id_Viaje], [Id_Ruta], [Id_Autobus], [Id_Conductor], [FechaHora_Salida], [TerminalSalida]) VALUES (3, 1, 2, 9, CAST(N'2018-10-29 18:00:00.000' AS DateTime), N'A10')
GO
INSERT [dbo].[Viaje] ([Id_Viaje], [Id_Ruta], [Id_Autobus], [Id_Conductor], [FechaHora_Salida], [TerminalSalida]) VALUES (4, 2, 5, 9, CAST(N'2018-10-30 12:45:00.000' AS DateTime), N'B15')
GO
ALTER TABLE [dbo].[Asientos]  WITH CHECK ADD  CONSTRAINT [FK_Asientos_Autobuses] FOREIGN KEY([Id_Autobus])
REFERENCES [dbo].[Autobuses] ([Id_Autobus])
GO
ALTER TABLE [dbo].[Asientos] CHECK CONSTRAINT [FK_Asientos_Autobuses]
GO
ALTER TABLE [dbo].[Bancos]  WITH CHECK ADD FOREIGN KEY([Nivel])
REFERENCES [dbo].[NivelB] ([Id_Nivel])
GO
ALTER TABLE [dbo].[Bancos]  WITH CHECK ADD FOREIGN KEY([Regimiento])
REFERENCES [dbo].[Regimiento] ([Id_Regimiento])
GO
ALTER TABLE [dbo].[Boletos]  WITH CHECK ADD  CONSTRAINT [FK_Boletos_Producto] FOREIGN KEY([Id_Producto])
REFERENCES [dbo].[Producto] ([Id_Producto])
GO
ALTER TABLE [dbo].[Boletos] CHECK CONSTRAINT [FK_Boletos_Producto]
GO
ALTER TABLE [dbo].[Boletos]  WITH CHECK ADD  CONSTRAINT [FK_Boletos_TPasajero] FOREIGN KEY([Id_TPasajero])
REFERENCES [dbo].[Tipo_Pasajero] ([Id_Tipo])
GO
ALTER TABLE [dbo].[Boletos] CHECK CONSTRAINT [FK_Boletos_TPasajero]
GO
ALTER TABLE [dbo].[Boletos]  WITH CHECK ADD  CONSTRAINT [FK_Boletos_Viaje] FOREIGN KEY([Id_Viaje])
REFERENCES [dbo].[Viaje] ([Id_Viaje])
GO
ALTER TABLE [dbo].[Boletos] CHECK CONSTRAINT [FK_Boletos_Viaje]
GO
ALTER TABLE [dbo].[Boletos_Asientos]  WITH CHECK ADD  CONSTRAINT [FK_BoletoAsientos_Asientos] FOREIGN KEY([Num_Asiento], [Id_Autobus])
REFERENCES [dbo].[Asientos] ([Num_Asiento], [Id_Autobus])
GO
ALTER TABLE [dbo].[Boletos_Asientos] CHECK CONSTRAINT [FK_BoletoAsientos_Asientos]
GO
ALTER TABLE [dbo].[Boletos_Asientos]  WITH CHECK ADD  CONSTRAINT [FK_BoletoAsientos_Boletos] FOREIGN KEY([Id_Boleto])
REFERENCES [dbo].[Boletos] ([Num_Folio])
GO
ALTER TABLE [dbo].[Boletos_Asientos] CHECK CONSTRAINT [FK_BoletoAsientos_Boletos]
GO
ALTER TABLE [dbo].[Cajeros]  WITH CHECK ADD  CONSTRAINT [FK_Cajeros_Empleados] FOREIGN KEY([Id_Cajero])
REFERENCES [dbo].[Empleados] ([Id_Empleado])
GO
ALTER TABLE [dbo].[Cajeros] CHECK CONSTRAINT [FK_Cajeros_Empleados]
GO
ALTER TABLE [dbo].[Ciudades]  WITH CHECK ADD  CONSTRAINT [FK_Ciudades_Estados] FOREIGN KEY([Id_Estado])
REFERENCES [dbo].[Estados] ([Id_Estado])
GO
ALTER TABLE [dbo].[Ciudades] CHECK CONSTRAINT [FK_Ciudades_Estados]
GO
ALTER TABLE [dbo].[Cliente_Boletos]  WITH CHECK ADD  CONSTRAINT [FK_ClienteBoletos_Boletos] FOREIGN KEY([Id_Boleto])
REFERENCES [dbo].[Boletos] ([Num_Folio])
GO
ALTER TABLE [dbo].[Cliente_Boletos] CHECK CONSTRAINT [FK_ClienteBoletos_Boletos]
GO
ALTER TABLE [dbo].[Cliente_Boletos]  WITH CHECK ADD  CONSTRAINT [FK_ClienteBoletos_Cliente] FOREIGN KEY([Id_Cliente])
REFERENCES [dbo].[Cliente] ([Id_Cliente])
GO
ALTER TABLE [dbo].[Cliente_Boletos] CHECK CONSTRAINT [FK_ClienteBoletos_Cliente]
GO
ALTER TABLE [dbo].[Conductores]  WITH CHECK ADD  CONSTRAINT [FK_Conductores_Empleados] FOREIGN KEY([Id_Conductor])
REFERENCES [dbo].[Empleados] ([Id_Empleado])
GO
ALTER TABLE [dbo].[Conductores] CHECK CONSTRAINT [FK_Conductores_Empleados]
GO
ALTER TABLE [dbo].[Detalles_Venta]  WITH CHECK ADD  CONSTRAINT [FK_DetallesVenta_Producto] FOREIGN KEY([Id_Producto])
REFERENCES [dbo].[Producto] ([Id_Producto])
GO
ALTER TABLE [dbo].[Detalles_Venta] CHECK CONSTRAINT [FK_DetallesVenta_Producto]
GO
ALTER TABLE [dbo].[Detalles_Venta]  WITH CHECK ADD  CONSTRAINT [FK_DetallesVenta_Venta] FOREIGN KEY([Id_Venta])
REFERENCES [dbo].[Venta] ([Id_Venta])
GO
ALTER TABLE [dbo].[Detalles_Venta] CHECK CONSTRAINT [FK_DetallesVenta_Venta]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Puesto] FOREIGN KEY([Id_Puesto])
REFERENCES [dbo].[Puesto] ([Id_Puesto])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Puesto]
GO
ALTER TABLE [dbo].[Pago]  WITH CHECK ADD FOREIGN KEY([Moneda])
REFERENCES [dbo].[TipoDeMoneda] ([TipoMonedaId])
GO
ALTER TABLE [dbo].[Pago]  WITH CHECK ADD FOREIGN KEY([Tipo])
REFERENCES [dbo].[TipoDePago] ([TipoId])
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Categorias] FOREIGN KEY([Id_Categoria])
REFERENCES [dbo].[Categorias] ([Id_Categoria])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Categorias]
GO
ALTER TABLE [dbo].[Rutas]  WITH CHECK ADD  CONSTRAINT [FK_Rutas_Ciudades1] FOREIGN KEY([Ciudad_Origen])
REFERENCES [dbo].[Ciudades] ([Id_Ciudad])
GO
ALTER TABLE [dbo].[Rutas] CHECK CONSTRAINT [FK_Rutas_Ciudades1]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Cajero] FOREIGN KEY([Id_Cajero])
REFERENCES [dbo].[Cajeros] ([Id_Cajero])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Cajero]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Cliente] FOREIGN KEY([Id_Cliente])
REFERENCES [dbo].[Cliente] ([Id_Cliente])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Cliente]
GO
ALTER TABLE [dbo].[Viaje]  WITH CHECK ADD  CONSTRAINT [FK_Viaje_Autobuses] FOREIGN KEY([Id_Autobus])
REFERENCES [dbo].[Autobuses] ([Id_Autobus])
GO
ALTER TABLE [dbo].[Viaje] CHECK CONSTRAINT [FK_Viaje_Autobuses]
GO
ALTER TABLE [dbo].[Viaje]  WITH CHECK ADD  CONSTRAINT [FK_Viaje_Conductores] FOREIGN KEY([Id_Conductor])
REFERENCES [dbo].[Conductores] ([Id_Conductor])
GO
ALTER TABLE [dbo].[Viaje] CHECK CONSTRAINT [FK_Viaje_Conductores]
GO
ALTER TABLE [dbo].[Viaje]  WITH CHECK ADD  CONSTRAINT [FK_Viaje_Rutas] FOREIGN KEY([Id_Ruta])
REFERENCES [dbo].[Rutas] ([Id_Ruta])
GO
ALTER TABLE [dbo].[Viaje] CHECK CONSTRAINT [FK_Viaje_Rutas]
GO
/****** Object:  StoredProcedure [dbo].[BancosOrigen]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[BancosOrigen]
@origen varchar(15)
as
select Nombre, Origen from Bancos where Origen like @origen

GO
/****** Object:  StoredProcedure [dbo].[BuscadorPorId]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[BuscadorPorId]
@id int
as 
select BancosId, Nombre + Origen as Nombre_Origen, monedas from Bancos where BancosId = @id

GO
/****** Object:  StoredProcedure [dbo].[CantidadMoneda]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[CantidadMoneda]
@monedaC varchar(5)
as
select count(PagoId) as Cantidad_Tipo_DL, Moneda from Pago inner join TipoDeMoneda on Moneda 
= TipoMonedaId where TipoDeMon = @monedaC group by Moneda 

GO
/****** Object:  StoredProcedure [dbo].[CantidadPorMoneda]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[CantidadPorMoneda]
@monedaB varchar(10)
as
select Origen, count(BancosId) as MonedaCantidad from Bancos where monedas like @monedaB group by Origen

GO
/****** Object:  StoredProcedure [dbo].[Descripcion]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Descripcion]
@Id_d int
as 
select Descripcion from Puesto where Id_Puesto = @Id_d
GO
/****** Object:  StoredProcedure [dbo].[Fech_N]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Fech_N]
@Id_f int
as
select Fech_Nac from Empleados where Id_Empleado = @Id_f
GO
/****** Object:  StoredProcedure [dbo].[Moneda]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Moneda]
@moneda varchar(5)
as
select * from TipoDeMoneda where TipoDeMon = @moneda

GO
/****** Object:  StoredProcedure [dbo].[Name]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Name]
@Se varchar(2)
as
select Nombre from Empleados where sexo = @Se
GO
/****** Object:  StoredProcedure [dbo].[NumeroVentas]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NumeroVentas](
@Mes int,
@Precio money
)
AS
BEGIN
	SELECT COUNT(Id_Venta) as Ventas 
	FROM Venta 
	WHERE DATEPART(MONTH, Fecha_Venta) = @Mes 
	AND Venta.Total >= @Precio
END
GO
/****** Object:  StoredProcedure [dbo].[PagoConMoneda]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[PagoConMoneda]
@monedaT varchar(5)
as
select PagoId, Tipo, Moneda,TipoDeMon from Pago inner join TipoDeMoneda on Moneda = TipoMonedaId and TipoDeMon = @monedaT

GO
/****** Object:  StoredProcedure [dbo].[PromedioVentaBoletos]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PromedioVentaBoletos](
@Precio money
)
AS
BEGIN
	SELECT AVG(CantidadBoletos.Cantidad) as PromedioBoletosxCliente 
	FROM (SELECT COUNT(Id_Boleto) as Cantidad 
			FROM Cliente_Boletos as cb 
			LEFT JOIN Boletos as b 
			ON b.Num_Folio = cb.Id_Boleto AND b.Precio >= @Precio
			GROUP BY Id_Cliente)
	as CantidadBoletos
END
GO
/****** Object:  StoredProcedure [dbo].[RestablecerCliente]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RestablecerCliente](
@Fecha datetime
)
AS
BEGIN
	DELETE FROM Viaje WHERE FechaHora_Salida <= @Fecha
END
GO
/****** Object:  StoredProcedure [dbo].[RevisarNumVentas]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RevisarNumVentas](
@Mes int
)
AS
BEGIN
	SELECT COUNT(Id_Venta) as Ventas 
	FROM Venta 
	WHERE DATEPART(MONTH, Fecha_Venta) = @Mes
END
GO
/****** Object:  StoredProcedure [dbo].[RevisarViajesDia]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RevisarViajesDia](
@Dia int
)
AS
BEGIN
	SELECT v.Id_Viaje, 
		(SELECT c.Nombre FROM Ciudades as c WHERE Id_Ciudad=r.Ciudad_Origen) as Origen,
		(SELECT c.Nombre FROM Ciudades as c WHERE Id_Ciudad=r.Ciudad_Destino) as Destino, 
		v.FechaHora_Salida as Viajes 
	FROM Viaje as v 
	LEFT JOIN Rutas as r
	ON r.Id_Ruta = v.Id_Ruta
	WHERE DATEPART(MONTH, FechaHora_Salida) = DATEPART(MONTH, GETDATE()) 
	AND DATEPART(YEAR, FechaHora_Salida) = DATEPART(YEAR, GETDATE())
	AND DATEPART(DAY, FechaHora_Salida) = @Dia
END
GO
/****** Object:  StoredProcedure [dbo].[sexo]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sexo]
@Id_s int
as
select sexo from Empleados where Id_Empleado = @Id_s
GO
/****** Object:  StoredProcedure [dbo].[Tel]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Tel]
@Id_e int
as
select Telefono from Empleados where Id_Empleado = @Id_e
GO
/****** Object:  StoredProcedure [dbo].[ViajesRealizadoAutobus]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ViajesRealizadoAutobus](
@Mes int
)
AS
BEGIN
	SELECT a.Id_Autobus, a.Modelo, COUNT(v.Id_Autobus) as NumeroViajes 
	FROM Viaje as v 
	RIGHT JOIN Autobuses as a 
	ON a.Id_Autobus=v.Id_Autobus 
	WHERE DATEPART(MONTH, v.FechaHora_Salida) = @Mes
	GROUP BY a.Id_Autobus, a.Modelo
END
GO
/****** Object:  Trigger [dbo].[Actualizacion]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[Actualizacion]
on [dbo].[Bancos]
after update as
begin
select BancosId,Nombre,Origen,monedas,Nivel,n.Descripcion,Regimiento,r.Descripcion 
from Bancos inner join NivelB n on Id_Nivel = Nivel inner join Regimiento r on Id_Regimiento = Regimiento
end
GO
/****** Object:  Trigger [dbo].[Nivelado_Regimiento]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[Nivelado_Regimiento]
on [dbo].[Bancos]
for delete as
begin
select n.Id_Nivel, n.Descripcion,r.Id_Regimiento, r.Descripcion from NivelB n, Regimiento r
select * from Bancos
end
GO
/****** Object:  Trigger [dbo].[RecordatorioBanco]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[RecordatorioBanco]
on [dbo].[Bancos] 
AFTER INSERT AS 
Begin
select * from Bancos
end
GO
/****** Object:  Trigger [dbo].[Producto_Categoria]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[Producto_Categoria]
on [dbo].[Categorias]
for insert as
begin 
SELECT a.Id_Categoria, a.Descripcion 
FROM Categorias a
INNER JOIN Producto b ON a.Id_Categoria = b.Id_Categoria
end
GO
/****** Object:  Trigger [dbo].[ActualizarBoletos]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[ActualizarBoletos]
ON [dbo].[Cliente_Boletos]
AFTER DELETE
AS
BEGIN
	UPDATE Boletos SET Id_TPasajero = 2 WHERE Num_Folio = (SELECT Num_Folio FROM deleted)
END
GO
/****** Object:  Trigger [dbo].[RevisarPrecio]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[RevisarPrecio]
ON [dbo].[Detalles_Venta]
AFTER INSERT
AS
BEGIN
	UPDATE Detalles_Venta SET Precio_Unitario = (SELECT Precio_Venta FROM Producto WHERE Producto.Id_Producto=Detalles_Venta.Id_Producto)
	UPDATE Detalles_Venta SET Subtotal = Precio_Unitario*Cantidad
END
GO
/****** Object:  Trigger [dbo].[Puesto_Existente]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[Puesto_Existente]
on [dbo].[Empleados]
after delete as
begin 
SELECT a.Id_Puesto, a.Nombre
FROM Empleados a
LEFT JOIN Puesto b ON a.Id_Puesto = b.Id_Puesto
end
GO
/****** Object:  Trigger [dbo].[ActualizarDVentas]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[ActualizarDVentas]
ON [dbo].[Producto]
AFTER UPDATE
AS
BEGIN
	UPDATE Detalles_Venta SET Precio_Unitario = (SELECT Precio_Venta FROM inserted)
	UPDATE Detalles_Venta SET Subtotal = Precio_Unitario * Cantidad
END
GO
/****** Object:  Trigger [dbo].[Existencia_Producto]    Script Date: 27/10/2018 11:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[Existencia_Producto]
on [dbo].[Producto]
after update as
begin 
select * from Existente
end
GO
USE [master]
GO
ALTER DATABASE [Proyecto_BDComplete] SET  READ_WRITE 
GO
