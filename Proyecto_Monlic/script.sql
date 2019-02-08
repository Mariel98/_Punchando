USE [BDMonlic1]
GO
/****** Object:  Table [dbo].[Ciudades]    Script Date: 7/02/2019 11:09:03 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudades](
	[IdCiudad] [int] IDENTITY(1,1) NOT NULL,
	[Ciudad] [varchar](30) NULL,
	[IdDepartamento] [int] NULL,
	[Estado] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCiudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contactos]    Script Date: 7/02/2019 11:09:03 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contactos](
	[IdContacto] [int] IDENTITY(1,1) NOT NULL,
	[Contacto] [varchar](45) NULL,
	[Documento] [int] NULL,
	[Telefono] [int] NULL,
	[IdTipoD] [int] NULL,
	[IdCiudad] [int] NULL,
	[Estado] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdContacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamentos]    Script Date: 7/02/2019 11:09:03 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamentos](
	[IdDepartamento] [int] IDENTITY(1,1) NOT NULL,
	[Departamento] [varchar](45) NULL,
	[Estado] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Entradas_Salidas]    Script Date: 7/02/2019 11:09:03 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entradas_Salidas](
	[IdE_S] [int] IDENTITY(1,1) NOT NULL,
	[Precio] [int] NULL,
	[Cantidad] [int] NULL,
	[IdMaterial] [int] NULL,
	[IdMovimiento] [int] NULL,
	[Estado] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdE_S] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materiales]    Script Date: 7/02/2019 11:09:04 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materiales](
	[IdMaterial] [int] IDENTITY(1,1) NOT NULL,
	[Material] [varchar](30) NULL,
	[Descripcion] [varchar](45) NULL,
	[Existencia] [int] NULL,
	[Precio] [int] NULL,
	[IdUnidad] [int] NULL,
	[Estado] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMaterial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovimientoESA]    Script Date: 7/02/2019 11:09:04 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovimientoESA](
	[IdMovimientoESA] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NULL,
	[Precio] [int] NULL,
	[Cantidad] [int] NULL,
	[IdMaterial] [int] NULL,
	[IdTipoM] [int] NULL,
	[IdContacto] [int] NULL,
	[Estado] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMovimientoESA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movimientos]    Script Date: 7/02/2019 11:09:04 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movimientos](
	[IdMovimiento] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NULL,
	[IdTipoM] [int] NULL,
	[IdContacto] [int] NULL,
	[Estado] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMovimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposDocumentos]    Script Date: 7/02/2019 11:09:04 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposDocumentos](
	[IdTipoD] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTipoD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposMovimientos]    Script Date: 7/02/2019 11:09:04 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposMovimientos](
	[IdTipoM] [int] IDENTITY(1,1) NOT NULL,
	[Movimiento] [varchar](30) NULL,
	[Estado] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTipoM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UnidadMedidas]    Script Date: 7/02/2019 11:09:04 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnidadMedidas](
	[IdUnidad] [int] IDENTITY(1,1) NOT NULL,
	[Unidad] [varchar](30) NULL,
	[Estado] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUnidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Ciudades] ON 

INSERT [dbo].[Ciudades] ([IdCiudad], [Ciudad], [IdDepartamento], [Estado]) VALUES (1, N'Medellin', 1, N'Activo')
SET IDENTITY_INSERT [dbo].[Ciudades] OFF
SET IDENTITY_INSERT [dbo].[Contactos] ON 

INSERT [dbo].[Contactos] ([IdContacto], [Contacto], [Documento], [Telefono], [IdTipoD], [IdCiudad], [Estado]) VALUES (1, N'Jose David Gomez', 1034553446, 2344554, 1, 1, N'Activo')
INSERT [dbo].[Contactos] ([IdContacto], [Contacto], [Documento], [Telefono], [IdTipoD], [IdCiudad], [Estado]) VALUES (2, N'Brayan Marulanda', 1035233499, 293884, 1, 1, N'Activo')
INSERT [dbo].[Contactos] ([IdContacto], [Contacto], [Documento], [Telefono], [IdTipoD], [IdCiudad], [Estado]) VALUES (3, N'Cristian morales', 1234568745, 3105487, 1, 1, N'Activo')
SET IDENTITY_INSERT [dbo].[Contactos] OFF
SET IDENTITY_INSERT [dbo].[Departamentos] ON 

INSERT [dbo].[Departamentos] ([IdDepartamento], [Departamento], [Estado]) VALUES (1, N'Antioquia', N'Activo')
INSERT [dbo].[Departamentos] ([IdDepartamento], [Departamento], [Estado]) VALUES (2, N'Meta', N'Activo')
SET IDENTITY_INSERT [dbo].[Departamentos] OFF
SET IDENTITY_INSERT [dbo].[Entradas_Salidas] ON 

INSERT [dbo].[Entradas_Salidas] ([IdE_S], [Precio], [Cantidad], [IdMaterial], [IdMovimiento], [Estado]) VALUES (1, 2, 2, 1, NULL, N'Activo')
SET IDENTITY_INSERT [dbo].[Entradas_Salidas] OFF
SET IDENTITY_INSERT [dbo].[Materiales] ON 

INSERT [dbo].[Materiales] ([IdMaterial], [Material], [Descripcion], [Existencia], [Precio], [IdUnidad], [Estado]) VALUES (1, N'Cobre', N'Rojo', NULL, 10000, 1, N'Inactivo')
INSERT [dbo].[Materiales] ([IdMaterial], [Material], [Descripcion], [Existencia], [Precio], [IdUnidad], [Estado]) VALUES (2, N'Aluminio', N'', 38, 5000, 1, N'Activo')
INSERT [dbo].[Materiales] ([IdMaterial], [Material], [Descripcion], [Existencia], [Precio], [IdUnidad], [Estado]) VALUES (1002, N'Bronce', N'', 0, 8500, 1, N'Activo')
SET IDENTITY_INSERT [dbo].[Materiales] OFF
SET IDENTITY_INSERT [dbo].[MovimientoESA] ON 

INSERT [dbo].[MovimientoESA] ([IdMovimientoESA], [Fecha], [Precio], [Cantidad], [IdMaterial], [IdTipoM], [IdContacto], [Estado]) VALUES (1, CAST(N'2018-11-02' AS Date), 9000, 2, 1, 1, 1, N'Activo')
INSERT [dbo].[MovimientoESA] ([IdMovimientoESA], [Fecha], [Precio], [Cantidad], [IdMaterial], [IdTipoM], [IdContacto], [Estado]) VALUES (2, CAST(N'2018-11-26' AS Date), 5000, 3, 1, 1, 1, N'Activo')
INSERT [dbo].[MovimientoESA] ([IdMovimientoESA], [Fecha], [Precio], [Cantidad], [IdMaterial], [IdTipoM], [IdContacto], [Estado]) VALUES (3, CAST(N'2018-11-25' AS Date), 4000, 3, 1, 1, 1, N'Activo')
INSERT [dbo].[MovimientoESA] ([IdMovimientoESA], [Fecha], [Precio], [Cantidad], [IdMaterial], [IdTipoM], [IdContacto], [Estado]) VALUES (4, CAST(N'2018-08-11' AS Date), 10000, 10, 1, 1, 1, N'Activo')
INSERT [dbo].[MovimientoESA] ([IdMovimientoESA], [Fecha], [Precio], [Cantidad], [IdMaterial], [IdTipoM], [IdContacto], [Estado]) VALUES (5, CAST(N'2018-08-11' AS Date), 10000, 2, 1, 2, 1, N'Activo')
INSERT [dbo].[MovimientoESA] ([IdMovimientoESA], [Fecha], [Precio], [Cantidad], [IdMaterial], [IdTipoM], [IdContacto], [Estado]) VALUES (6, CAST(N'2018-11-21' AS Date), 10000, 5, 1, 1, 1, N'Activo')
INSERT [dbo].[MovimientoESA] ([IdMovimientoESA], [Fecha], [Precio], [Cantidad], [IdMaterial], [IdTipoM], [IdContacto], [Estado]) VALUES (7, CAST(N'2018-11-22' AS Date), 15000, 5, 1, 2, 1, N'Activo')
INSERT [dbo].[MovimientoESA] ([IdMovimientoESA], [Fecha], [Precio], [Cantidad], [IdMaterial], [IdTipoM], [IdContacto], [Estado]) VALUES (8, CAST(N'2018-11-28' AS Date), 10000, 10, 2, 1, 1, N'Activo')
INSERT [dbo].[MovimientoESA] ([IdMovimientoESA], [Fecha], [Precio], [Cantidad], [IdMaterial], [IdTipoM], [IdContacto], [Estado]) VALUES (9, CAST(N'2018-11-06' AS Date), 10000, 30, 1, 1, 1, N'Activo')
INSERT [dbo].[MovimientoESA] ([IdMovimientoESA], [Fecha], [Precio], [Cantidad], [IdMaterial], [IdTipoM], [IdContacto], [Estado]) VALUES (10, CAST(N'2018-11-28' AS Date), 11000, 10, 2, 1, 1, N'Activo')
INSERT [dbo].[MovimientoESA] ([IdMovimientoESA], [Fecha], [Precio], [Cantidad], [IdMaterial], [IdTipoM], [IdContacto], [Estado]) VALUES (11, CAST(N'2018-11-27' AS Date), 4000, 2, 2, 1, 1, N'Activo')
INSERT [dbo].[MovimientoESA] ([IdMovimientoESA], [Fecha], [Precio], [Cantidad], [IdMaterial], [IdTipoM], [IdContacto], [Estado]) VALUES (1004, CAST(N'2018-11-28' AS Date), 6000, 1, 2, 1, 2, N'Activo')
INSERT [dbo].[MovimientoESA] ([IdMovimientoESA], [Fecha], [Precio], [Cantidad], [IdMaterial], [IdTipoM], [IdContacto], [Estado]) VALUES (1005, CAST(N'2018-11-02' AS Date), 2000, 2, 1, 1, 2, N'Activo')
INSERT [dbo].[MovimientoESA] ([IdMovimientoESA], [Fecha], [Precio], [Cantidad], [IdMaterial], [IdTipoM], [IdContacto], [Estado]) VALUES (1006, CAST(N'2018-11-30' AS Date), 3000, 1, 2, 2, 1, N'Activo')
INSERT [dbo].[MovimientoESA] ([IdMovimientoESA], [Fecha], [Precio], [Cantidad], [IdMaterial], [IdTipoM], [IdContacto], [Estado]) VALUES (1007, CAST(N'2018-11-30' AS Date), 2000, 7, 1, 1, 1, N'Activo')
INSERT [dbo].[MovimientoESA] ([IdMovimientoESA], [Fecha], [Precio], [Cantidad], [IdMaterial], [IdTipoM], [IdContacto], [Estado]) VALUES (1008, CAST(N'2018-12-03' AS Date), 5600, 2, 1, 1, 2, N'Activo')
INSERT [dbo].[MovimientoESA] ([IdMovimientoESA], [Fecha], [Precio], [Cantidad], [IdMaterial], [IdTipoM], [IdContacto], [Estado]) VALUES (1009, CAST(N'2018-12-03' AS Date), 6000, 15, 2, 1, 2, N'Activo')
INSERT [dbo].[MovimientoESA] ([IdMovimientoESA], [Fecha], [Precio], [Cantidad], [IdMaterial], [IdTipoM], [IdContacto], [Estado]) VALUES (1010, CAST(N'2019-01-05' AS Date), 4000, 4, 1, 1, 2, N'Activo')
INSERT [dbo].[MovimientoESA] ([IdMovimientoESA], [Fecha], [Precio], [Cantidad], [IdMaterial], [IdTipoM], [IdContacto], [Estado]) VALUES (1011, CAST(N'2019-02-06' AS Date), 12000, 1, 2, 1, 1, N'Activo')
SET IDENTITY_INSERT [dbo].[MovimientoESA] OFF
SET IDENTITY_INSERT [dbo].[TiposDocumentos] ON 

INSERT [dbo].[TiposDocumentos] ([IdTipoD], [Tipo]) VALUES (1, N'C.C')
INSERT [dbo].[TiposDocumentos] ([IdTipoD], [Tipo]) VALUES (2, N'T.I')
SET IDENTITY_INSERT [dbo].[TiposDocumentos] OFF
SET IDENTITY_INSERT [dbo].[TiposMovimientos] ON 

INSERT [dbo].[TiposMovimientos] ([IdTipoM], [Movimiento], [Estado]) VALUES (1, N'Entrada', N'Activo')
INSERT [dbo].[TiposMovimientos] ([IdTipoM], [Movimiento], [Estado]) VALUES (2, N'Salida', N'Activo')
SET IDENTITY_INSERT [dbo].[TiposMovimientos] OFF
SET IDENTITY_INSERT [dbo].[UnidadMedidas] ON 

INSERT [dbo].[UnidadMedidas] ([IdUnidad], [Unidad], [Estado]) VALUES (1, N'Kg', N'Activo')
INSERT [dbo].[UnidadMedidas] ([IdUnidad], [Unidad], [Estado]) VALUES (2, N'Lb', N'Activo')
INSERT [dbo].[UnidadMedidas] ([IdUnidad], [Unidad], [Estado]) VALUES (3, N'Tonelada', N'Activo')
SET IDENTITY_INSERT [dbo].[UnidadMedidas] OFF
/****** Object:  Index [UQ__Contacto__AF73706D947B450B]    Script Date: 7/02/2019 11:09:04 a. m. ******/
ALTER TABLE [dbo].[Contactos] ADD UNIQUE NONCLUSTERED 
(
	[Documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Ciudades] ADD  DEFAULT ('Activo') FOR [Estado]
GO
ALTER TABLE [dbo].[Contactos] ADD  DEFAULT ('Activo') FOR [Estado]
GO
ALTER TABLE [dbo].[Departamentos] ADD  DEFAULT ('Activo') FOR [Estado]
GO
ALTER TABLE [dbo].[Entradas_Salidas] ADD  DEFAULT ('Activo') FOR [Estado]
GO
ALTER TABLE [dbo].[Materiales] ADD  DEFAULT ('Activo') FOR [Estado]
GO
ALTER TABLE [dbo].[MovimientoESA] ADD  DEFAULT ('Activo') FOR [Estado]
GO
ALTER TABLE [dbo].[Movimientos] ADD  DEFAULT ('Activo') FOR [Estado]
GO
ALTER TABLE [dbo].[TiposMovimientos] ADD  DEFAULT ('Activo') FOR [Estado]
GO
ALTER TABLE [dbo].[UnidadMedidas] ADD  DEFAULT ('Activo') FOR [Estado]
GO
ALTER TABLE [dbo].[Ciudades]  WITH CHECK ADD FOREIGN KEY([IdDepartamento])
REFERENCES [dbo].[Departamentos] ([IdDepartamento])
GO
ALTER TABLE [dbo].[Contactos]  WITH CHECK ADD FOREIGN KEY([IdCiudad])
REFERENCES [dbo].[Ciudades] ([IdCiudad])
GO
ALTER TABLE [dbo].[Contactos]  WITH CHECK ADD FOREIGN KEY([IdTipoD])
REFERENCES [dbo].[TiposDocumentos] ([IdTipoD])
GO
ALTER TABLE [dbo].[Entradas_Salidas]  WITH CHECK ADD FOREIGN KEY([IdMaterial])
REFERENCES [dbo].[Materiales] ([IdMaterial])
GO
ALTER TABLE [dbo].[Entradas_Salidas]  WITH CHECK ADD FOREIGN KEY([IdMovimiento])
REFERENCES [dbo].[Movimientos] ([IdMovimiento])
GO
ALTER TABLE [dbo].[Materiales]  WITH CHECK ADD FOREIGN KEY([IdUnidad])
REFERENCES [dbo].[UnidadMedidas] ([IdUnidad])
GO
ALTER TABLE [dbo].[MovimientoESA]  WITH CHECK ADD FOREIGN KEY([IdContacto])
REFERENCES [dbo].[Contactos] ([IdContacto])
GO
ALTER TABLE [dbo].[MovimientoESA]  WITH CHECK ADD FOREIGN KEY([IdMaterial])
REFERENCES [dbo].[Materiales] ([IdMaterial])
GO
ALTER TABLE [dbo].[MovimientoESA]  WITH CHECK ADD FOREIGN KEY([IdTipoM])
REFERENCES [dbo].[TiposMovimientos] ([IdTipoM])
GO
ALTER TABLE [dbo].[Movimientos]  WITH CHECK ADD FOREIGN KEY([IdContacto])
REFERENCES [dbo].[Contactos] ([IdContacto])
GO
ALTER TABLE [dbo].[Movimientos]  WITH CHECK ADD FOREIGN KEY([IdTipoM])
REFERENCES [dbo].[TiposMovimientos] ([IdTipoM])
GO
/****** Object:  StoredProcedure [dbo].[editarcontactos]    Script Date: 7/02/2019 11:09:04 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[editarcontactos]
@Idcontacto int,
@Contacto varchar(30),
@Documento int,
@Telefono int,
@Idtipod int,
@IdCiudad int
as
begin
update Contactos set  Documento=@Documento,Contacto=@Contacto,Telefono=@Telefono,IdTipoD=@Idtipod,IdCiudad=IdCiudad
where IdContacto=@Idcontacto
end
GO
/****** Object:  StoredProcedure [dbo].[estado_ciudad]    Script Date: 7/02/2019 11:09:04 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[estado_ciudad]
@Idciudad int
as
begin
if((select estado from Ciudades where IdCiudad=@Idciudad)='Activo') 
begin
update Ciudades
set Estado='Inactivo'
where IdCiudad=@Idciudad
end
else if((select estado from Ciudades where IdCiudad=@Idciudad)='Inactivo')
begin
update Ciudades
set Estado='Activo'
where IdCiudad=@Idciudad
end 
end
GO
/****** Object:  StoredProcedure [dbo].[estado_contacto]    Script Date: 7/02/2019 11:09:04 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[estado_contacto]
@Idcontacto int
as
begin
if((select estado from Contactos where IdContacto=@Idcontacto)='Activo') 
begin
update Contactos
set Estado='Inactivo'
where IdContacto=@Idcontacto
end
else if((select estado from Contactos where IdContacto=@Idcontacto)='Inactivo')
begin
update Contactos
set Estado='Activo'
where IdContacto=@Idcontacto
end 
end
GO
/****** Object:  StoredProcedure [dbo].[estado_material]    Script Date: 7/02/2019 11:09:04 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[estado_material]
@Idmaterial int
as
begin
if((select estado from Materiales where IdMaterial=@Idmaterial)='Activo') 
begin
update Materiales
set Estado='Inactivo'
where IdMaterial=@Idmaterial
end
else if((select estado from Materiales where IdMaterial=@Idmaterial)='Inactivo')
begin
update Materiales
set Estado='Activo'
where IdMaterial=@Idmaterial
end 
end
GO
/****** Object:  StoredProcedure [dbo].[estado_Medida]    Script Date: 7/02/2019 11:09:04 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[estado_Medida]
@IdUnidad int
as
begin
if((select estado from UnidadMedidas where IdUnidad=@IdUnidad)='Activo') 
begin
update UnidadMedidas
set Estado='Inactivo'
where IdUnidad=@IdUnidad
end
else if((select estado from UnidadMedidas where IdUnidad=@IdUnidad)='Inactivo')
begin
update UnidadMedidas
set Estado='Activo'
where IdUnidad=@IdUnidad
end 
end
GO
/****** Object:  StoredProcedure [dbo].[StockManage]    Script Date: 7/02/2019 11:09:04 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[StockManage] 
@idTipoM int,
@Cantidad int,
@idMaterial int
as
begin
if @idTipoM = 1
begin 
update Materiales set Existencia= Existencia + @Cantidad
where @idMaterial = IdMaterial
end
else if @idTipoM = 2
begin
update Materiales set Existencia= Existencia - @Cantidad
where @idMaterial = IdMaterial
end
end
GO
/****** Object:  StoredProcedure [dbo].[StockManage2]    Script Date: 7/02/2019 11:09:04 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[StockManage2] 
@idTipoM int,
@Cantidad int,
@idMaterial int,
@Fecha date,
@Precio int,
@IdContacto int
as
begin
insert into MovimientoESA values (@Fecha,@Precio,@Cantidad,@idMaterial,@idTipoM,@IdContacto,'Activo')
if @idTipoM = 1
begin
update Materiales set Existencia= Existencia + @Cantidad
where @idMaterial = IdMaterial
end
else if @idTipoM = 2
begin
update Materiales set Existencia= Existencia - @Cantidad
where @idMaterial = IdMaterial
end
end
GO
/****** Object:  StoredProcedure [dbo].[unidad_activa]    Script Date: 7/02/2019 11:09:04 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[unidad_activa]
as
Select * from UnidadMedidas where Estado = 'Activo'
GO
/****** Object:  StoredProcedure [dbo].[unidad_inactiva]    Script Date: 7/02/2019 11:09:04 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[unidad_inactiva]
as
Select * from UnidadMedidas where Estado = 'Inactivo'
GO
/****** Object:  StoredProcedure [dbo].[validar_contactos]    Script Date: 7/02/2019 11:09:04 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[validar_contactos]
@Contacto varchar(45),
@Documento int,
@Telefono int,
@IdTipo int,
@IdCiudad int
as
begin
if((select count(*) from Contactos where Documento=@Documento)=0)
begin
insert into Contactos(Contacto,Documento,Telefono,IdTipoD,IdCiudad) values (STUFF (@Contacto, 1, 1,(UPPER(left(@Contacto,1)))),@Documento,@Telefono,@IdTipo,@IdCiudad)
end
else if((select count(*) from Contactos where Documento=@Documento)=0)
begin
return 1
end
end
GO
/****** Object:  StoredProcedure [dbo].[validarrepetidos]    Script Date: 7/02/2019 11:09:04 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[validarrepetidos]
@Unidad varchar(30)
as
begin
if((select count(*) from UnidadMedidas where Unidad=@Unidad)=0)
begin
insert into UnidadMedidas(Unidad) values (STUFF (@Unidad, 1, 1,(UPPER(left(@Unidad,1)))))
end
else if((select count(*) from UnidadMedidas where Unidad=@Unidad)>=1)
begin
return 1
end
end
GO
/****** Object:  StoredProcedure [dbo].[validarrepetidos_material]    Script Date: 7/02/2019 11:09:04 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[validarrepetidos_material]
@Material varchar(30),
@Descripcion varchar(30),
@Existencia int,
@Precio int,
@IdUnidad int
as
begin
if((select count(*) from Materiales where Material=@Material)=0)
begin
insert into Materiales(Material,Descripcion,Existencia,Precio,IdUnidad) values (STUFF (@Material, 1, 1,(UPPER(left(@Material,1)))),@Descripcion,@Existencia,@Precio,@IdUnidad)
end
else if((select count(*) from Materiales where Material=@Material)=0)
begin
return 1
end
end
GO
/****** Object:  StoredProcedure [dbo].[validarrepetidoscontactos]    Script Date: 7/02/2019 11:09:04 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[validarrepetidoscontactos]
@Contacto varchar(30),
@Documento int,
@Telefono int,
@Idtipod int,
@IdCiudad int
as
begin
if((select count(*) from Contactos where Documento=@Documento)=0)
begin
insert into Contactos(Contacto,Documento,Telefono,IdTipoD,IdCiudad) values (STUFF (@Contacto, 1, 1,(UPPER(left(@Contacto,1)))),@Documento,@Telefono,@Idtipod,@IdCiudad)
end
else if((select count(*) from Contactos where Contacto=@Contacto and Documento=@Documento)=0)
begin
return 1
end
end
GO
