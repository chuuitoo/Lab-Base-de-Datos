USE [ProyectoSendaNormalizado]
GO
/****** Object:  Table [dbo].[Asociados]    Script Date: 22/09/2018 1:55:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Asociados](
	[AsociadoId] [int] NOT NULL,
	[Servicio] [varchar](20) NOT NULL,
 CONSTRAINT [PK_TiposDeAsociados] PRIMARY KEY CLUSTERED 
(
	[AsociadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Autobus]    Script Date: 22/09/2018 1:55:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Autobus](
	[AutobusId] [int] NOT NULL,
	[CamioneraId] [int] NOT NULL,
	[EmpleadoId] [int] NOT NULL,
	[Capacidad] [int] NOT NULL,
	[Caracteristicas] [varchar](50) NULL,
 CONSTRAINT [PK__Camiones__FA60529A74BC54B4] PRIMARY KEY CLUSTERED 
(
	[AutobusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bancos]    Script Date: 22/09/2018 1:55:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bancos](
	[BancosId] [int] NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
	[Origen] [varchar](20) NOT NULL,
	[TipoMonedaId] [int] NOT NULL,
 CONSTRAINT [PK__Bancos__8597149AEEC6F7A0] PRIMARY KEY CLUSTERED 
(
	[BancosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Boleto]    Script Date: 22/09/2018 1:55:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Boleto](
	[ViajeId] [int] NOT NULL,
	[NumFolio] [int] NOT NULL,
	[ClienteId] [int] NOT NULL,
	[PagoId] [int] NOT NULL,
 CONSTRAINT [PK__Boleto__EDD74835BF7F9231] PRIMARY KEY CLUSTERED 
(
	[NumFolio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Camioneras]    Script Date: 22/09/2018 1:55:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Camioneras](
	[CamionerasId] [int] NOT NULL,
	[Nombre] [varchar](10) NULL,
	[Motor] [varchar](10) NULL,
	[Año] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CamionerasId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 22/09/2018 1:55:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleados](
	[EmpleadoId] [int] NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
	[Apellidos] [varchar](30) NOT NULL,
	[Edad] [varchar](10) NOT NULL,
	[Sexo] [char](1) NULL,
 CONSTRAINT [PK__Empleado__958BE910B28446F6] PRIMARY KEY CLUSTERED 
(
	[EmpleadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 22/09/2018 1:55:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pago](
	[PagoId] [int] NOT NULL,
	[TipoId] [int] NOT NULL,
	[MonedaId] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK__Pago__F00B613814D623CD] PRIMARY KEY CLUSTERED 
(
	[PagoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pasajero]    Script Date: 22/09/2018 1:55:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pasajero](
	[PasajeroId] [int] NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
	[Apellidos] [varchar](30) NOT NULL,
	[TipoPasajero] [varchar](10) NOT NULL,
	[Telefono] [int] NULL,
	[Correo] [varchar](30) NULL,
 CONSTRAINT [PK__Cliente__71ABD0872B222975] PRIMARY KEY CLUSTERED 
(
	[PasajeroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PuestoEmpleados]    Script Date: 22/09/2018 1:55:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PuestoEmpleados](
	[EmpleadoId] [int] NOT NULL,
	[Puesto] [varchar](25) NOT NULL,
 CONSTRAINT [PK_PuestoEmpleados] PRIMARY KEY CLUSTERED 
(
	[EmpleadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoDeMoneda]    Script Date: 22/09/2018 1:55:44 ******/
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
/****** Object:  Table [dbo].[TipoDePago]    Script Date: 22/09/2018 1:55:44 ******/
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
/****** Object:  Table [dbo].[Viaje]    Script Date: 22/09/2018 1:55:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Viaje](
	[ViajeId] [int] NOT NULL,
	[Destino] [varchar](10) NOT NULL,
	[Origen] [varchar](10) NOT NULL,
	[Costo] [money] NOT NULL,
	[AutobusId] [int] NOT NULL,
	[Ida] [datetime] NOT NULL,
	[Vuelta] [datetime] NOT NULL,
 CONSTRAINT [PK__Viaje__3213E83F2BC154CD] PRIMARY KEY CLUSTERED 
(
	[ViajeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Autobus]  WITH CHECK ADD  CONSTRAINT [FK_Autobus_Camioneras] FOREIGN KEY([CamioneraId])
REFERENCES [dbo].[Camioneras] ([CamionerasId])
GO
ALTER TABLE [dbo].[Autobus] CHECK CONSTRAINT [FK_Autobus_Camioneras]
GO
ALTER TABLE [dbo].[Autobus]  WITH CHECK ADD  CONSTRAINT [FK_Autobus_PuestoEmpleados] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[PuestoEmpleados] ([EmpleadoId])
GO
ALTER TABLE [dbo].[Autobus] CHECK CONSTRAINT [FK_Autobus_PuestoEmpleados]
GO
ALTER TABLE [dbo].[Bancos]  WITH CHECK ADD  CONSTRAINT [FK_Bancos_Asociados] FOREIGN KEY([BancosId])
REFERENCES [dbo].[Asociados] ([AsociadoId])
GO
ALTER TABLE [dbo].[Bancos] CHECK CONSTRAINT [FK_Bancos_Asociados]
GO
ALTER TABLE [dbo].[Bancos]  WITH CHECK ADD  CONSTRAINT [FK_Bancos_TipoDeMoneda] FOREIGN KEY([TipoMonedaId])
REFERENCES [dbo].[TipoDeMoneda] ([TipoMonedaId])
GO
ALTER TABLE [dbo].[Bancos] CHECK CONSTRAINT [FK_Bancos_TipoDeMoneda]
GO
ALTER TABLE [dbo].[Boleto]  WITH CHECK ADD  CONSTRAINT [FK__Boleto__ClienteI__36B12243] FOREIGN KEY([ClienteId])
REFERENCES [dbo].[Pasajero] ([PasajeroId])
GO
ALTER TABLE [dbo].[Boleto] CHECK CONSTRAINT [FK__Boleto__ClienteI__36B12243]
GO
ALTER TABLE [dbo].[Boleto]  WITH CHECK ADD  CONSTRAINT [FK__Boleto__PagoId__37A5467C] FOREIGN KEY([PagoId])
REFERENCES [dbo].[Pago] ([PagoId])
GO
ALTER TABLE [dbo].[Boleto] CHECK CONSTRAINT [FK__Boleto__PagoId__37A5467C]
GO
ALTER TABLE [dbo].[Boleto]  WITH CHECK ADD  CONSTRAINT [FK_Boleto_Viaje] FOREIGN KEY([ViajeId])
REFERENCES [dbo].[Viaje] ([ViajeId])
GO
ALTER TABLE [dbo].[Boleto] CHECK CONSTRAINT [FK_Boleto_Viaje]
GO
ALTER TABLE [dbo].[Camioneras]  WITH CHECK ADD  CONSTRAINT [FK_Camioneras_Asociados] FOREIGN KEY([CamionerasId])
REFERENCES [dbo].[Asociados] ([AsociadoId])
GO
ALTER TABLE [dbo].[Camioneras] CHECK CONSTRAINT [FK_Camioneras_Asociados]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_PuestoEmpleados] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[PuestoEmpleados] ([EmpleadoId])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_PuestoEmpleados]
GO
ALTER TABLE [dbo].[Pago]  WITH CHECK ADD  CONSTRAINT [FK_Pago_TipoDeMoneda] FOREIGN KEY([MonedaId])
REFERENCES [dbo].[TipoDeMoneda] ([TipoMonedaId])
GO
ALTER TABLE [dbo].[Pago] CHECK CONSTRAINT [FK_Pago_TipoDeMoneda]
GO
ALTER TABLE [dbo].[Pago]  WITH CHECK ADD  CONSTRAINT [FK_Pago_TipoDePago] FOREIGN KEY([TipoId])
REFERENCES [dbo].[TipoDePago] ([TipoId])
GO
ALTER TABLE [dbo].[Pago] CHECK CONSTRAINT [FK_Pago_TipoDePago]
GO
ALTER TABLE [dbo].[Viaje]  WITH CHECK ADD  CONSTRAINT [FK_Viaje_Autobus] FOREIGN KEY([AutobusId])
REFERENCES [dbo].[Autobus] ([AutobusId])
GO
ALTER TABLE [dbo].[Viaje] CHECK CONSTRAINT [FK_Viaje_Autobus]
GO
