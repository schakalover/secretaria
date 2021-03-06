USE [Secretaria]
GO

/****** Object:  Table [dbo].[Almacen]    Script Date: 12/01/2016 10:23:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Almacen](
	[id_Almacen] [int] IDENTITY(1,1) NOT NULL,
	[id_Corporacion] [int] NOT NULL,
	[id_Usuario] [int] NOT NULL,
	[Nombre] [nchar](30) NOT NULL,
 CONSTRAINT [PK_Almacen] PRIMARY KEY CLUSTERED 
(
	[id_Almacen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Areas]    Script Date: 12/01/2016 10:23:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Areas](
	[id_Area] [int] IDENTITY(1,1) NOT NULL,
	[id_Corporacion] [int] NOT NULL,
	[Area] [nchar](100) NOT NULL,
 CONSTRAINT [PK_Areas] PRIMARY KEY CLUSTERED 
(
	[id_Area] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cat_Marcas]    Script Date: 12/01/2016 10:23:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cat_Marcas](
	[id_Marca] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](30) NOT NULL,
	[activo] [binary](2) NULL,
 CONSTRAINT [PK_Cat_Marca] PRIMARY KEY CLUSTERED 
(
	[id_Marca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cat_Modelos]    Script Date: 12/01/2016 10:23:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cat_Modelos](
	[id_Modelo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](30) NULL,
	[Activo] [bit] NULL,
 CONSTRAINT [PK_Cat_Modelo] PRIMARY KEY CLUSTERED 
(
	[id_Modelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cat_Productos]    Script Date: 12/01/2016 10:23:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cat_Productos](
	[id_Producto] [int] IDENTITY(1,1) NOT NULL,
	[id_UnidadesdeMedida] [int] NOT NULL,
	[id_Marca] [int] NOT NULL,
	[id_Modelo] [int] NOT NULL,
	[Descripcion] [nchar](30) NULL,
	[FechaReg] [date] NOT NULL,
	[Activo] [bit] NULL,
	[Nombre] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Cat_Producto] PRIMARY KEY CLUSTERED 
(
	[id_Producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Corporacion]    Script Date: 12/01/2016 10:23:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Corporacion](
	[id_Corporacion] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nchar](30) NULL,
 CONSTRAINT [PK_Dependencia] PRIMARY KEY CLUSTERED 
(
	[id_Corporacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ingredientes]    Script Date: 12/01/2016 10:23:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingredientes](
	[id_Producto] [int] NOT NULL,
	[id_Ingrediente] [int] IDENTITY(1,1) NOT NULL,
	[Porcion] [real] NOT NULL,
	[id_Unidad_de_Medida] [int] NOT NULL,
 CONSTRAINT [PK_Ingredientes] PRIMARY KEY CLUSTERED 
(
	[id_Ingrediente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Justificacion]    Script Date: 12/01/2016 10:23:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Justificacion](
	[id_Usuario] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Menu_Platillos]    Script Date: 12/01/2016 10:23:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu_Platillos](
	[id_Menu] [int] NOT NULL,
	[id_Platillo] [int] NOT NULL,
 CONSTRAINT [PK_Menu_Platillos] PRIMARY KEY CLUSTERED 
(
	[id_Platillo] ASC,
	[id_Menu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Menus]    Script Date: 12/01/2016 10:23:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menus](
	[id_Menu] [int] NOT NULL,
	[Tipo] [nchar](40) NOT NULL,
	[Numero] [int] NOT NULL,
	[Descripcion] [text] NULL,
	[fecha] [date] NULL,
 CONSTRAINT [PK_Menu_1] PRIMARY KEY CLUSTERED 
(
	[id_Menu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Platillos]    Script Date: 12/01/2016 10:23:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Platillos](
	[id_Platillo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Platillos] PRIMARY KEY CLUSTERED 
(
	[id_Platillo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Platillos_Ingredientes]    Script Date: 12/01/2016 10:23:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Platillos_Ingredientes](
	[Id_Platillo] [int] NOT NULL,
	[id_Ingrediente] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Platillo] ASC,
	[id_Ingrediente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_Inventario]    Script Date: 12/01/2016 10:23:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Inventario](
	[id_Inventario] [int] IDENTITY(1,1) NOT NULL,
	[id_Producto] [int] NOT NULL,
	[id_Almacen] [int] NOT NULL,
	[Existencia] [nchar](30) NOT NULL,
	[Stock_Minimo] [int] NOT NULL,
	[Stock_Maximo] [int] NOT NULL,
 CONSTRAINT [PK_Tbl_Inventario] PRIMARY KEY CLUSTERED 
(
	[id_Inventario] ASC,
	[id_Producto] ASC,
	[id_Almacen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Unidades_Alimenticias]    Script Date: 12/01/2016 10:23:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unidades_Alimenticias](
	[Id_Unidad_Alimenticia] [int] NOT NULL,
	[Cantidad_Personas] [int] NOT NULL,
	[Porcion] [real] NOT NULL,
	[id_Unidad_de_Medida] [int] NOT NULL,
	[id_Ingrediente] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Unidad_Alimenticia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Unidades_de_ medidas]    Script Date: 12/01/2016 10:23:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unidades_de_ medidas](
	[id_UnidadesdeMedida] [int] IDENTITY(1,1) NOT NULL,
	[U_M] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Unidades_de_ medida] PRIMARY KEY CLUSTERED 
(
	[id_UnidadesdeMedida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 12/01/2016 10:23:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuarios](
	[id_Usuario] [int] IDENTITY(1,1) NOT NULL,
	[FK_Corporacion] [int] NOT NULL,
	[id_Area] [int] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Cargo] [nvarchar](50) NOT NULL,
	[Usuario] [nvarchar](50) NOT NULL,
	[Contraseña] [nvarchar](50) NOT NULL,
	[Activo_Inactivo] [binary](1) NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[id_Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Almacen]  WITH CHECK ADD  CONSTRAINT [FK_Almacen_Corporacion] FOREIGN KEY([id_Corporacion])
REFERENCES [dbo].[Corporacion] ([id_Corporacion])
GO
ALTER TABLE [dbo].[Almacen] CHECK CONSTRAINT [FK_Almacen_Corporacion]
GO
ALTER TABLE [dbo].[Cat_Productos]  WITH CHECK ADD  CONSTRAINT [FK_Cat_Producto_Cat_Marca] FOREIGN KEY([id_Marca])
REFERENCES [dbo].[Cat_Marcas] ([id_Marca])
GO
ALTER TABLE [dbo].[Cat_Productos] CHECK CONSTRAINT [FK_Cat_Producto_Cat_Marca]
GO
ALTER TABLE [dbo].[Cat_Productos]  WITH CHECK ADD  CONSTRAINT [FK_Cat_Producto_Cat_Modelo] FOREIGN KEY([id_Modelo])
REFERENCES [dbo].[Cat_Modelos] ([id_Modelo])
GO
ALTER TABLE [dbo].[Cat_Productos] CHECK CONSTRAINT [FK_Cat_Producto_Cat_Modelo]
GO
ALTER TABLE [dbo].[Cat_Productos]  WITH CHECK ADD  CONSTRAINT [FK_Cat_Producto_Unidades_de_ medida] FOREIGN KEY([id_UnidadesdeMedida])
REFERENCES [dbo].[Unidades_de_ medidas] ([id_UnidadesdeMedida])
GO
ALTER TABLE [dbo].[Cat_Productos] CHECK CONSTRAINT [FK_Cat_Producto_Unidades_de_ medida]
GO
ALTER TABLE [dbo].[Ingredientes]  WITH CHECK ADD  CONSTRAINT [FK_Ingredientes_Cat_Producto] FOREIGN KEY([id_Producto])
REFERENCES [dbo].[Cat_Productos] ([id_Producto])
GO
ALTER TABLE [dbo].[Ingredientes] CHECK CONSTRAINT [FK_Ingredientes_Cat_Producto]
GO
ALTER TABLE [dbo].[Ingredientes]  WITH CHECK ADD  CONSTRAINT [FK_Ingredientes_Unidad_Alimenticia] FOREIGN KEY([id_Producto])
REFERENCES [dbo].[Unidades_Alimenticias] ([Id_Unidad_Alimenticia])
GO
ALTER TABLE [dbo].[Ingredientes] CHECK CONSTRAINT [FK_Ingredientes_Unidad_Alimenticia]
GO
ALTER TABLE [dbo].[Ingredientes]  WITH CHECK ADD  CONSTRAINT [FK_Ingredientes_Unidades_de_ medidas] FOREIGN KEY([id_Unidad_de_Medida])
REFERENCES [dbo].[Unidades_de_ medidas] ([id_UnidadesdeMedida])
GO
ALTER TABLE [dbo].[Ingredientes] CHECK CONSTRAINT [FK_Ingredientes_Unidades_de_ medidas]
GO
ALTER TABLE [dbo].[Menu_Platillos]  WITH CHECK ADD  CONSTRAINT [FK_Menu_Platillos_Menu] FOREIGN KEY([id_Menu])
REFERENCES [dbo].[Menus] ([id_Menu])
GO
ALTER TABLE [dbo].[Menu_Platillos] CHECK CONSTRAINT [FK_Menu_Platillos_Menu]
GO
ALTER TABLE [dbo].[Menu_Platillos]  WITH CHECK ADD  CONSTRAINT [FK_Menu_Platillos_Platillos] FOREIGN KEY([id_Platillo])
REFERENCES [dbo].[Platillos] ([id_Platillo])
GO
ALTER TABLE [dbo].[Menu_Platillos] CHECK CONSTRAINT [FK_Menu_Platillos_Platillos]
GO
ALTER TABLE [dbo].[Platillos_Ingredientes]  WITH CHECK ADD  CONSTRAINT [FK_Platillos_Ingredientes_Ingredientes] FOREIGN KEY([id_Ingrediente])
REFERENCES [dbo].[Ingredientes] ([id_Ingrediente])
GO
ALTER TABLE [dbo].[Platillos_Ingredientes] CHECK CONSTRAINT [FK_Platillos_Ingredientes_Ingredientes]
GO
ALTER TABLE [dbo].[Platillos_Ingredientes]  WITH CHECK ADD  CONSTRAINT [FK_Platillos_Ingredientes_Platillos] FOREIGN KEY([Id_Platillo])
REFERENCES [dbo].[Platillos] ([id_Platillo])
GO
ALTER TABLE [dbo].[Platillos_Ingredientes] CHECK CONSTRAINT [FK_Platillos_Ingredientes_Platillos]
GO
ALTER TABLE [dbo].[Tbl_Inventario]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Inventario_Almacen] FOREIGN KEY([id_Almacen])
REFERENCES [dbo].[Almacen] ([id_Almacen])
GO
ALTER TABLE [dbo].[Tbl_Inventario] CHECK CONSTRAINT [FK_Tbl_Inventario_Almacen]
GO
ALTER TABLE [dbo].[Tbl_Inventario]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Inventario_Cat_Producto1] FOREIGN KEY([id_Producto])
REFERENCES [dbo].[Cat_Productos] ([id_Producto])
GO
ALTER TABLE [dbo].[Tbl_Inventario] CHECK CONSTRAINT [FK_Tbl_Inventario_Cat_Producto1]
GO
ALTER TABLE [dbo].[Unidades_Alimenticias]  WITH CHECK ADD  CONSTRAINT [FK_Unidad_Alimenticia_Unidades_de_ medida] FOREIGN KEY([id_Unidad_de_Medida])
REFERENCES [dbo].[Unidades_de_ medidas] ([id_UnidadesdeMedida])
GO
ALTER TABLE [dbo].[Unidades_Alimenticias] CHECK CONSTRAINT [FK_Unidad_Alimenticia_Unidades_de_ medida]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Areas] FOREIGN KEY([id_Area])
REFERENCES [dbo].[Areas] ([id_Area])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuario_Areas]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Corporacion] FOREIGN KEY([FK_Corporacion])
REFERENCES [dbo].[Corporacion] ([id_Corporacion])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuario_Corporacion]
GO
USE [master]
GO
ALTER DATABASE [Secretaria] SET  READ_WRITE 
GO
