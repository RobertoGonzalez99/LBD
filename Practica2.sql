USE [Practica2]
GO
ALTER TABLE [dbo].[Ticket] DROP CONSTRAINT [DF__Ticket__iIdTicke__5535A963]
GO
ALTER TABLE [dbo].[Proveedores] DROP CONSTRAINT [DF__Proveedor__iIdPr__412EB0B6]
GO
ALTER TABLE [dbo].[Productos] DROP CONSTRAINT [DF__Productos__iIdPr__440B1D61]
GO
ALTER TABLE [dbo].[Otros] DROP CONSTRAINT [DF__Otros__iIdProd__52593CB8]
GO
ALTER TABLE [dbo].[Lacteos] DROP CONSTRAINT [DF__Lacteos__iIdProd__49C3F6B7]
GO
ALTER TABLE [dbo].[Enlatados] DROP CONSTRAINT [DF__Enlatados__iIdPr__46E78A0C]
GO
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [DF__Empleado__iIdEmp__3B75D760]
GO
ALTER TABLE [dbo].[Cliente] DROP CONSTRAINT [DF__Cliente__iIdCli__3E52440B]
GO
ALTER TABLE [dbo].[Botana] DROP CONSTRAINT [DF__Botana__iIdProd__4CA06362]
GO
ALTER TABLE [dbo].[Bebidas] DROP CONSTRAINT [DF__Bebidas__iIdProd__4F7CD00D]
GO
/****** Object:  Index [Tick]    Script Date: 02/03/2019 01:14:52 a. m. ******/
DROP INDEX [Tick] ON [dbo].[Ticket]
GO
/****** Object:  Index [Prov]    Script Date: 02/03/2019 01:14:52 a. m. ******/
DROP INDEX [Prov] ON [dbo].[Proveedores]
GO
/****** Object:  Index [Prod]    Script Date: 02/03/2019 01:14:52 a. m. ******/
DROP INDEX [Prod] ON [dbo].[Productos]
GO
/****** Object:  Index [Otros]    Script Date: 02/03/2019 01:14:52 a. m. ******/
DROP INDEX [Otros] ON [dbo].[Otros]
GO
/****** Object:  Index [Lac]    Script Date: 02/03/2019 01:14:52 a. m. ******/
DROP INDEX [Lac] ON [dbo].[Lacteos]
GO
/****** Object:  Index [Enla]    Script Date: 02/03/2019 01:14:52 a. m. ******/
DROP INDEX [Enla] ON [dbo].[Enlatados]
GO
/****** Object:  Index [Emp]    Script Date: 02/03/2019 01:14:52 a. m. ******/
DROP INDEX [Emp] ON [dbo].[Empleado]
GO
/****** Object:  Index [Cli]    Script Date: 02/03/2019 01:14:52 a. m. ******/
DROP INDEX [Cli] ON [dbo].[Cliente]
GO
/****** Object:  Index [Bota]    Script Date: 02/03/2019 01:14:52 a. m. ******/
DROP INDEX [Bota] ON [dbo].[Botana]
GO
/****** Object:  Index [Beb]    Script Date: 02/03/2019 01:14:52 a. m. ******/
DROP INDEX [Beb] ON [dbo].[Bebidas]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 02/03/2019 01:14:52 a. m. ******/
DROP TABLE [dbo].[Ticket]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 02/03/2019 01:14:52 a. m. ******/
DROP TABLE [dbo].[Proveedores]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 02/03/2019 01:14:52 a. m. ******/
DROP TABLE [dbo].[Productos]
GO
/****** Object:  Table [dbo].[Otros]    Script Date: 02/03/2019 01:14:52 a. m. ******/
DROP TABLE [dbo].[Otros]
GO
/****** Object:  Table [dbo].[Lacteos]    Script Date: 02/03/2019 01:14:52 a. m. ******/
DROP TABLE [dbo].[Lacteos]
GO
/****** Object:  Table [dbo].[Enlatados]    Script Date: 02/03/2019 01:14:52 a. m. ******/
DROP TABLE [dbo].[Enlatados]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 02/03/2019 01:14:52 a. m. ******/
DROP TABLE [dbo].[Empleado]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 02/03/2019 01:14:52 a. m. ******/
DROP TABLE [dbo].[Cliente]
GO
/****** Object:  Table [dbo].[Botana]    Script Date: 02/03/2019 01:14:52 a. m. ******/
DROP TABLE [dbo].[Botana]
GO
/****** Object:  Table [dbo].[Bebidas]    Script Date: 02/03/2019 01:14:52 a. m. ******/
DROP TABLE [dbo].[Bebidas]
GO
USE [master]
GO
/****** Object:  Database [Practica2]    Script Date: 02/03/2019 01:14:52 a. m. ******/
DROP DATABASE [Practica2]
GO
/****** Object:  Database [Practica2]    Script Date: 02/03/2019 01:14:52 a. m. ******/
CREATE DATABASE [Practica2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Practica2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Practica2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Practica2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Practica2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Practica2] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Practica2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Practica2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Practica2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Practica2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Practica2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Practica2] SET ARITHABORT OFF 
GO
ALTER DATABASE [Practica2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Practica2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Practica2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Practica2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Practica2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Practica2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Practica2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Practica2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Practica2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Practica2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Practica2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Practica2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Practica2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Practica2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Practica2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Practica2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Practica2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Practica2] SET RECOVERY FULL 
GO
ALTER DATABASE [Practica2] SET  MULTI_USER 
GO
ALTER DATABASE [Practica2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Practica2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Practica2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Practica2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Practica2] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Practica2', N'ON'
GO
ALTER DATABASE [Practica2] SET QUERY_STORE = OFF
GO
USE [Practica2]
GO
/****** Object:  Table [dbo].[Bebidas]    Script Date: 02/03/2019 01:14:53 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bebidas](
	[iIdProd] [uniqueidentifier] NOT NULL,
	[vNombre] [varchar](50) NOT NULL,
	[mPrecio] [money] NOT NULL,
	[cStatus] [char](1) NULL,
	[NombrePrecio]  AS (([vNombre]+' ')+[mPrecio]),
PRIMARY KEY CLUSTERED 
(
	[iIdProd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Botana]    Script Date: 02/03/2019 01:14:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Botana](
	[iIdProd] [uniqueidentifier] NOT NULL,
	[vNombre] [varchar](50) NOT NULL,
	[mPrecio] [money] NOT NULL,
	[cStatus] [char](1) NULL,
	[NombrePrecio]  AS (([vNombre]+' ')+[mPrecio]),
PRIMARY KEY CLUSTERED 
(
	[iIdProd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 02/03/2019 01:14:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[iIdCli] [uniqueidentifier] NOT NULL,
	[vNombre] [varchar](50) NOT NULL,
	[vApPat] [varchar](50) NOT NULL,
	[vApMat] [varchar](50) NOT NULL,
	[cSexo] [char](1) NULL,
	[NombreCompleto]  AS (([vNombre]+' ')+[vApPat]),
PRIMARY KEY CLUSTERED 
(
	[iIdCli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 02/03/2019 01:14:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[iIdEmp] [uniqueidentifier] NOT NULL,
	[vNombre] [varchar](50) NOT NULL,
	[vApPat] [varchar](50) NOT NULL,
	[vApMat] [varchar](50) NOT NULL,
	[cSexo] [char](1) NULL,
	[NombreCompleto]  AS (([vNombre]+' ')+[vApPat]),
PRIMARY KEY CLUSTERED 
(
	[iIdEmp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enlatados]    Script Date: 02/03/2019 01:14:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enlatados](
	[iIdProd] [uniqueidentifier] NOT NULL,
	[vNombre] [varchar](50) NOT NULL,
	[mPrecio] [money] NOT NULL,
	[cStatus] [char](1) NULL,
	[NombrePrecio]  AS (([vNombre]+' ')+[mPrecio]),
PRIMARY KEY CLUSTERED 
(
	[iIdProd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lacteos]    Script Date: 02/03/2019 01:14:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lacteos](
	[iIdProd] [uniqueidentifier] NOT NULL,
	[vNombre] [varchar](50) NOT NULL,
	[mPrecio] [money] NOT NULL,
	[cStatus] [char](1) NULL,
	[NombrePrecio]  AS (([vNombre]+' ')+[mPrecio]),
PRIMARY KEY CLUSTERED 
(
	[iIdProd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Otros]    Script Date: 02/03/2019 01:14:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Otros](
	[iIdProd] [uniqueidentifier] NOT NULL,
	[vNombre] [varchar](50) NOT NULL,
	[mPrecio] [money] NOT NULL,
	[cStatus] [char](1) NULL,
	[NombrePrecio]  AS (([vNombre]+' ')+[mPrecio]),
PRIMARY KEY CLUSTERED 
(
	[iIdProd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 02/03/2019 01:14:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[iIdProd] [uniqueidentifier] NOT NULL,
	[vNombre] [varchar](50) NOT NULL,
	[cStatus] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[iIdProd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 02/03/2019 01:14:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedores](
	[iIdProv] [uniqueidentifier] NOT NULL,
	[vNombre] [varchar](50) NOT NULL,
	[cStatus] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[iIdProv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 02/03/2019 01:14:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[iIdTicket] [uniqueidentifier] NOT NULL,
	[dFecha] [datetime] NULL,
	[vNombre] [varchar](50) NOT NULL,
	[tSuc] [tinyint] NULL,
	[cStatus] [char](1) NULL,
	[IdTickSuc]  AS (([cStatus]+' ')+[tSuc]),
PRIMARY KEY CLUSTERED 
(
	[iIdTicket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Beb]    Script Date: 02/03/2019 01:14:54 a. m. ******/
CREATE NONCLUSTERED INDEX [Beb] ON [dbo].[Bebidas]
(
	[iIdProd] ASC,
	[vNombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Bota]    Script Date: 02/03/2019 01:14:54 a. m. ******/
CREATE NONCLUSTERED INDEX [Bota] ON [dbo].[Botana]
(
	[iIdProd] ASC,
	[vNombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Cli]    Script Date: 02/03/2019 01:14:54 a. m. ******/
CREATE NONCLUSTERED INDEX [Cli] ON [dbo].[Cliente]
(
	[iIdCli] ASC,
	[vNombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Emp]    Script Date: 02/03/2019 01:14:54 a. m. ******/
CREATE NONCLUSTERED INDEX [Emp] ON [dbo].[Empleado]
(
	[iIdEmp] ASC,
	[vNombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Enla]    Script Date: 02/03/2019 01:14:54 a. m. ******/
CREATE NONCLUSTERED INDEX [Enla] ON [dbo].[Enlatados]
(
	[iIdProd] ASC,
	[vNombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Lac]    Script Date: 02/03/2019 01:14:54 a. m. ******/
CREATE NONCLUSTERED INDEX [Lac] ON [dbo].[Lacteos]
(
	[iIdProd] ASC,
	[vNombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Otros]    Script Date: 02/03/2019 01:14:54 a. m. ******/
CREATE NONCLUSTERED INDEX [Otros] ON [dbo].[Otros]
(
	[iIdProd] ASC,
	[vNombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Prod]    Script Date: 02/03/2019 01:14:54 a. m. ******/
CREATE NONCLUSTERED INDEX [Prod] ON [dbo].[Productos]
(
	[iIdProd] ASC,
	[vNombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Prov]    Script Date: 02/03/2019 01:14:54 a. m. ******/
CREATE NONCLUSTERED INDEX [Prov] ON [dbo].[Proveedores]
(
	[iIdProv] ASC,
	[vNombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Tick]    Script Date: 02/03/2019 01:14:54 a. m. ******/
CREATE NONCLUSTERED INDEX [Tick] ON [dbo].[Ticket]
(
	[iIdTicket] ASC,
	[vNombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bebidas] ADD  DEFAULT (newid()) FOR [iIdProd]
GO
ALTER TABLE [dbo].[Botana] ADD  DEFAULT (newid()) FOR [iIdProd]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT (newid()) FOR [iIdCli]
GO
ALTER TABLE [dbo].[Empleado] ADD  DEFAULT (newid()) FOR [iIdEmp]
GO
ALTER TABLE [dbo].[Enlatados] ADD  DEFAULT (newid()) FOR [iIdProd]
GO
ALTER TABLE [dbo].[Lacteos] ADD  DEFAULT (newid()) FOR [iIdProd]
GO
ALTER TABLE [dbo].[Otros] ADD  DEFAULT (newid()) FOR [iIdProd]
GO
ALTER TABLE [dbo].[Productos] ADD  DEFAULT (newid()) FOR [iIdProd]
GO
ALTER TABLE [dbo].[Proveedores] ADD  DEFAULT (newid()) FOR [iIdProv]
GO
ALTER TABLE [dbo].[Ticket] ADD  DEFAULT (newid()) FOR [iIdTicket]
GO
USE [master]
GO
ALTER DATABASE [Practica2] SET  READ_WRITE 
GO
