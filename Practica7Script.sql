USE [Practica4]
GO
ALTER TABLE [dbo].[Ticket] DROP CONSTRAINT [FK_Ticket_Orden]
GO
ALTER TABLE [dbo].[Producto] DROP CONSTRAINT [FK_Producto_Proveedor]
GO
ALTER TABLE [dbo].[Producto] DROP CONSTRAINT [FK_Producto_Categoria]
GO
ALTER TABLE [dbo].[Orden] DROP CONSTRAINT [FK_Orden_Empleado]
GO
ALTER TABLE [dbo].[Orden] DROP CONSTRAINT [FK_Orden_Cliente]
GO
ALTER TABLE [dbo].[Factura] DROP CONSTRAINT [FK_Factura_Orden]
GO
ALTER TABLE [dbo].[Factura] DROP CONSTRAINT [FK_Factura_Empleado]
GO
ALTER TABLE [dbo].[Factura] DROP CONSTRAINT [FK_Factura_Cliente]
GO
ALTER TABLE [dbo].[DetallesOrden] DROP CONSTRAINT [FK_DetallesOrden_Producto]
GO
ALTER TABLE [dbo].[DetallesOrden] DROP CONSTRAINT [FK_DetallesOrden_Orden]
GO
/****** Object:  Index [PK_Proveedor]    Script Date: 06/04/2019 04:12:35 p. m. ******/
ALTER TABLE [dbo].[Proveedor] DROP CONSTRAINT [PK_Proveedor]
GO
/****** Object:  Index [PK_Producto]    Script Date: 06/04/2019 04:12:35 p. m. ******/
ALTER TABLE [dbo].[Producto] DROP CONSTRAINT [PK_Producto]
GO
/****** Object:  Index [PK_Empleado]    Script Date: 06/04/2019 04:12:35 p. m. ******/
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [PK_Empleado]
GO
/****** Object:  Index [PK_Cliente]    Script Date: 06/04/2019 04:12:35 p. m. ******/
ALTER TABLE [dbo].[Cliente] DROP CONSTRAINT [PK_Cliente]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 06/04/2019 04:12:35 p. m. ******/
DROP TABLE [dbo].[Ticket]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 06/04/2019 04:12:35 p. m. ******/
DROP TABLE [dbo].[Factura]
GO
/****** Object:  View [dbo].[Horario]    Script Date: 06/04/2019 04:12:35 p. m. ******/
DROP VIEW [dbo].[Horario]
GO
/****** Object:  View [dbo].[NombreCatProd]    Script Date: 06/04/2019 04:12:35 p. m. ******/
DROP VIEW [dbo].[NombreCatProd]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 06/04/2019 04:12:35 p. m. ******/
DROP TABLE [dbo].[Categoria]
GO
/****** Object:  View [dbo].[FechaCompra]    Script Date: 06/04/2019 04:12:35 p. m. ******/
DROP VIEW [dbo].[FechaCompra]
GO
/****** Object:  Table [dbo].[Orden]    Script Date: 06/04/2019 04:12:35 p. m. ******/
DROP TABLE [dbo].[Orden]
GO
/****** Object:  Index [ClusteredIndex-20190316-144753]    Script Date: 06/04/2019 04:12:35 p. m. ******/
DROP INDEX [ClusteredIndex-20190316-144753] ON [dbo].[Cliente] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 06/04/2019 04:12:35 p. m. ******/
DROP TABLE [dbo].[Cliente]
GO
/****** Object:  View [dbo].[EMPRESAPRODUCTO]    Script Date: 06/04/2019 04:12:35 p. m. ******/
DROP VIEW [dbo].[EMPRESAPRODUCTO]
GO
/****** Object:  Index [ClusteredIndex-20190316-143301]    Script Date: 06/04/2019 04:12:35 p. m. ******/
DROP INDEX [ClusteredIndex-20190316-143301] ON [dbo].[Producto] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 06/04/2019 04:12:35 p. m. ******/
DROP TABLE [dbo].[Producto]
GO
/****** Object:  Index [ClusteredIndex-20190316-143236]    Script Date: 06/04/2019 04:12:35 p. m. ******/
DROP INDEX [ClusteredIndex-20190316-143236] ON [dbo].[Proveedor] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 06/04/2019 04:12:35 p. m. ******/
DROP TABLE [dbo].[Proveedor]
GO
/****** Object:  View [dbo].[CargoEspecifico]    Script Date: 06/04/2019 04:12:35 p. m. ******/
DROP VIEW [dbo].[CargoEspecifico]
GO
/****** Object:  Table [dbo].[Cargo]    Script Date: 06/04/2019 04:12:35 p. m. ******/
DROP TABLE [dbo].[Cargo]
GO
/****** Object:  View [dbo].[CantidadMenor]    Script Date: 06/04/2019 04:12:35 p. m. ******/
DROP VIEW [dbo].[CantidadMenor]
GO
/****** Object:  View [dbo].[CantidadMayor]    Script Date: 06/04/2019 04:12:35 p. m. ******/
DROP VIEW [dbo].[CantidadMayor]
GO
/****** Object:  View [dbo].[PersonalMasViejo]    Script Date: 06/04/2019 04:12:35 p. m. ******/
DROP VIEW [dbo].[PersonalMasViejo]
GO
/****** Object:  Index [ClusteredIndex-20190316-143124]    Script Date: 06/04/2019 04:12:35 p. m. ******/
DROP INDEX [ClusteredIndex-20190316-143124] ON [dbo].[Empleado] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 06/04/2019 04:12:35 p. m. ******/
DROP TABLE [dbo].[Empleado]
GO
/****** Object:  View [dbo].[ArticuloBarato]    Script Date: 06/04/2019 04:12:35 p. m. ******/
DROP VIEW [dbo].[ArticuloBarato]
GO
/****** Object:  View [dbo].[ArticuloCaro]    Script Date: 06/04/2019 04:12:35 p. m. ******/
DROP VIEW [dbo].[ArticuloCaro]
GO
/****** Object:  Index [ClusteredIndex-20190316-143619]    Script Date: 06/04/2019 04:12:35 p. m. ******/
DROP INDEX [ClusteredIndex-20190316-143619] ON [dbo].[DetallesOrden] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[DetallesOrden]    Script Date: 06/04/2019 04:12:35 p. m. ******/
DROP TABLE [dbo].[DetallesOrden]
GO
USE [master]
GO
/****** Object:  Database [Practica4]    Script Date: 06/04/2019 04:12:35 p. m. ******/
DROP DATABASE [Practica4]
GO
/****** Object:  Database [Practica4]    Script Date: 06/04/2019 04:12:35 p. m. ******/
CREATE DATABASE [Practica4]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Practica4', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Practica4.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Practica4_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Practica4_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Practica4] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Practica4].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Practica4] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Practica4] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Practica4] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Practica4] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Practica4] SET ARITHABORT OFF 
GO
ALTER DATABASE [Practica4] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Practica4] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Practica4] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Practica4] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Practica4] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Practica4] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Practica4] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Practica4] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Practica4] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Practica4] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Practica4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Practica4] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Practica4] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Practica4] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Practica4] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Practica4] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Practica4] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Practica4] SET RECOVERY FULL 
GO
ALTER DATABASE [Practica4] SET  MULTI_USER 
GO
ALTER DATABASE [Practica4] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Practica4] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Practica4] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Practica4] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Practica4] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Practica4', N'ON'
GO
ALTER DATABASE [Practica4] SET QUERY_STORE = OFF
GO
USE [Practica4]
GO
/****** Object:  Table [dbo].[DetallesOrden]    Script Date: 06/04/2019 04:12:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetallesOrden](
	[idOrden] [uniqueidentifier] NOT NULL,
	[idProducto] [uniqueidentifier] NOT NULL,
	[Precio] [money] NOT NULL,
	[Cantidad] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Index [ClusteredIndex-20190316-143619]    Script Date: 06/04/2019 04:12:36 p. m. ******/
CREATE CLUSTERED INDEX [ClusteredIndex-20190316-143619] ON [dbo].[DetallesOrden]
(
	[idOrden] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  View [dbo].[ArticuloCaro]    Script Date: 06/04/2019 04:12:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ArticuloCaro] AS
select max (Precio) as PrecioMasCaro from DetallesOrden
GO
/****** Object:  View [dbo].[ArticuloBarato]    Script Date: 06/04/2019 04:12:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ArticuloBarato] AS
select min (Precio) as PrecioMasBarato from DetallesOrden
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 06/04/2019 04:12:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[idEmpleado] [uniqueidentifier] NOT NULL,
	[idCargo] [nvarchar](max) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellidos] [varchar](50) NOT NULL,
	[FechaNac] [date] NOT NULL,
	[FechaCont] [date] NOT NULL,
	[Direccion] [varchar](max) NOT NULL,
	[CodigoPostal] [varchar](15) NOT NULL,
	[Ciudad] [varchar](50) NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
	[NombreCompleto]  AS (([Nombre]+' ')+[Apellidos]) PERSISTED NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO
/****** Object:  Index [ClusteredIndex-20190316-143124]    Script Date: 06/04/2019 04:12:36 p. m. ******/
CREATE CLUSTERED INDEX [ClusteredIndex-20190316-143124] ON [dbo].[Empleado]
(
	[NombreCompleto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  View [dbo].[PersonalMasViejo]    Script Date: 06/04/2019 04:12:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PersonalMasViejo] AS
select min(FechaNac)
as EdadMasBaja from Empleado
GO
/****** Object:  View [dbo].[CantidadMayor]    Script Date: 06/04/2019 04:12:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CantidadMayor] AS
select max (Cantidad) as CantidadComprada from DetallesOrden
GO
/****** Object:  View [dbo].[CantidadMenor]    Script Date: 06/04/2019 04:12:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CantidadMenor] AS
select min(Cantidad) as CantidadComprada from DetallesOrden
GO
/****** Object:  Table [dbo].[Cargo]    Script Date: 06/04/2019 04:12:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cargo](
	[idCargo] [uniqueidentifier] NOT NULL,
	[Descripcion] [varchar](max) NOT NULL,
	[HoraEntrada] [time](2) NOT NULL,
	[HoraSalida] [time](2) NOT NULL,
 CONSTRAINT [PK_Cargo] PRIMARY KEY CLUSTERED 
(
	[idCargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[CargoEspecifico]    Script Date: 06/04/2019 04:12:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CargoEspecifico] AS
select Descripcion as 'Id del cargo'
from Cargo
inner join Empleado
on Cargo.idCargo = Empleado.idCargo
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 06/04/2019 04:12:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[idProvedor] [uniqueidentifier] NOT NULL,
	[Empresa] [varchar](50) NOT NULL,
	[Direccion] [varchar](max) NOT NULL,
	[Cuidad] [varchar](50) NOT NULL,
	[CodigoPostal] [varchar](15) NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
	[DireCP]  AS (([Direccion]+' ')+[CodigoPostal]) PERSISTED NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ClusteredIndex-20190316-143236]    Script Date: 06/04/2019 04:12:36 p. m. ******/
CREATE CLUSTERED INDEX [ClusteredIndex-20190316-143236] ON [dbo].[Proveedor]
(
	[Empresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 06/04/2019 04:12:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[idProducto] [uniqueidentifier] NOT NULL,
	[NombreProd] [varchar](50) NOT NULL,
	[idCategoria] [uniqueidentifier] NOT NULL,
	[Existencia] [bit] NULL,
	[UnidadesOrden] [int] NOT NULL,
	[Precio] [money] NOT NULL,
	[idProvedor] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ClusteredIndex-20190316-143301]    Script Date: 06/04/2019 04:12:36 p. m. ******/
CREATE CLUSTERED INDEX [ClusteredIndex-20190316-143301] ON [dbo].[Producto]
(
	[NombreProd] ASC,
	[Existencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  View [dbo].[EMPRESAPRODUCTO]    Script Date: 06/04/2019 04:12:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[EMPRESAPRODUCTO] AS
select Empresa as 'Nombre de la Empresa'
from Proveedor
inner join Producto
on Proveedor.idProvedor = Producto.idProvedor
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 06/04/2019 04:12:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[idCliente] [uniqueidentifier] NOT NULL,
	[Empresa] [varchar](50) NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Direccion] [varchar](max) NOT NULL,
	[CodigoPostal] [varchar](15) NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
	[DireCP]  AS (([Direccion]+' ')+[CodigoPostal]) PERSISTED NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cliente] SET (LOCK_ESCALATION = AUTO)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ClusteredIndex-20190316-144753]    Script Date: 06/04/2019 04:12:36 p. m. ******/
CREATE CLUSTERED INDEX [ClusteredIndex-20190316-144753] ON [dbo].[Cliente]
(
	[Empresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orden]    Script Date: 06/04/2019 04:12:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orden](
	[idOrden] [uniqueidentifier] NOT NULL,
	[idCliente] [uniqueidentifier] NULL,
	[idEmpleado] [uniqueidentifier] NOT NULL,
	[OrdenFecha] [date] NOT NULL,
 CONSTRAINT [PK_Orden] PRIMARY KEY CLUSTERED 
(
	[idOrden] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[FechaCompra]    Script Date: 06/04/2019 04:12:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[FechaCompra] AS
select OrdenFecha as '¿Fecha de Compras?'
from Cliente
inner join Orden
on Orden.idCliente = Cliente.idCliente
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 06/04/2019 04:12:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[idCategoria] [uniqueidentifier] NOT NULL,
	[NomCat] [varchar](50) NOT NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[idCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[NombreCatProd]    Script Date: 06/04/2019 04:12:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[NombreCatProd] AS
select NombreProd, NomCat as 'Nombre y categoria del Producto'
from Producto
inner join Categoria
on Producto.idCategoria = Categoria.idCategoria
GO
/****** Object:  View [dbo].[Horario]    Script Date: 06/04/2019 04:12:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Horario] AS
select HoraEntrada, HoraSalida, NombreCompleto as 'Horarios'
from Cargo
inner join Empleado
on Cargo.idCargo = Empleado.idCargo
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 06/04/2019 04:12:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[NoFactura] [uniqueidentifier] NOT NULL,
	[idOrden] [uniqueidentifier] NOT NULL,
	[idCliente] [uniqueidentifier] NOT NULL,
	[idEmpleado] [uniqueidentifier] NOT NULL,
	[FacturaFecha] [date] NOT NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED 
(
	[NoFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 06/04/2019 04:12:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[idTicket] [uniqueidentifier] NOT NULL,
	[idOrden] [uniqueidentifier] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Sucursal] [tinyint] NOT NULL,
 CONSTRAINT [PK_Ticket] PRIMARY KEY CLUSTERED 
(
	[idTicket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Cargo] ([idCargo], [Descripcion], [HoraEntrada], [HoraSalida]) VALUES (N'9dfe3ae5-832f-41bf-a1df-6605ec587728', N'Carnicero', CAST(N'10:00:00' AS Time), CAST(N'18:00:00' AS Time))
INSERT [dbo].[Cargo] ([idCargo], [Descripcion], [HoraEntrada], [HoraSalida]) VALUES (N'dae217e5-888d-4238-b9f0-66fbe0183b42', N'Recursos Humanos', CAST(N'10:00:00' AS Time), CAST(N'18:00:00' AS Time))
INSERT [dbo].[Cargo] ([idCargo], [Descripcion], [HoraEntrada], [HoraSalida]) VALUES (N'c56c198f-f0c4-4e9d-bde3-6b65f6725293', N'Gerente', CAST(N'10:00:00' AS Time), CAST(N'18:00:00' AS Time))
INSERT [dbo].[Cargo] ([idCargo], [Descripcion], [HoraEntrada], [HoraSalida]) VALUES (N'e68937b6-ea36-423c-97fa-7a285a6dd763', N'Caja', CAST(N'10:00:00' AS Time), CAST(N'18:00:00' AS Time))
INSERT [dbo].[Cargo] ([idCargo], [Descripcion], [HoraEntrada], [HoraSalida]) VALUES (N'417b8920-b555-4cea-8dc4-98bea272e28a', N'Empleado de Ventas', CAST(N'10:00:00' AS Time), CAST(N'18:00:00' AS Time))
INSERT [dbo].[Cargo] ([idCargo], [Descripcion], [HoraEntrada], [HoraSalida]) VALUES (N'9bf9a201-25cc-4c01-addd-9b9ee2f01087', N'Empleado Mercadotecnia', CAST(N'12:00:00' AS Time), CAST(N'18:00:00' AS Time))
INSERT [dbo].[Cargo] ([idCargo], [Descripcion], [HoraEntrada], [HoraSalida]) VALUES (N'09bcec2d-4f40-4dcd-9c42-a50bdd1ccb8b', N'Contador', CAST(N'10:00:00' AS Time), CAST(N'18:00:00' AS Time))
INSERT [dbo].[Cargo] ([idCargo], [Descripcion], [HoraEntrada], [HoraSalida]) VALUES (N'a8c69a35-d364-4906-a456-aa25c75b4f90', N'Empleado de Mostrador', CAST(N'10:00:00' AS Time), CAST(N'18:00:00' AS Time))
INSERT [dbo].[Cargo] ([idCargo], [Descripcion], [HoraEntrada], [HoraSalida]) VALUES (N'1b762e55-d694-419c-8944-c44c936d045f', N'Despachador', CAST(N'10:00:00' AS Time), CAST(N'18:00:00' AS Time))
INSERT [dbo].[Cargo] ([idCargo], [Descripcion], [HoraEntrada], [HoraSalida]) VALUES (N'7e35ff42-0b2a-4e6f-a794-ff287b4ef622', N'Limpieza', CAST(N'10:00:00' AS Time), CAST(N'18:00:00' AS Time))
INSERT [dbo].[Categoria] ([idCategoria], [NomCat], [Descripcion]) VALUES (N'117ff877-58ac-4b93-8974-04127b108859', N'Botana', N'Aperitvo')
INSERT [dbo].[Categoria] ([idCategoria], [NomCat], [Descripcion]) VALUES (N'ff8f16c5-c0cb-48af-bbb1-221cbc474fff', N'Tortillas', N'alimento hecho con maíz nixtamalizado')
INSERT [dbo].[Categoria] ([idCategoria], [NomCat], [Descripcion]) VALUES (N'5302216b-346a-49b5-9b47-2fdf7a618451', N'Galletas', N'Alimento que se ingiere')
INSERT [dbo].[Categoria] ([idCategoria], [NomCat], [Descripcion]) VALUES (N'e02e9da0-b50e-48a4-9481-565118fba98f', N'Papel Higienico', N'papel que se usa para la limpieza anal y genital')
INSERT [dbo].[Categoria] ([idCategoria], [NomCat], [Descripcion]) VALUES (N'fa9d7acf-74f6-462f-bb96-79d9a9c316e7', N'Lacteos', N'alimentos como la leche y sus derivados procesados')
INSERT [dbo].[Categoria] ([idCategoria], [NomCat], [Descripcion]) VALUES (N'59adefcd-4a2c-40cb-8458-84d43e196202', N'Fruta', N'fruto comestible ')
INSERT [dbo].[Categoria] ([idCategoria], [NomCat], [Descripcion]) VALUES (N'd37183b7-ed00-4553-a576-ad096f56558f', N'Abarrotes', N'De todo un poco de Abarrotes')
INSERT [dbo].[Categoria] ([idCategoria], [NomCat], [Descripcion]) VALUES (N'b8cf87ce-07e4-4231-b52f-b350bb53b966', N'Bebida', N'líquido que se ingiere')
INSERT [dbo].[Categoria] ([idCategoria], [NomCat], [Descripcion]) VALUES (N'98902274-7db3-47db-8d72-bdac7d02838e', N'Pan', N'Alimento que se ingiere')
INSERT [dbo].[Categoria] ([idCategoria], [NomCat], [Descripcion]) VALUES (N'7d3db23b-b000-4dce-85c3-de0488332a91', N'Dulces', N'alimento preparado generalmente a base de azúcar')
INSERT [dbo].[Cliente] ([idCliente], [Empresa], [Nombre], [Direccion], [CodigoPostal], [Telefono]) VALUES (N'a16def55-4e54-4da5-b7c2-88dd72e7d3b5', N' ', N'Alberto Ruiz', N'Tulipan #528 Col. Ebanos', N'66124', N'8113824568')
INSERT [dbo].[Cliente] ([idCliente], [Empresa], [Nombre], [Direccion], [CodigoPostal], [Telefono]) VALUES (N'21a81f88-3d33-4a0d-b868-9c5565ed60f0', N' ', N'Cristina Montemayor', N'Mela #818 Col. Santa Cecilia', N'61616', N'8184695525')
INSERT [dbo].[Cliente] ([idCliente], [Empresa], [Nombre], [Direccion], [CodigoPostal], [Telefono]) VALUES (N'65a5a592-ee02-4e17-ac94-6130ca22c554', N' ', N'Juan Orto', N'Peñasco #1024 Col. Robles', N'66612', N'83147895')
INSERT [dbo].[Cliente] ([idCliente], [Empresa], [Nombre], [Direccion], [CodigoPostal], [Telefono]) VALUES (N'160dd832-463d-4c73-b7b9-e2d2422b6843', N' ', N'Esmeralda Chong', N'Chinga #836 Col. TuCulum', N'285634', N'8117856211')
INSERT [dbo].[Cliente] ([idCliente], [Empresa], [Nombre], [Direccion], [CodigoPostal], [Telefono]) VALUES (N'97e29e7e-f155-4035-8973-8a9767e04e0a', N'', N'Juan Mecobo', N'Concordia #123 Col. Cieneguita', N'32584', N'83145566')
INSERT [dbo].[Cliente] ([idCliente], [Empresa], [Nombre], [Direccion], [CodigoPostal], [Telefono]) VALUES (N'e8aedacc-9d00-46a1-879f-bf965c39b413', N'', N'Ruth Mia', N'Cromo #419 Col. Nuevo Las Puentes', N'66612', N'8117956134')
INSERT [dbo].[Cliente] ([idCliente], [Empresa], [Nombre], [Direccion], [CodigoPostal], [Telefono]) VALUES (N'956eae2d-51e7-44fa-b395-4773703be9b8', N'Abarrotes Poncha', N'Francisca Madera', N'Galaxia #718 Col. Los Encinos', N'66324', N'8124789631')
INSERT [dbo].[Cliente] ([idCliente], [Empresa], [Nombre], [Direccion], [CodigoPostal], [Telefono]) VALUES (N'1ca8e511-7015-4c47-9776-13d544a61e0c', N'Dulceria de la Esquina', N'Rosa Alamilloz', N'Poderosa #4789 Col. Nuevo Repueblo', N'66625', N'8113898885')
INSERT [dbo].[Cliente] ([idCliente], [Empresa], [Nombre], [Direccion], [CodigoPostal], [Telefono]) VALUES (N'87e4b3e5-b126-41da-8541-c61a4e9e499a', N'Ferreteria LOS ANDES', N'Aaron Ruiz', N'Buganbilia #512 Col. Insurgentes', N'646852', N'22318596')
INSERT [dbo].[Cliente] ([idCliente], [Empresa], [Nombre], [Direccion], [CodigoPostal], [Telefono]) VALUES (N'6fbee85f-6955-46bd-aefa-3a8f3be82af5', N'Tacos Don Paco', N'Erik Perez', N'Rosa #123 Col. Metroplex', N'541224', N'8113475569')
INSERT [dbo].[DetallesOrden] ([idOrden], [idProducto], [Precio], [Cantidad]) VALUES (N'693a2dca-0058-4bc6-ae21-139fe2846c08', N'9ede1cb2-4ba1-4199-812b-e08f8f06087d', 11.0000, 7)
INSERT [dbo].[DetallesOrden] ([idOrden], [idProducto], [Precio], [Cantidad]) VALUES (N'9fe252d2-3f8d-48b7-95ad-4ff6064abfa6', N'6ecd16cb-339b-48c2-84a6-d5b7e9855d34', 15.0000, 5)
INSERT [dbo].[DetallesOrden] ([idOrden], [idProducto], [Precio], [Cantidad]) VALUES (N'4a00a24d-a69d-44d2-926c-50c5eec3c748', N'e52a3c12-9618-4900-99a2-fa4d454f0264', 16.0000, 3)
INSERT [dbo].[DetallesOrden] ([idOrden], [idProducto], [Precio], [Cantidad]) VALUES (N'9b321bc6-b324-4d22-b1a3-561a4c06595e', N'26ce76c6-9a6c-456c-8c9e-8f0967dfee25', 12.0000, 6)
INSERT [dbo].[DetallesOrden] ([idOrden], [idProducto], [Precio], [Cantidad]) VALUES (N'5a1c3107-3a0a-436d-8d13-698feb688883', N'9f4b61d2-8083-4aaa-9775-041441005a00', 20.0000, 15)
INSERT [dbo].[DetallesOrden] ([idOrden], [idProducto], [Precio], [Cantidad]) VALUES (N'26ec1ddb-4d86-42a3-80eb-6fc886f6f5b6', N'c82b4109-6a1b-44f9-85ec-12d08cea915b', 10.0000, 2)
INSERT [dbo].[DetallesOrden] ([idOrden], [idProducto], [Precio], [Cantidad]) VALUES (N'e4f1f9cb-ef1e-40ea-8cf9-7ac5d8511911', N'9f4b61d2-8083-4aaa-9775-041441005a00', 20.0000, 5)
INSERT [dbo].[DetallesOrden] ([idOrden], [idProducto], [Precio], [Cantidad]) VALUES (N'4b6741f7-cb68-477c-8391-e0663824afdf', N'd313a52a-1bed-4c11-87ef-cb64d4411011', 25.0000, 3)
INSERT [dbo].[DetallesOrden] ([idOrden], [idProducto], [Precio], [Cantidad]) VALUES (N'd00b45bf-37c5-4e30-b8a3-e4228cb14989', N'e485950f-3b5e-48d5-b95e-36137a4f769b', 10.0000, 13)
INSERT [dbo].[DetallesOrden] ([idOrden], [idProducto], [Precio], [Cantidad]) VALUES (N'9adf41ea-aac7-4c27-a89f-facee1f0dec0', N'96a9df87-e27c-4873-840d-4e0e13f115ff', 20.0000, 2)
INSERT [dbo].[Empleado] ([idEmpleado], [idCargo], [Nombre], [Apellidos], [FechaNac], [FechaCont], [Direccion], [CodigoPostal], [Ciudad], [Telefono]) VALUES (N'b87d7e68-4583-4427-83c9-54ba46968c17', N'7E35FF42-0B2A-4E6F-A794-FF287B4EF622', N'Carmen', N'Villarreal Gutierrez', CAST(N'1960-12-26' AS Date), CAST(N'2014-12-01' AS Date), N'Pontia #415 Col. Moderna', N'55523', N'Apodaca', N'52 + 8756214777 ')
INSERT [dbo].[Empleado] ([idEmpleado], [idCargo], [Nombre], [Apellidos], [FechaNac], [FechaCont], [Direccion], [CodigoPostal], [Ciudad], [Telefono]) VALUES (N'89588cb8-c66f-409d-9566-32b81e3a5788', N'417B8920-B555-4CEA-8DC4-98BEA272E28A', N'Daniela', N'Carrillo Cantu', CAST(N'1997-01-09' AS Date), CAST(N'2019-02-22' AS Date), N'Zinc #4203 Col. Telas Poncho', N'56052', N'Apodaca', N'81 + 89784515 ')
INSERT [dbo].[Empleado] ([idEmpleado], [idCargo], [Nombre], [Apellidos], [FechaNac], [FechaCont], [Direccion], [CodigoPostal], [Ciudad], [Telefono]) VALUES (N'0b19055c-2ccc-4fda-8d34-6c338a6e7ae9', N'1B762E55-D694-419C-8944-C44C936D045F', N'Diana Janeth', N'Gonzalez Esquivel', CAST(N'1992-03-29' AS Date), CAST(N'2015-11-11' AS Date), N'Los Encinos #348 Col. Los Encinos', N'66623', N'Apodaca', N'52 + 8113854644 ')
INSERT [dbo].[Empleado] ([idEmpleado], [idCargo], [Nombre], [Apellidos], [FechaNac], [FechaCont], [Direccion], [CodigoPostal], [Ciudad], [Telefono]) VALUES (N'cd66ad15-1d35-43bb-9ef8-cc6f1f3df38b', N'E68937B6-EA36-423C-97FA-7A285A6DD763', N'Erika', N'Alamillo Cantu', CAST(N'1999-08-09' AS Date), CAST(N'2019-02-22' AS Date), N'Rubidio #403 Col. Las Cristales', N'66022', N'Guadalupe', N'81 + 13616692 ')
INSERT [dbo].[Empleado] ([idEmpleado], [idCargo], [Nombre], [Apellidos], [FechaNac], [FechaCont], [Direccion], [CodigoPostal], [Ciudad], [Telefono]) VALUES (N'610a4cc4-14ca-4a75-afe5-5446ca88d09f', N'9BF9A201-25CC-4C01-ADDD-9B9EE2F01087', N'Jesus Hector', N'Gonzalez Perez', CAST(N'1994-05-09' AS Date), CAST(N'2018-06-23' AS Date), N'Cobre #203 Col. Ebanos', N'66052', N'Apodaca', N'52 + 8113584064 ')
INSERT [dbo].[Empleado] ([idEmpleado], [idCargo], [Nombre], [Apellidos], [FechaNac], [FechaCont], [Direccion], [CodigoPostal], [Ciudad], [Telefono]) VALUES (N'e36ea6ca-7403-4e37-a608-9a32f3b76112', N'A8C69A35-D364-4906-A456-AA25C75B4F90', N'Karen Marlen', N'Gonzalez Esquivel', CAST(N'1994-10-22' AS Date), CAST(N'2015-11-11' AS Date), N'Los Encinos #348 Col. Los Encinos', N'66623', N'Apodaca', N'52 + 8174621585 ')
INSERT [dbo].[Empleado] ([idEmpleado], [idCargo], [Nombre], [Apellidos], [FechaNac], [FechaCont], [Direccion], [CodigoPostal], [Ciudad], [Telefono]) VALUES (N'4e4dfea2-531e-4c77-a7c4-49cd4a60e5b2', N'9DFE3AE5-832F-41BF-A1DF-6605EC587728', N'Luis', N'Gonzalez Marroquin', CAST(N'1970-06-21' AS Date), CAST(N'2012-04-20' AS Date), N'Cromo #40 Col. Nuevo Pueblo', N'66612', N'Apodaca', N'52 + 8114872640')
INSERT [dbo].[Empleado] ([idEmpleado], [idCargo], [Nombre], [Apellidos], [FechaNac], [FechaCont], [Direccion], [CodigoPostal], [Ciudad], [Telefono]) VALUES (N'c1def422-88d4-4c6e-8558-a8e4d3289487', N'C56C198F-F0C4-4E9D-BDE3-6B65F6725293', N'Nestor', N'Perez Lopez', CAST(N'1990-02-28' AS Date), CAST(N'2018-12-22' AS Date), N'Ambar #105 Col. Las Naranjos', N'48522', N'San Nicolas de los Garza', N'81 + 78924561 ')
INSERT [dbo].[Empleado] ([idEmpleado], [idCargo], [Nombre], [Apellidos], [FechaNac], [FechaCont], [Direccion], [CodigoPostal], [Ciudad], [Telefono]) VALUES (N'ca9448a9-b6ab-4cc0-8e00-199c7fc698f3', N'DAE217E5-888D-4238-B9F0-66FBE0183B42', N'Roberto', N'Esquivel Valdez', CAST(N'1994-02-01' AS Date), CAST(N'2016-10-22' AS Date), N'Telas #1205 Col. Las Palmas', N'66522', N'Monterrey', N'52 + 8113858051')
INSERT [dbo].[Empleado] ([idEmpleado], [idCargo], [Nombre], [Apellidos], [FechaNac], [FechaCont], [Direccion], [CodigoPostal], [Ciudad], [Telefono]) VALUES (N'350e1443-6603-4126-918a-d3dfef8ea7fa', N'09BCEC2D-4F40-4DCD-9C42-A50BDD1CCB8B', N'Santiago Rafael', N'Maynes Serafin', CAST(N'1994-08-02' AS Date), CAST(N'2017-09-02' AS Date), N'Petroño #924 Col. Nueva Democracia', N'95423', N'Apodaca', N'52 + 8124760156 ')
INSERT [dbo].[Factura] ([NoFactura], [idOrden], [idCliente], [idEmpleado], [FacturaFecha]) VALUES (N'7cec84a8-4a80-44ab-aa78-0af0ec9b2b24', N'9b321bc6-b324-4d22-b1a3-561a4c06595e', N'a16def55-4e54-4da5-b7c2-88dd72e7d3b5', N'89588cb8-c66f-409d-9566-32b81e3a5788', CAST(N'2019-01-05' AS Date))
INSERT [dbo].[Factura] ([NoFactura], [idOrden], [idCliente], [idEmpleado], [FacturaFecha]) VALUES (N'1ed181ea-f8de-40d2-9bb6-2367c2a6d7ca', N'4a00a24d-a69d-44d2-926c-50c5eec3c748', N'97e29e7e-f155-4035-8973-8a9767e04e0a', N'89588cb8-c66f-409d-9566-32b81e3a5788', CAST(N'2019-01-20' AS Date))
INSERT [dbo].[Factura] ([NoFactura], [idOrden], [idCliente], [idEmpleado], [FacturaFecha]) VALUES (N'61bfe746-7840-4a35-ab62-2d552acf5065', N'9adf41ea-aac7-4c27-a89f-facee1f0dec0', N'956eae2d-51e7-44fa-b395-4773703be9b8', N'89588cb8-c66f-409d-9566-32b81e3a5788', CAST(N'2019-01-25' AS Date))
INSERT [dbo].[Factura] ([NoFactura], [idOrden], [idCliente], [idEmpleado], [FacturaFecha]) VALUES (N'5c5b98d4-abfd-47e3-9765-2ea7a175b84d', N'e4f1f9cb-ef1e-40ea-8cf9-7ac5d8511911', N'1ca8e511-7015-4c47-9776-13d544a61e0c', N'89588cb8-c66f-409d-9566-32b81e3a5788', CAST(N'2019-01-29' AS Date))
INSERT [dbo].[Factura] ([NoFactura], [idOrden], [idCliente], [idEmpleado], [FacturaFecha]) VALUES (N'088c0cba-b714-4193-8a34-632be90ece7c', N'5a1c3107-3a0a-436d-8d13-698feb688883', N'e8aedacc-9d00-46a1-879f-bf965c39b413', N'89588cb8-c66f-409d-9566-32b81e3a5788', CAST(N'2019-01-22' AS Date))
INSERT [dbo].[Factura] ([NoFactura], [idOrden], [idCliente], [idEmpleado], [FacturaFecha]) VALUES (N'4d860825-db21-4f2c-b718-ac374487cbe6', N'693a2dca-0058-4bc6-ae21-139fe2846c08', N'65a5a592-ee02-4e17-ac94-6130ca22c554', N'89588cb8-c66f-409d-9566-32b81e3a5788', CAST(N'2019-01-13' AS Date))
INSERT [dbo].[Factura] ([NoFactura], [idOrden], [idCliente], [idEmpleado], [FacturaFecha]) VALUES (N'f744367d-e048-460e-abf0-b02340971c29', N'd00b45bf-37c5-4e30-b8a3-e4228cb14989', N'21a81f88-3d33-4a0d-b868-9c5565ed60f0', N'89588cb8-c66f-409d-9566-32b81e3a5788', CAST(N'2019-01-10' AS Date))
INSERT [dbo].[Factura] ([NoFactura], [idOrden], [idCliente], [idEmpleado], [FacturaFecha]) VALUES (N'54a4955c-c488-4c3a-83f5-c57899c5f14f', N'4b6741f7-cb68-477c-8391-e0663824afdf', N'6fbee85f-6955-46bd-aefa-3a8f3be82af5', N'89588cb8-c66f-409d-9566-32b81e3a5788', CAST(N'2019-02-07' AS Date))
INSERT [dbo].[Factura] ([NoFactura], [idOrden], [idCliente], [idEmpleado], [FacturaFecha]) VALUES (N'31a45883-f30d-4184-b2e3-cba444d4b0ba', N'9fe252d2-3f8d-48b7-95ad-4ff6064abfa6', N'160dd832-463d-4c73-b7b9-e2d2422b6843', N'89588cb8-c66f-409d-9566-32b81e3a5788', CAST(N'2019-01-15' AS Date))
INSERT [dbo].[Factura] ([NoFactura], [idOrden], [idCliente], [idEmpleado], [FacturaFecha]) VALUES (N'f05d8513-84eb-4bfa-9233-f53fe028fdec', N'26ec1ddb-4d86-42a3-80eb-6fc886f6f5b6', N'87e4b3e5-b126-41da-8541-c61a4e9e499a', N'89588cb8-c66f-409d-9566-32b81e3a5788', CAST(N'2019-02-05' AS Date))
INSERT [dbo].[Orden] ([idOrden], [idCliente], [idEmpleado], [OrdenFecha]) VALUES (N'693a2dca-0058-4bc6-ae21-139fe2846c08', N'65a5a592-ee02-4e17-ac94-6130ca22c554', N'89588cb8-c66f-409d-9566-32b81e3a5788', CAST(N'2019-01-13' AS Date))
INSERT [dbo].[Orden] ([idOrden], [idCliente], [idEmpleado], [OrdenFecha]) VALUES (N'9fe252d2-3f8d-48b7-95ad-4ff6064abfa6', N'160dd832-463d-4c73-b7b9-e2d2422b6843', N'89588cb8-c66f-409d-9566-32b81e3a5788', CAST(N'2019-01-15' AS Date))
INSERT [dbo].[Orden] ([idOrden], [idCliente], [idEmpleado], [OrdenFecha]) VALUES (N'4a00a24d-a69d-44d2-926c-50c5eec3c748', N'97e29e7e-f155-4035-8973-8a9767e04e0a', N'89588cb8-c66f-409d-9566-32b81e3a5788', CAST(N'2019-01-20' AS Date))
INSERT [dbo].[Orden] ([idOrden], [idCliente], [idEmpleado], [OrdenFecha]) VALUES (N'9b321bc6-b324-4d22-b1a3-561a4c06595e', N'a16def55-4e54-4da5-b7c2-88dd72e7d3b5', N'89588cb8-c66f-409d-9566-32b81e3a5788', CAST(N'2019-01-05' AS Date))
INSERT [dbo].[Orden] ([idOrden], [idCliente], [idEmpleado], [OrdenFecha]) VALUES (N'5a1c3107-3a0a-436d-8d13-698feb688883', N'e8aedacc-9d00-46a1-879f-bf965c39b413', N'89588cb8-c66f-409d-9566-32b81e3a5788', CAST(N'2019-01-22' AS Date))
INSERT [dbo].[Orden] ([idOrden], [idCliente], [idEmpleado], [OrdenFecha]) VALUES (N'26ec1ddb-4d86-42a3-80eb-6fc886f6f5b6', N'87e4b3e5-b126-41da-8541-c61a4e9e499a', N'89588cb8-c66f-409d-9566-32b81e3a5788', CAST(N'2019-02-05' AS Date))
INSERT [dbo].[Orden] ([idOrden], [idCliente], [idEmpleado], [OrdenFecha]) VALUES (N'e4f1f9cb-ef1e-40ea-8cf9-7ac5d8511911', N'1ca8e511-7015-4c47-9776-13d544a61e0c', N'89588cb8-c66f-409d-9566-32b81e3a5788', CAST(N'2019-01-29' AS Date))
INSERT [dbo].[Orden] ([idOrden], [idCliente], [idEmpleado], [OrdenFecha]) VALUES (N'4b6741f7-cb68-477c-8391-e0663824afdf', N'6fbee85f-6955-46bd-aefa-3a8f3be82af5', N'89588cb8-c66f-409d-9566-32b81e3a5788', CAST(N'2019-02-07' AS Date))
INSERT [dbo].[Orden] ([idOrden], [idCliente], [idEmpleado], [OrdenFecha]) VALUES (N'd00b45bf-37c5-4e30-b8a3-e4228cb14989', N'21a81f88-3d33-4a0d-b868-9c5565ed60f0', N'89588cb8-c66f-409d-9566-32b81e3a5788', CAST(N'2019-01-10' AS Date))
INSERT [dbo].[Orden] ([idOrden], [idCliente], [idEmpleado], [OrdenFecha]) VALUES (N'9adf41ea-aac7-4c27-a89f-facee1f0dec0', N'956eae2d-51e7-44fa-b395-4773703be9b8', N'89588cb8-c66f-409d-9566-32b81e3a5788', CAST(N'2019-01-25' AS Date))
INSERT [dbo].[Producto] ([idProducto], [NombreProd], [idCategoria], [Existencia], [UnidadesOrden], [Precio], [idProvedor]) VALUES (N'9ede1cb2-4ba1-4199-812b-e08f8f06087d', N'Bigotes', N'98902274-7db3-47db-8d72-bdac7d02838e', 1, 7, 11.0000, N'1fc06e3a-73f2-4514-b403-6f25be73c8e5')
INSERT [dbo].[Producto] ([idProducto], [NombreProd], [idCategoria], [Existencia], [UnidadesOrden], [Precio], [idProvedor]) VALUES (N'6ecd16cb-339b-48c2-84a6-d5b7e9855d34', N'Coca', N'b8cf87ce-07e4-4231-b52f-b350bb53b966', 1, 10, 15.0000, N'86b2fdee-f430-42c5-903c-fd72efefe583')
INSERT [dbo].[Producto] ([idProducto], [NombreProd], [idCategoria], [Existencia], [UnidadesOrden], [Precio], [idProvedor]) VALUES (N'e52a3c12-9618-4900-99a2-fa4d454f0264', N'Donas', N'98902274-7db3-47db-8d72-bdac7d02838e', 1, 5, 16.0000, N'efc991af-8128-4aff-8953-5312828d0bf6')
INSERT [dbo].[Producto] ([idProducto], [NombreProd], [idCategoria], [Existencia], [UnidadesOrden], [Precio], [idProvedor]) VALUES (N'26ce76c6-9a6c-456c-8c9e-8f0967dfee25', N'Emperador', N'5302216b-346a-49b5-9b47-2fdf7a618451', 1, 10, 12.0000, N'951bbad9-3148-4de2-b963-513e4ed4e20a')
INSERT [dbo].[Producto] ([idProducto], [NombreProd], [idCategoria], [Existencia], [UnidadesOrden], [Precio], [idProvedor]) VALUES (N'9f4b61d2-8083-4aaa-9775-041441005a00', N'Leche', N'fa9d7acf-74f6-462f-bb96-79d9a9c316e7', 1, 30, 20.0000, N'fa6e6678-b53e-40da-803d-05e075f60b5e')
INSERT [dbo].[Producto] ([idProducto], [NombreProd], [idCategoria], [Existencia], [UnidadesOrden], [Precio], [idProvedor]) VALUES (N'c82b4109-6a1b-44f9-85ec-12d08cea915b', N'Panditas', N'7d3db23b-b000-4dce-85c3-de0488332a91', 1, 3, 10.0000, N'52d5fdc7-91d7-46a3-a580-adbeb444d9f0')
INSERT [dbo].[Producto] ([idProducto], [NombreProd], [idCategoria], [Existencia], [UnidadesOrden], [Precio], [idProvedor]) VALUES (N'15574539-c243-4ea2-8029-990996773922', N'Pepsi', N'b8cf87ce-07e4-4231-b52f-b350bb53b966', 0, 0, 20.0000, N'34f03fd6-d3c0-4f7e-a522-4d5667fd669e')
INSERT [dbo].[Producto] ([idProducto], [NombreProd], [idCategoria], [Existencia], [UnidadesOrden], [Precio], [idProvedor]) VALUES (N'd313a52a-1bed-4c11-87ef-cb64d4411011', N'Pringles', N'117ff877-58ac-4b93-8974-04127b108859', 1, 6, 25.0000, N'f8b4f701-00d4-4b74-9619-ffb818af3178')
INSERT [dbo].[Producto] ([idProducto], [NombreProd], [idCategoria], [Existencia], [UnidadesOrden], [Precio], [idProvedor]) VALUES (N'e485950f-3b5e-48d5-b95e-36137a4f769b', N'Takis', N'117ff877-58ac-4b93-8974-04127b108859', 1, 20, 10.0000, N'59237e52-ca68-47e0-98a4-c8a64b8bc977')
INSERT [dbo].[Producto] ([idProducto], [NombreProd], [idCategoria], [Existencia], [UnidadesOrden], [Precio], [idProvedor]) VALUES (N'96a9df87-e27c-4873-840d-4e0e13f115ff', N'Tortillas', N'ff8f16c5-c0cb-48af-bbb1-221cbc474fff', 1, 15, 20.0000, N'a7d9eb2c-7885-4160-a412-70452826a475')
INSERT [dbo].[Proveedor] ([idProvedor], [Empresa], [Direccion], [Cuidad], [CodigoPostal], [Telefono]) VALUES (N'59237e52-ca68-47e0-98a4-c8a64b8bc977', N'Barcel', N'Santo Domingo', N'Lerma', N'66485', N'+52 55 15879648')
INSERT [dbo].[Proveedor] ([idProvedor], [Empresa], [Direccion], [Cuidad], [CodigoPostal], [Telefono]) VALUES (N'86b2fdee-f430-42c5-903c-fd72efefe583', N'Coca-Cola', N'Plutarco Elias', N'Monterrey', N'66274', N'+52 55 55478931')
INSERT [dbo].[Proveedor] ([idProvedor], [Empresa], [Direccion], [Cuidad], [CodigoPostal], [Telefono]) VALUES (N'951bbad9-3148-4de2-b963-513e4ed4e20a', N'Gamesa', N'Eugenio Garza Sada', N'San Pedro Garza Garcia', N'6655482', N'+52 55 64978513')
INSERT [dbo].[Proveedor] ([idProvedor], [Empresa], [Direccion], [Cuidad], [CodigoPostal], [Telefono]) VALUES (N'efc991af-8128-4aff-8953-5312828d0bf6', N'Grupo Bimbo', N'Miguel de la Madrid', N'Ciudad de México', N'5123025', N'+52 800 910 2030')
INSERT [dbo].[Proveedor] ([idProvedor], [Empresa], [Direccion], [Cuidad], [CodigoPostal], [Telefono]) VALUES (N'fa6e6678-b53e-40da-803d-05e075f60b5e', N'Grupo Lala', N'Gomez Palacio', N'Monterrey', N'52682', N'+52 55 6785648')
INSERT [dbo].[Proveedor] ([idProvedor], [Empresa], [Direccion], [Cuidad], [CodigoPostal], [Telefono]) VALUES (N'a7d9eb2c-7885-4160-a412-70452826a475', N'Maseca', N'Gomez Morin', N'Santa Catarina', N'354789', N'+52 55 69742748')
INSERT [dbo].[Proveedor] ([idProvedor], [Empresa], [Direccion], [Cuidad], [CodigoPostal], [Telefono]) VALUES (N'34f03fd6-d3c0-4f7e-a522-4d5667fd669e', N'Pepsico', N'Miguel Hidalgo', N'Ciudad de México', N'5653122', N'+52 55 2582-3000')
INSERT [dbo].[Proveedor] ([idProvedor], [Empresa], [Direccion], [Cuidad], [CodigoPostal], [Telefono]) VALUES (N'f8b4f701-00d4-4b74-9619-ffb818af3178', N'Pringles', N'Diego Diaz', N'San Nicolas de los Garza', N'47895', N'+52 55 22317369')
INSERT [dbo].[Proveedor] ([idProvedor], [Empresa], [Direccion], [Cuidad], [CodigoPostal], [Telefono]) VALUES (N'52d5fdc7-91d7-46a3-a580-adbeb444d9f0', N'Ricolino', N'Gonzalitos', N'Monterrey', N'752682', N'+52 55 4564648')
INSERT [dbo].[Proveedor] ([idProvedor], [Empresa], [Direccion], [Cuidad], [CodigoPostal], [Telefono]) VALUES (N'1fc06e3a-73f2-4514-b403-6f25be73c8e5', N'Tia Rosa', N'Madero', N'Monterrey', N'81762', N'+52 55 83148624')
INSERT [dbo].[Ticket] ([idTicket], [idOrden], [Fecha], [Sucursal]) VALUES (N'0a4f60d6-5fbd-4915-81b4-0cd24c54f736', N'e4f1f9cb-ef1e-40ea-8cf9-7ac5d8511911', CAST(N'2019-01-29T11:16:00.000' AS DateTime), 1)
INSERT [dbo].[Ticket] ([idTicket], [idOrden], [Fecha], [Sucursal]) VALUES (N'dec893d7-218f-4a30-bd5d-3e16d4fb8c95', N'9b321bc6-b324-4d22-b1a3-561a4c06595e', CAST(N'2019-01-05T15:22:00.000' AS DateTime), 1)
INSERT [dbo].[Ticket] ([idTicket], [idOrden], [Fecha], [Sucursal]) VALUES (N'2e8b2477-de88-4f12-a2d0-505d2fb750b7', N'693a2dca-0058-4bc6-ae21-139fe2846c08', CAST(N'2019-01-13T16:00:00.000' AS DateTime), 1)
INSERT [dbo].[Ticket] ([idTicket], [idOrden], [Fecha], [Sucursal]) VALUES (N'70d53843-f382-4b54-a90c-7711f5a0126a', N'd00b45bf-37c5-4e30-b8a3-e4228cb14989', CAST(N'2019-01-10T17:22:00.000' AS DateTime), 1)
INSERT [dbo].[Ticket] ([idTicket], [idOrden], [Fecha], [Sucursal]) VALUES (N'e3e98246-a990-49cf-a03c-a4c8e2e2c7b0', N'9adf41ea-aac7-4c27-a89f-facee1f0dec0', CAST(N'2019-01-25T18:00:00.000' AS DateTime), 1)
INSERT [dbo].[Ticket] ([idTicket], [idOrden], [Fecha], [Sucursal]) VALUES (N'0bb614c3-4146-43fe-91f2-a5d78f8be495', N'9fe252d2-3f8d-48b7-95ad-4ff6064abfa6', CAST(N'2019-01-15T11:00:00.000' AS DateTime), 1)
INSERT [dbo].[Ticket] ([idTicket], [idOrden], [Fecha], [Sucursal]) VALUES (N'566155bd-7de9-4271-a594-c4002902657d', N'26ec1ddb-4d86-42a3-80eb-6fc886f6f5b6', CAST(N'2019-02-05T10:22:00.000' AS DateTime), 1)
INSERT [dbo].[Ticket] ([idTicket], [idOrden], [Fecha], [Sucursal]) VALUES (N'bbcfe843-1b9f-4025-8df9-d6778545da3f', N'4b6741f7-cb68-477c-8391-e0663824afdf', CAST(N'2019-02-07T13:58:00.000' AS DateTime), 1)
INSERT [dbo].[Ticket] ([idTicket], [idOrden], [Fecha], [Sucursal]) VALUES (N'f283bb45-fac2-44e3-9c65-eb87bac1e6d5', N'4a00a24d-a69d-44d2-926c-50c5eec3c748', CAST(N'2019-01-20T17:00:00.000' AS DateTime), 1)
INSERT [dbo].[Ticket] ([idTicket], [idOrden], [Fecha], [Sucursal]) VALUES (N'fd478b1b-a95f-4d26-a437-f55eeeeb5105', N'5a1c3107-3a0a-436d-8d13-698feb688883', CAST(N'2019-01-22T16:01:00.000' AS DateTime), 1)
/****** Object:  Index [PK_Cliente]    Script Date: 06/04/2019 04:12:36 p. m. ******/
ALTER TABLE [dbo].[Cliente] ADD  CONSTRAINT [PK_Cliente] PRIMARY KEY NONCLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_Empleado]    Script Date: 06/04/2019 04:12:36 p. m. ******/
ALTER TABLE [dbo].[Empleado] ADD  CONSTRAINT [PK_Empleado] PRIMARY KEY NONCLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_Producto]    Script Date: 06/04/2019 04:12:36 p. m. ******/
ALTER TABLE [dbo].[Producto] ADD  CONSTRAINT [PK_Producto] PRIMARY KEY NONCLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_Proveedor]    Script Date: 06/04/2019 04:12:36 p. m. ******/
ALTER TABLE [dbo].[Proveedor] ADD  CONSTRAINT [PK_Proveedor] PRIMARY KEY NONCLUSTERED 
(
	[idProvedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DetallesOrden]  WITH CHECK ADD  CONSTRAINT [FK_DetallesOrden_Orden] FOREIGN KEY([idOrden])
REFERENCES [dbo].[Orden] ([idOrden])
GO
ALTER TABLE [dbo].[DetallesOrden] CHECK CONSTRAINT [FK_DetallesOrden_Orden]
GO
ALTER TABLE [dbo].[DetallesOrden]  WITH CHECK ADD  CONSTRAINT [FK_DetallesOrden_Producto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Producto] ([idProducto])
GO
ALTER TABLE [dbo].[DetallesOrden] CHECK CONSTRAINT [FK_DetallesOrden_Producto]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Cliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Cliente] ([idCliente])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Cliente]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Empleado] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[Empleado] ([idEmpleado])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Empleado]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Orden] FOREIGN KEY([idOrden])
REFERENCES [dbo].[Orden] ([idOrden])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Orden]
GO
ALTER TABLE [dbo].[Orden]  WITH CHECK ADD  CONSTRAINT [FK_Orden_Cliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Cliente] ([idCliente])
GO
ALTER TABLE [dbo].[Orden] CHECK CONSTRAINT [FK_Orden_Cliente]
GO
ALTER TABLE [dbo].[Orden]  WITH CHECK ADD  CONSTRAINT [FK_Orden_Empleado] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[Empleado] ([idEmpleado])
GO
ALTER TABLE [dbo].[Orden] CHECK CONSTRAINT [FK_Orden_Empleado]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Categoria] FOREIGN KEY([idCategoria])
REFERENCES [dbo].[Categoria] ([idCategoria])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Categoria]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Proveedor] FOREIGN KEY([idProvedor])
REFERENCES [dbo].[Proveedor] ([idProvedor])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Proveedor]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Orden] FOREIGN KEY([idOrden])
REFERENCES [dbo].[Orden] ([idOrden])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Orden]
GO
USE [master]
GO
ALTER DATABASE [Practica4] SET  READ_WRITE 
GO
