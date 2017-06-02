USE [master]
GO
/****** Object:  Database [Ventas]    Script Date: 02/06/2017 8:34:32 ******/
CREATE DATABASE [Ventas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Ventas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Ventas.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Ventas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Ventas_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Ventas] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Ventas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Ventas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Ventas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Ventas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Ventas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Ventas] SET ARITHABORT OFF 
GO
ALTER DATABASE [Ventas] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Ventas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Ventas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Ventas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Ventas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Ventas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Ventas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Ventas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Ventas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Ventas] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Ventas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Ventas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Ventas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Ventas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Ventas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Ventas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Ventas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Ventas] SET RECOVERY FULL 
GO
ALTER DATABASE [Ventas] SET  MULTI_USER 
GO
ALTER DATABASE [Ventas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Ventas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Ventas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Ventas] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Ventas] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Ventas', N'ON'
GO
ALTER DATABASE [Ventas] SET QUERY_STORE = OFF
GO
USE [Ventas]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Ventas]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 02/06/2017 8:34:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[IdProducto] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](50) NOT NULL,
	[Color] [nchar](10) NOT NULL,
	[Descripcion] [nchar](100) NOT NULL,
	[Precio] [numeric](18, 2) NOT NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 02/06/2017 8:34:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[IdVenta] [int] IDENTITY(1,1) NOT NULL,
	[FechaPedido] [datetime] NOT NULL,
	[FechaVenta] [datetime] NOT NULL,
	[Unidades] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
 CONSTRAINT [PK_Ventas] PRIMARY KEY CLUSTERED 
(
	[IdVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Productos] ON 

GO
INSERT [dbo].[Productos] ([IdProducto], [Nombre], [Color], [Descripcion], [Precio]) VALUES (1, N'Ford Focus                                        ', N'Azul      ', N'5 Puertas                                                                                           ', CAST(14000.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Productos] ([IdProducto], [Nombre], [Color], [Descripcion], [Precio]) VALUES (2, N'Kia Karens                                        ', N'Blanco    ', N'GPS                                                                                                 ', CAST(18000.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Productos] ([IdProducto], [Nombre], [Color], [Descripcion], [Precio]) VALUES (3, N'Citroen C4                                        ', N'Azul      ', N'4 Puertas                                                                                           ', CAST(13500.00 AS Numeric(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[Productos] OFF
GO
SET IDENTITY_INSERT [dbo].[Ventas] ON 

GO
INSERT [dbo].[Ventas] ([IdVenta], [FechaPedido], [FechaVenta], [Unidades], [IdProducto]) VALUES (1, CAST(N'2017-04-23T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), 1, 1)
GO
INSERT [dbo].[Ventas] ([IdVenta], [FechaPedido], [FechaVenta], [Unidades], [IdProducto]) VALUES (2, CAST(N'2016-12-25T00:00:00.000' AS DateTime), CAST(N'2017-01-02T00:00:00.000' AS DateTime), 2, 2)
GO
INSERT [dbo].[Ventas] ([IdVenta], [FechaPedido], [FechaVenta], [Unidades], [IdProducto]) VALUES (3, CAST(N'2016-08-01T00:00:00.000' AS DateTime), CAST(N'2017-09-02T00:00:00.000' AS DateTime), 3, 3)
GO
SET IDENTITY_INSERT [dbo].[Ventas] OFF
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Productos] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Productos] ([IdProducto])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Productos]
GO
USE [master]
GO
ALTER DATABASE [Ventas] SET  READ_WRITE 
GO
