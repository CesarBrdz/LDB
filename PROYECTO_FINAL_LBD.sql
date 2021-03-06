USE [HOTEL]
GO
/****** Object:  Trigger [Realiza_Usuarios]    Script Date: 27/10/2018 01:20:48 p. m. ******/
DROP TRIGGER [dbo].[Realiza_Usuarios]
GO
/****** Object:  Trigger [ELIMINAR]    Script Date: 27/10/2018 01:20:48 p. m. ******/
DROP TRIGGER [dbo].[ELIMINAR]
GO
/****** Object:  StoredProcedure [dbo].[Reservaciones]    Script Date: 27/10/2018 01:20:48 p. m. ******/
DROP PROCEDURE [dbo].[Reservaciones]
GO
/****** Object:  StoredProcedure [dbo].[NumReservacion]    Script Date: 27/10/2018 01:20:48 p. m. ******/
DROP PROCEDURE [dbo].[NumReservacion]
GO
/****** Object:  StoredProcedure [dbo].[EmpleadoHorario]    Script Date: 27/10/2018 01:20:48 p. m. ******/
DROP PROCEDURE [dbo].[EmpleadoHorario]
GO
/****** Object:  StoredProcedure [dbo].[Empleado]    Script Date: 27/10/2018 01:20:48 p. m. ******/
DROP PROCEDURE [dbo].[Empleado]
GO
/****** Object:  StoredProcedure [dbo].[CostoHabitaciones]    Script Date: 27/10/2018 01:20:48 p. m. ******/
DROP PROCEDURE [dbo].[CostoHabitaciones]
GO
/****** Object:  StoredProcedure [dbo].[Clientes]    Script Date: 27/10/2018 01:20:48 p. m. ******/
DROP PROCEDURE [dbo].[Clientes]
GO
ALTER TABLE [dbo].[Venta] DROP CONSTRAINT [fk_Reserva3]
GO
ALTER TABLE [dbo].[Venta] DROP CONSTRAINT [fk_Mp3]
GO
ALTER TABLE [dbo].[Venta] DROP CONSTRAINT [fk_Empleado3]
GO
ALTER TABLE [dbo].[Venta] DROP CONSTRAINT [fk_Cliente3]
GO
ALTER TABLE [dbo].[Usuarios] DROP CONSTRAINT [fk_TUs2]
GO
ALTER TABLE [dbo].[Reservacion] DROP CONSTRAINT [fk_Habita2]
GO
ALTER TABLE [dbo].[Reservacion] DROP CONSTRAINT [fk_Cr2]
GO
ALTER TABLE [dbo].[Reservacion] DROP CONSTRAINT [fk_Cliente2]
GO
ALTER TABLE [dbo].[Reservacion] DROP CONSTRAINT [fk_Check2]
GO
ALTER TABLE [dbo].[Pago] DROP CONSTRAINT [fk_Venta2]
GO
ALTER TABLE [dbo].[Pago] DROP CONSTRAINT [fk_Mp2]
GO
ALTER TABLE [dbo].[HABITACIONES] DROP CONSTRAINT [fk_CompH2]
GO
ALTER TABLE [dbo].[Factura] DROP CONSTRAINT [fk_Venta3]
GO
ALTER TABLE [dbo].[Empleados] DROP CONSTRAINT [fk_Puesto3]
GO
ALTER TABLE [dbo].[Empleados] DROP CONSTRAINT [fk_Horario2]
GO
ALTER TABLE [dbo].[Empleados] DROP CONSTRAINT [fk_Catego2]
GO
ALTER TABLE [dbo].[Disponibilidad] DROP CONSTRAINT [fk_Reserva2]
GO
ALTER TABLE [dbo].[Disponibilidad] DROP CONSTRAINT [fk_Habita3]
GO
ALTER TABLE [dbo].[DatosUsuarios] DROP CONSTRAINT [fk_Us3]
GO
ALTER TABLE [dbo].[DatosUsuarios] DROP CONSTRAINT [fk_Empleado2]
GO
ALTER TABLE [dbo].[CorteResepcion] DROP CONSTRAINT [fk_Venta4]
GO
ALTER TABLE [dbo].[CorteResepcion] DROP CONSTRAINT [fk_Empleado4]
GO
ALTER TABLE [dbo].[CorteResepcion] DROP CONSTRAINT [fk_CheckUs2]
GO
ALTER TABLE [dbo].[ComponenteReserva] DROP CONSTRAINT [fk_Servicio2]
GO
ALTER TABLE [dbo].[ComponenteReserva] DROP CONSTRAINT [fk_Paquete2]
GO
ALTER TABLE [dbo].[CheckUs] DROP CONSTRAINT [fk_Us2]
GO
ALTER TABLE [dbo].[Categoria] DROP CONSTRAINT [fk_Puesto2]
GO
ALTER TABLE [dbo].[Pago] DROP CONSTRAINT [DF__Pago__FechaP__2180FB33]
GO
ALTER TABLE [dbo].[Factura] DROP CONSTRAINT [DF__Factura__FechaFa__208CD6FA]
GO
ALTER TABLE [dbo].[Disponibilidad] DROP CONSTRAINT [DF__Disponibi__Fecha__1F98B2C1]
GO
ALTER TABLE [dbo].[CheckUs] DROP CONSTRAINT [DF__CheckUs__CheckOu__1EA48E88]
GO
ALTER TABLE [dbo].[CheckUs] DROP CONSTRAINT [DF__CheckUs__CheckIn__1DB06A4F]
GO
ALTER TABLE [dbo].[CheckIO] DROP CONSTRAINT [DF__CheckIO__CheckOu__1CBC4616]
GO
ALTER TABLE [dbo].[CheckIO] DROP CONSTRAINT [DF__CheckIO__CheckIn__1BC821DD]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 27/10/2018 01:20:48 p. m. ******/
DROP TABLE [dbo].[Venta]
GO
/****** Object:  Table [dbo].[TipoUs]    Script Date: 27/10/2018 01:20:48 p. m. ******/
DROP TABLE [dbo].[TipoUs]
GO
/****** Object:  Table [dbo].[Servicio]    Script Date: 27/10/2018 01:20:48 p. m. ******/
DROP TABLE [dbo].[Servicio]
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 27/10/2018 01:20:48 p. m. ******/
DROP TABLE [dbo].[Puesto]
GO
/****** Object:  Table [dbo].[Paquete]    Script Date: 27/10/2018 01:20:48 p. m. ******/
DROP TABLE [dbo].[Paquete]
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 27/10/2018 01:20:48 p. m. ******/
DROP TABLE [dbo].[Pago]
GO
/****** Object:  Table [dbo].[Modo_Pago]    Script Date: 27/10/2018 01:20:48 p. m. ******/
DROP TABLE [dbo].[Modo_Pago]
GO
/****** Object:  Table [dbo].[HABITACIONES]    Script Date: 27/10/2018 01:20:48 p. m. ******/
DROP TABLE [dbo].[HABITACIONES]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 27/10/2018 01:20:48 p. m. ******/
DROP TABLE [dbo].[Factura]
GO
/****** Object:  Table [dbo].[Disponibilidad]    Script Date: 27/10/2018 01:20:48 p. m. ******/
DROP TABLE [dbo].[Disponibilidad]
GO
/****** Object:  Table [dbo].[CorteResepcion]    Script Date: 27/10/2018 01:20:48 p. m. ******/
DROP TABLE [dbo].[CorteResepcion]
GO
/****** Object:  Table [dbo].[ComponentesHabita]    Script Date: 27/10/2018 01:20:48 p. m. ******/
DROP TABLE [dbo].[ComponentesHabita]
GO
/****** Object:  Table [dbo].[ComponenteReserva]    Script Date: 27/10/2018 01:20:48 p. m. ******/
DROP TABLE [dbo].[ComponenteReserva]
GO
/****** Object:  Table [dbo].[CheckUs]    Script Date: 27/10/2018 01:20:48 p. m. ******/
DROP TABLE [dbo].[CheckUs]
GO
/****** Object:  Table [dbo].[CheckIO]    Script Date: 27/10/2018 01:20:48 p. m. ******/
DROP TABLE [dbo].[CheckIO]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 27/10/2018 01:20:48 p. m. ******/
DROP TABLE [dbo].[Categoria]
GO
/****** Object:  View [dbo].[Vista_ClienteReserva]    Script Date: 27/10/2018 01:20:48 p. m. ******/
DROP VIEW [dbo].[Vista_ClienteReserva]
GO
/****** Object:  Table [dbo].[Reservacion]    Script Date: 27/10/2018 01:20:48 p. m. ******/
DROP TABLE [dbo].[Reservacion]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 27/10/2018 01:20:48 p. m. ******/
DROP TABLE [dbo].[Cliente]
GO
/****** Object:  View [dbo].[Vista_costoDiario]    Script Date: 27/10/2018 01:20:48 p. m. ******/
DROP VIEW [dbo].[Vista_costoDiario]
GO
/****** Object:  View [dbo].[Vista_EmpleadoUsuario]    Script Date: 27/10/2018 01:20:48 p. m. ******/
DROP VIEW [dbo].[Vista_EmpleadoUsuario]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 27/10/2018 01:20:48 p. m. ******/
DROP TABLE [dbo].[Usuarios]
GO
/****** Object:  Table [dbo].[DatosUsuarios]    Script Date: 27/10/2018 01:20:48 p. m. ******/
DROP TABLE [dbo].[DatosUsuarios]
GO
/****** Object:  View [dbo].[Vista_EmpleadosHorario]    Script Date: 27/10/2018 01:20:48 p. m. ******/
DROP VIEW [dbo].[Vista_EmpleadosHorario]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 27/10/2018 01:20:48 p. m. ******/
DROP TABLE [dbo].[Empleados]
GO
/****** Object:  Table [dbo].[Horario]    Script Date: 27/10/2018 01:20:48 p. m. ******/
DROP TABLE [dbo].[Horario]
GO
/****** Object:  UserDefinedFunction [dbo].[TipoCliente]    Script Date: 27/10/2018 01:20:48 p. m. ******/
DROP FUNCTION [dbo].[TipoCliente]
GO
USE [master]
GO
/****** Object:  Database [HOTEL]    Script Date: 27/10/2018 01:20:48 p. m. ******/
DROP DATABASE [HOTEL]
GO
/****** Object:  Database [HOTEL]    Script Date: 27/10/2018 01:20:48 p. m. ******/
CREATE DATABASE [HOTEL]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HOTEL', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\HOTEL.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HOTEL_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\HOTEL_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [HOTEL] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HOTEL].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HOTEL] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HOTEL] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HOTEL] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HOTEL] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HOTEL] SET ARITHABORT OFF 
GO
ALTER DATABASE [HOTEL] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HOTEL] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HOTEL] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HOTEL] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HOTEL] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HOTEL] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HOTEL] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HOTEL] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HOTEL] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HOTEL] SET  ENABLE_BROKER 
GO
ALTER DATABASE [HOTEL] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HOTEL] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HOTEL] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HOTEL] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HOTEL] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HOTEL] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HOTEL] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HOTEL] SET RECOVERY FULL 
GO
ALTER DATABASE [HOTEL] SET  MULTI_USER 
GO
ALTER DATABASE [HOTEL] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HOTEL] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HOTEL] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HOTEL] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HOTEL] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'HOTEL', N'ON'
GO
ALTER DATABASE [HOTEL] SET QUERY_STORE = OFF
GO
USE [HOTEL]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [HOTEL]
GO
/****** Object:  UserDefinedFunction [dbo].[TipoCliente]    Script Date: 27/10/2018 01:20:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[TipoCliente]  (@numFac int)
RETURNS varchar(50)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Respuesta varchar (50),
			@NumReserva int,
			@Importe double precision;

	-- Add the T-SQL statements to compute the return value here
	SELECT @Importe = sum(CostoTotal*CostoCR)
	from ComponenteReserva, Reservacion 
	where Reservacion.id_Cr = ComponenteReserva.id_Cr
	and id_Reserva = @NumReserva;

	if (@Importe > 10)begin
	select @respuesta = 'Es un buen cliente';
	end
	else begin
	select @Respuesta = 'Es un mal cliente';
	end
	-- Return the result of the function
	RETURN @Respuesta;
END
GO
/****** Object:  Table [dbo].[Horario]    Script Date: 27/10/2018 01:20:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horario](
	[id_Horario] [int] NOT NULL,
	[Turno] [varchar](20) NULL,
	[Hora] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Horario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 27/10/2018 01:20:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[id_Empleado] [int] NOT NULL,
	[NombreE] [varchar](20) NULL,
	[APaternoE] [varchar](30) NULL,
	[AMaterno] [varchar](30) NULL,
	[CalleE] [varchar](20) NULL,
	[NumCalleE] [int] NULL,
	[ColoniaE] [varchar](25) NULL,
	[Telefono] [int] NULL,
	[Email] [varchar](30) NULL,
	[id_Puesto] [int] NULL,
	[id_Horario] [int] NULL,
	[id_Catego] [int] NULL,
	[Salario] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Vista_EmpleadosHorario]    Script Date: 27/10/2018 01:20:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[Vista_EmpleadosHorario] as
			select e.id_Empleado, e.NombreE,
			h.id_horario, h.Hora
			from Empleados e inner join Horario h
			on e.id_horario = h.id_horario
			where h.id_Horario = '1'
GO
/****** Object:  Table [dbo].[DatosUsuarios]    Script Date: 27/10/2018 01:20:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatosUsuarios](
	[id_DUs] [int] NOT NULL,
	[Avatar] [image] NULL,
	[id_Us] [int] NULL,
	[id_Empleado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_DUs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 27/10/2018 01:20:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[id_Us] [int] NOT NULL,
	[Username] [varchar](25) NULL,
	[Email] [varchar](30) NULL,
	[Pass] [varbinary](max) NOT NULL,
	[FechaRegistro] [datetime] NULL,
	[id_TUs] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Us] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[Vista_EmpleadoUsuario]    Script Date: 27/10/2018 01:20:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[Vista_EmpleadoUsuario] as
			select u.Username, e.NombreE,d.id_DUs
			from Usuarios U, Empleados e inner join DatosUsuarios d
			on e.id_Empleado = d.id_Empleado
			where u.id_Us = d.id_Us
GO
/****** Object:  View [dbo].[Vista_costoDiario]    Script Date: 27/10/2018 01:20:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[Vista_costoDiario] as
				select avg(Salario) as 'Promedio de Salario' 
				from Empleados
				where Salario > 1000
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 27/10/2018 01:20:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[id_Cliente] [int] NOT NULL,
	[NombreC] [varchar](20) NULL,
	[APaterno] [varchar](25) NULL,
	[AMaterno] [varchar](25) NULL,
	[Calle] [varchar](30) NULL,
	[NumCasa] [int] NULL,
	[Colonia] [varchar](40) NULL,
	[FechaNacimientoC] [date] NULL,
	[Telefono] [int] NULL,
	[Email] [varchar](70) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservacion]    Script Date: 27/10/2018 01:20:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservacion](
	[id_Reserva] [int] NOT NULL,
	[id_Habita] [int] NULL,
	[Estatus_Reserva] [varchar](30) NULL,
	[FechaHora] [datetime] NULL,
	[CostoTotal] [money] NULL,
	[id_Cliente] [int] NULL,
	[id_Cr] [int] NULL,
	[id_check] [int] NULL,
	[Dias] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Reserva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Vista_ClienteReserva]    Script Date: 27/10/2018 01:20:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[Vista_ClienteReserva] as
			select c.NombreC, c.APaterno,  r.CostoTotal as 'Costo de Reservacion'
			from Cliente c inner join Reservacion r
			on c.id_Cliente = r.id_Cliente
			where r.Estatus_Reserva = 'Vencido'
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 27/10/2018 01:20:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[id_Catego] [int] NOT NULL,
	[Nom_Catego] [varchar](50) NULL,
	[id_Puesto] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Catego] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CheckIO]    Script Date: 27/10/2018 01:20:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CheckIO](
	[id_check] [int] NOT NULL,
	[CheckIn] [datetime] NULL,
	[CheckOut] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_check] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CheckUs]    Script Date: 27/10/2018 01:20:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CheckUs](
	[id_CheckUs] [int] NOT NULL,
	[id_Us] [int] NULL,
	[CheckInUs] [datetime] NULL,
	[CheckOutUs] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_CheckUs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComponenteReserva]    Script Date: 27/10/2018 01:20:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComponenteReserva](
	[id_Cr] [int] NOT NULL,
	[DiasExtra] [int] NULL,
	[id_Paquete] [int] NULL,
	[id_Servicio] [int] NULL,
	[CostoCR] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Cr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComponentesHabita]    Script Date: 27/10/2018 01:20:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComponentesHabita](
	[id_CompH] [int] NOT NULL,
	[Camas_comp] [int] NULL,
	[Baños_comp] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_CompH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CorteResepcion]    Script Date: 27/10/2018 01:20:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CorteResepcion](
	[id_Cr] [int] NOT NULL,
	[id_Empleado] [int] NULL,
	[id_CheckUs] [int] NULL,
	[id_Venta] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Cr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Disponibilidad]    Script Date: 27/10/2018 01:20:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Disponibilidad](
	[id_Dispo] [int] NOT NULL,
	[id_Habita] [int] NULL,
	[Estatus] [varchar](20) NULL,
	[id_Reserva] [int] NULL,
	[Fecha] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Dispo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 27/10/2018 01:20:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[id_Factura] [int] NOT NULL,
	[id_Venta] [int] NULL,
	[RFC] [int] NULL,
	[NombreEmpresa] [varchar](70) NULL,
	[EmailEmpresa] [varchar](25) NULL,
	[Observaciones] [varchar](25) NULL,
	[FechaFactura] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HABITACIONES]    Script Date: 27/10/2018 01:20:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HABITACIONES](
	[id_Habita] [int] NOT NULL,
	[Imagen] [image] NULL,
	[Descripcion] [varchar](150) NULL,
	[Tipo] [varchar](60) NULL,
	[id_CompH] [int] NOT NULL,
	[costoDiario] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Habita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modo_Pago]    Script Date: 27/10/2018 01:20:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modo_Pago](
	[id_Mp] [int] NOT NULL,
	[Tipo_mp] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Mp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 27/10/2018 01:20:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pago](
	[id_Pago] [int] NOT NULL,
	[id_venta] [int] NULL,
	[id_Mp] [int] NULL,
	[FechaP] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paquete]    Script Date: 27/10/2018 01:20:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paquete](
	[id_Paquete] [int] NOT NULL,
	[DescPaquete] [varchar](250) NULL,
	[CostoP] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Paquete] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 27/10/2018 01:20:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Puesto](
	[id_Puesto] [int] NOT NULL,
	[Puesto] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Puesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicio]    Script Date: 27/10/2018 01:20:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicio](
	[id_Servicio] [int] NOT NULL,
	[Nombre_Servicio] [varchar](60) NULL,
	[Descripcion_Servicio] [varchar](300) NULL,
	[CostoServicio] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Servicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoUs]    Script Date: 27/10/2018 01:20:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoUs](
	[id_TUs] [int] NOT NULL,
	[TipoUs] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_TUs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 27/10/2018 01:20:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[id_Venta] [int] NOT NULL,
	[id_Cliente] [int] NULL,
	[id_Empleado] [int] NULL,
	[id_Reserva] [int] NULL,
	[id_Mp] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Categoria] ([id_Catego], [Nom_Catego], [id_Puesto]) VALUES (1, N'Administrativo', NULL)
INSERT [dbo].[Categoria] ([id_Catego], [Nom_Catego], [id_Puesto]) VALUES (2, N'Recepción', NULL)
INSERT [dbo].[Categoria] ([id_Catego], [Nom_Catego], [id_Puesto]) VALUES (3, N'Servicio', NULL)
INSERT [dbo].[Categoria] ([id_Catego], [Nom_Catego], [id_Puesto]) VALUES (4, N'Mantenimiento', NULL)
INSERT [dbo].[CheckIO] ([id_check], [CheckIn], [CheckOut]) VALUES (1, CAST(N'2018-11-01T18:30:09.000' AS DateTime), NULL)
INSERT [dbo].[CheckIO] ([id_check], [CheckIn], [CheckOut]) VALUES (2, CAST(N'2018-10-22T14:45:15.000' AS DateTime), NULL)
INSERT [dbo].[CheckIO] ([id_check], [CheckIn], [CheckOut]) VALUES (3, CAST(N'2018-10-27T21:15:20.000' AS DateTime), NULL)
INSERT [dbo].[CheckIO] ([id_check], [CheckIn], [CheckOut]) VALUES (4, CAST(N'2018-10-01T15:05:40.000' AS DateTime), CAST(N'2018-10-04T15:10:58.000' AS DateTime))
INSERT [dbo].[CheckUs] ([id_CheckUs], [id_Us], [CheckInUs], [CheckOutUs]) VALUES (1, 1, CAST(N'2018-10-27T06:01:28.000' AS DateTime), CAST(N'2018-10-27T13:58:16.000' AS DateTime))
INSERT [dbo].[CheckUs] ([id_CheckUs], [id_Us], [CheckInUs], [CheckOutUs]) VALUES (2, 1, CAST(N'2018-10-28T06:20:45.000' AS DateTime), CAST(N'2018-10-27T13:50:36.000' AS DateTime))
INSERT [dbo].[Cliente] ([id_Cliente], [NombreC], [APaterno], [AMaterno], [Calle], [NumCasa], [Colonia], [FechaNacimientoC], [Telefono], [Email]) VALUES (1, N'Victoria', N'Almazan', N'Correa', N'Esperanza', 675, N'Fresnos', CAST(N'1998-12-01' AS Date), 5243532, N'Victoria_almazan@outlook.com')
INSERT [dbo].[Cliente] ([id_Cliente], [NombreC], [APaterno], [AMaterno], [Calle], [NumCasa], [Colonia], [FechaNacimientoC], [Telefono], [Email]) VALUES (2, N'Alejandro', N'Tamez', N'Olvera', N'Pablo Livas', 1232, N'Vicente Guerrero', CAST(N'1996-11-11' AS Date), 175432245, N'tamez_cranck@hotmail.com')
INSERT [dbo].[Cliente] ([id_Cliente], [NombreC], [APaterno], [AMaterno], [Calle], [NumCasa], [Colonia], [FechaNacimientoC], [Telefono], [Email]) VALUES (3, N'Fernando', N'Guevara', N'Rodriguez', N'Noche Buena', 12352, N'Monteverde', CAST(N'1997-12-14' AS Date), 1234523414, N'fer_guevara@gmail.com')
INSERT [dbo].[Cliente] ([id_Cliente], [NombreC], [APaterno], [AMaterno], [Calle], [NumCasa], [Colonia], [FechaNacimientoC], [Telefono], [Email]) VALUES (4, N'Lizbeth', N'Garcia', N'Mireles', N'tabachines', 4234, N'Malvinas', CAST(N'1995-01-25' AS Date), 123574746, N'liz_gar@gmail.com')
INSERT [dbo].[Cliente] ([id_Cliente], [NombreC], [APaterno], [AMaterno], [Calle], [NumCasa], [Colonia], [FechaNacimientoC], [Telefono], [Email]) VALUES (5, N'Jesica', N'Sanchez', N'Gutierrez', N'Acueducto', 6543, N'Lomas', CAST(N'1990-09-30' AS Date), 655443322, N'jess_sanchez@outlook.com')
INSERT [dbo].[Cliente] ([id_Cliente], [NombreC], [APaterno], [AMaterno], [Calle], [NumCasa], [Colonia], [FechaNacimientoC], [Telefono], [Email]) VALUES (6, N'Marcos', N'Gutierrez', N'Valdez', N'Mina', 3345, N'Puertas Mitras', CAST(N'1991-08-25' AS Date), 876544445, N'gutierrez_marcos@gmail.com')
INSERT [dbo].[Cliente] ([id_Cliente], [NombreC], [APaterno], [AMaterno], [Calle], [NumCasa], [Colonia], [FechaNacimientoC], [Telefono], [Email]) VALUES (7, N'Diego', N'Perez', N'Hernandez', N'Ruiz Cortinez', 65443, N'La Fama', CAST(N'1989-09-27' AS Date), 75543325, N'diegoher98@hotmail.com')
INSERT [dbo].[Cliente] ([id_Cliente], [NombreC], [APaterno], [AMaterno], [Calle], [NumCasa], [Colonia], [FechaNacimientoC], [Telefono], [Email]) VALUES (8, N'Rodrigo', N'Bentancour', N'Solis', N'Colon', 1222, N'Privadas de Sauces', CAST(N'1992-10-11' AS Date), 14342342, N'bentancour@gmail.com')
INSERT [dbo].[Cliente] ([id_Cliente], [NombreC], [APaterno], [AMaterno], [Calle], [NumCasa], [Colonia], [FechaNacimientoC], [Telefono], [Email]) VALUES (9, N'Miguel', N'Villa', N'Ruiz', N'Padre Mier', 43332, N'Fernando Amilpa', CAST(N'1997-11-25' AS Date), 65443333, N'miguel_villa@outlook.com')
INSERT [dbo].[Cliente] ([id_Cliente], [NombreC], [APaterno], [AMaterno], [Calle], [NumCasa], [Colonia], [FechaNacimientoC], [Telefono], [Email]) VALUES (10, N'Martha', N'Davalos', N'Luna', N'Rosa', 1233, N'Ebanos', CAST(N'1994-06-09' AS Date), 132435543, N'martha_lu@outlook.com')
INSERT [dbo].[Cliente] ([id_Cliente], [NombreC], [APaterno], [AMaterno], [Calle], [NumCasa], [Colonia], [FechaNacimientoC], [Telefono], [Email]) VALUES (11, N'Elthon', N'Martinez', N'Duque', N'Cristal', 6544, N'Fresnos', CAST(N'1998-07-25' AS Date), 823413452, N'elthon_duque@gmail.com')
INSERT [dbo].[Cliente] ([id_Cliente], [NombreC], [APaterno], [AMaterno], [Calle], [NumCasa], [Colonia], [FechaNacimientoC], [Telefono], [Email]) VALUES (12, N'Fabiola', N'Ovalle', N'Loera', N'San Mateo', 4333, N'Azteca', CAST(N'1995-10-30' AS Date), 812333445, N'faby_loera@gmail.com')
INSERT [dbo].[Cliente] ([id_Cliente], [NombreC], [APaterno], [AMaterno], [Calle], [NumCasa], [Colonia], [FechaNacimientoC], [Telefono], [Email]) VALUES (13, N'Angel', N'Machorro', N'Ojeda', N'San Lucas', 2333, N'San Patricio', CAST(N'1992-06-21' AS Date), 811235234, N'machorro_ojeda@hotmail.com')
INSERT [dbo].[Cliente] ([id_Cliente], [NombreC], [APaterno], [AMaterno], [Calle], [NumCasa], [Colonia], [FechaNacimientoC], [Telefono], [Email]) VALUES (14, N'Gabriel', N'Loera', N'Cedillo', N'Girasol', 6544, N'Real del valle', CAST(N'1989-09-30' AS Date), 811243421, N'gabo_loera@gmail.com')
INSERT [dbo].[Cliente] ([id_Cliente], [NombreC], [APaterno], [AMaterno], [Calle], [NumCasa], [Colonia], [FechaNacimientoC], [Telefono], [Email]) VALUES (15, N'Gabriela', N'De Leon', N'Macias', N'Jeraneos', 2233, N'Las Adas', CAST(N'1994-10-29' AS Date), 81199922, N'gaby_macias@outlook.com')
INSERT [dbo].[ComponenteReserva] ([id_Cr], [DiasExtra], [id_Paquete], [id_Servicio], [CostoCR]) VALUES (1, 1, 1, 1, 50.0000)
INSERT [dbo].[ComponenteReserva] ([id_Cr], [DiasExtra], [id_Paquete], [id_Servicio], [CostoCR]) VALUES (2, 1, 2, 2, 50.0000)
INSERT [dbo].[ComponenteReserva] ([id_Cr], [DiasExtra], [id_Paquete], [id_Servicio], [CostoCR]) VALUES (3, 1, 3, 2, 50.0000)
INSERT [dbo].[ComponenteReserva] ([id_Cr], [DiasExtra], [id_Paquete], [id_Servicio], [CostoCR]) VALUES (4, 1, 4, 5, 50.0000)
INSERT [dbo].[ComponenteReserva] ([id_Cr], [DiasExtra], [id_Paquete], [id_Servicio], [CostoCR]) VALUES (5, 1, 5, 3, 50.0000)
INSERT [dbo].[ComponentesHabita] ([id_CompH], [Camas_comp], [Baños_comp]) VALUES (1, 1, 1)
INSERT [dbo].[ComponentesHabita] ([id_CompH], [Camas_comp], [Baños_comp]) VALUES (2, 2, 1)
INSERT [dbo].[ComponentesHabita] ([id_CompH], [Camas_comp], [Baños_comp]) VALUES (3, 3, 2)
INSERT [dbo].[DatosUsuarios] ([id_DUs], [Avatar], [id_Us], [id_Empleado]) VALUES (1, NULL, 1, 1)
INSERT [dbo].[DatosUsuarios] ([id_DUs], [Avatar], [id_Us], [id_Empleado]) VALUES (2, NULL, 2, 2)
INSERT [dbo].[Disponibilidad] ([id_Dispo], [id_Habita], [Estatus], [id_Reserva], [Fecha]) VALUES (1, 1, N'Reservado', 2, CAST(N'2018-11-03T18:25:40.000' AS DateTime))
INSERT [dbo].[Empleados] ([id_Empleado], [NombreE], [APaternoE], [AMaterno], [CalleE], [NumCalleE], [ColoniaE], [Telefono], [Email], [id_Puesto], [id_Horario], [id_Catego], [Salario]) VALUES (1, N'Cesar', N'Barajas', N'Rodriguez', N'Eulalio Villarreal', 1020, N'Emiliano Zapata', 19845523, N'barajas_cesar@outlook.com', 32, 1, 4, 2500.0000)
INSERT [dbo].[Empleados] ([id_Empleado], [NombreE], [APaternoE], [AMaterno], [CalleE], [NumCalleE], [ColoniaE], [Telefono], [Email], [id_Puesto], [id_Horario], [id_Catego], [Salario]) VALUES (2, N'Concepcion', N'Hernandez', N'Cepeda', N'Tabachines', 1002, N'Jardines', 17681852, N'Concha_loca@gmail.com', 8, 3, 4, 1200.0000)
INSERT [dbo].[Empleados] ([id_Empleado], [NombreE], [APaternoE], [AMaterno], [CalleE], [NumCalleE], [ColoniaE], [Telefono], [Email], [id_Puesto], [id_Horario], [id_Catego], [Salario]) VALUES (3, N'Rubi', N'Hernandez', N'Cepeda', N'Tabachines', 451, N'Jardines', 75681498, N'rubi_locochona@outlook.com', 20, 2, 3, 3000.0000)
INSERT [dbo].[Empleados] ([id_Empleado], [NombreE], [APaternoE], [AMaterno], [CalleE], [NumCalleE], [ColoniaE], [Telefono], [Email], [id_Puesto], [id_Horario], [id_Catego], [Salario]) VALUES (4, N'Cuca', N'Herrera', N'Rodriguez', N'Monteverde', 1840, N'Zapata', 19828523, N'Cuca_97@outlook.com', 32, 1, 4, 2500.0000)
INSERT [dbo].[Empleados] ([id_Empleado], [NombreE], [APaternoE], [AMaterno], [CalleE], [NumCalleE], [ColoniaE], [Telefono], [Email], [id_Puesto], [id_Horario], [id_Catego], [Salario]) VALUES (5, N'Carlos', N'Cabrera', N'Lopez', N'Cesar Gonzalez', 798, N'Independencia', 1684219, N'indp_charly@outlook.com', 7, 3, 3, 1200.0000)
INSERT [dbo].[Empleados] ([id_Empleado], [NombreE], [APaternoE], [AMaterno], [CalleE], [NumCalleE], [ColoniaE], [Telefono], [Email], [id_Puesto], [id_Horario], [id_Catego], [Salario]) VALUES (6, N'Cristina', N'Rodriguez', N'Martinez', N'Jardines', 1239, N'Sauces', 1784569, N'cristy_64@hotmail.com', 13, 1, 3, 3000.0000)
INSERT [dbo].[Empleados] ([id_Empleado], [NombreE], [APaternoE], [AMaterno], [CalleE], [NumCalleE], [ColoniaE], [Telefono], [Email], [id_Puesto], [id_Horario], [id_Catego], [Salario]) VALUES (7, N'Patricia', N'Cobas', N'Castillo', N'Rosa', 507, N'Malvinas', 19854678, N'paty45_98@outlook.com', 4, 2, 3, 900.0000)
INSERT [dbo].[Empleados] ([id_Empleado], [NombreE], [APaternoE], [AMaterno], [CalleE], [NumCalleE], [ColoniaE], [Telefono], [Email], [id_Puesto], [id_Horario], [id_Catego], [Salario]) VALUES (8, N'Hernan', N'Lopez', N'Olvera', N'Mango', 234, N'Lomas', 17985432, N'hlo@gmail.com', 49, 1, 4, 1200.0000)
INSERT [dbo].[Empleados] ([id_Empleado], [NombreE], [APaternoE], [AMaterno], [CalleE], [NumCalleE], [ColoniaE], [Telefono], [Email], [id_Puesto], [id_Horario], [id_Catego], [Salario]) VALUES (9, N'Angel', N'Garcia', N'Jimenez', N'Fidel Velazquez', 213, N'Niños Heroes', 16879453, N'Alegaja@hotmail.com', 48, 3, 3, 1200.0000)
INSERT [dbo].[Empleados] ([id_Empleado], [NombreE], [APaternoE], [AMaterno], [CalleE], [NumCalleE], [ColoniaE], [Telefono], [Email], [id_Puesto], [id_Horario], [id_Catego], [Salario]) VALUES (10, N'Miguel', N'Perez', N'Arteaga', N'Escobedo', 423, N'Las Puentes', 19876523, N'mike_65@gmail.com', 47, 1, 4, 1500.0000)
INSERT [dbo].[Empleados] ([id_Empleado], [NombreE], [APaternoE], [AMaterno], [CalleE], [NumCalleE], [ColoniaE], [Telefono], [Email], [id_Puesto], [id_Horario], [id_Catego], [Salario]) VALUES (11, N'Emmanuel', N'Garcia', N'Ghio', N'Clavel', 5343, N'Independencia', 123564432, N'emmanuel_garaq@hotmail.com', 46, 1, 3, 2000.0000)
INSERT [dbo].[Empleados] ([id_Empleado], [NombreE], [APaternoE], [AMaterno], [CalleE], [NumCalleE], [ColoniaE], [Telefono], [Email], [id_Puesto], [id_Horario], [id_Catego], [Salario]) VALUES (12, N'Margarita', N'Smith', N'Cabrera', N'Lila', 1234, N'Estanzuela', 123225435, N'magee_smith@gmail.com', 45, 1, 1, 2700.0000)
INSERT [dbo].[Empleados] ([id_Empleado], [NombreE], [APaternoE], [AMaterno], [CalleE], [NumCalleE], [ColoniaE], [Telefono], [Email], [id_Puesto], [id_Horario], [id_Catego], [Salario]) VALUES (13, N'Karina', N'Salazar', N'Tamez', N'Mango', 5443, N'Amilpa', 17896432, N'kary_sala98@hotmail.com', 44, 2, 4, 1100.0000)
INSERT [dbo].[Empleados] ([id_Empleado], [NombreE], [APaternoE], [AMaterno], [CalleE], [NumCalleE], [ColoniaE], [Telefono], [Email], [id_Puesto], [id_Horario], [id_Catego], [Salario]) VALUES (14, N'Fernando', N'Castillo', N'Olvera', N'Escutia', 4231, N'Zacatecas', 432412531, N'fer_castol@outlook.com', 43, 1, 1, 2300.0000)
INSERT [dbo].[Empleados] ([id_Empleado], [NombreE], [APaternoE], [AMaterno], [CalleE], [NumCalleE], [ColoniaE], [Telefono], [Email], [id_Puesto], [id_Horario], [id_Catego], [Salario]) VALUES (15, N'Cristian', N'Urbano', N'Galvan', N'Almazan', 65432, N'Aurora', 52345231, N'cristianu_galva@gmail.com', 42, 1, 4, 1100.0000)
INSERT [dbo].[Empleados] ([id_Empleado], [NombreE], [APaternoE], [AMaterno], [CalleE], [NumCalleE], [ColoniaE], [Telefono], [Email], [id_Puesto], [id_Horario], [id_Catego], [Salario]) VALUES (16, N'Alma Alicia', N'Villarreal', N'Moncada', N'Luciernaga', 554, N'Esperanza', 813452324, N'alicia_v83@gmail.com', 2, 1, 2, 1300.0000)
INSERT [dbo].[Factura] ([id_Factura], [id_Venta], [RFC], [NombreEmpresa], [EmailEmpresa], [Observaciones], [FechaFactura]) VALUES (1, 1, 800825569, NULL, N'diegoher98@hotmail.com', NULL, CAST(N'2018-10-04T15:05:40.000' AS DateTime))
INSERT [dbo].[HABITACIONES] ([id_Habita], [Imagen], [Descripcion], [Tipo], [id_CompH], [costoDiario]) VALUES (1, NULL, N'Responde a tus necesidades, tendras el espaciosuficiente que necesites para descansar', N'Habitacion sencilla', 1, 700.0000)
INSERT [dbo].[HABITACIONES] ([id_Habita], [Imagen], [Descripcion], [Tipo], [id_CompH], [costoDiario]) VALUES (2, NULL, N'Es grande con capacidad superior, dispuestas para dos personas, camas independientes o una matrimonial.', N'Habitacion doble', 2, 800.0000)
INSERT [dbo].[HABITACIONES] ([id_Habita], [Imagen], [Descripcion], [Tipo], [id_CompH], [costoDiario]) VALUES (3, NULL, N'Esta preparada para hospedar a na pareja o matrimonio', N'Habitacion Matrimonial', 1, 900.0000)
INSERT [dbo].[HABITACIONES] ([id_Habita], [Imagen], [Descripcion], [Tipo], [id_CompH], [costoDiario]) VALUES (4, NULL, N'Para todos aquellos que planeen sus vacaciones con toda la familia.', N'Habitaciones Familiares', 3, 950.0000)
INSERT [dbo].[HABITACIONES] ([id_Habita], [Imagen], [Descripcion], [Tipo], [id_CompH], [costoDiario]) VALUES (5, NULL, N'Cuenta con caracteristicas exclusivas como oficinas, sala de reuniones, jacuzzi, gym, etc.', N'Suite', 1, 1200.0000)
INSERT [dbo].[HABITACIONES] ([id_Habita], [Imagen], [Descripcion], [Tipo], [id_CompH], [costoDiario]) VALUES (6, NULL, N'Cuenta con cama matrimonial para disfrutar de una luna de miel especial', N'Suite doble', 1, 1500.0000)
INSERT [dbo].[HABITACIONES] ([id_Habita], [Imagen], [Descripcion], [Tipo], [id_CompH], [costoDiario]) VALUES (7, NULL, N'Especial para ejecutivos y empresarios que necesitan mayor espacio para conferencias.', N'Junior Suite', 1, 1700.0000)
INSERT [dbo].[Horario] ([id_Horario], [Turno], [Hora]) VALUES (1, N'Matutino', N'6:00am - 2:00pm')
INSERT [dbo].[Horario] ([id_Horario], [Turno], [Hora]) VALUES (2, N'Vespertino', N'2:00pm - 10:00pm')
INSERT [dbo].[Horario] ([id_Horario], [Turno], [Hora]) VALUES (3, N'Nocturno', N'10:00pm - 06:00am')
INSERT [dbo].[Modo_Pago] ([id_Mp], [Tipo_mp]) VALUES (1, N'Efectivo')
INSERT [dbo].[Modo_Pago] ([id_Mp], [Tipo_mp]) VALUES (2, N'Tarjeta')
INSERT [dbo].[Paquete] ([id_Paquete], [DescPaquete], [CostoP]) VALUES (1, N'Piscina, GYM, Servicio a Habitacion, Desayuno, Planchado', 10000)
INSERT [dbo].[Paquete] ([id_Paquete], [DescPaquete], [CostoP]) VALUES (2, N'Piscina, Planchado', 10000)
INSERT [dbo].[Paquete] ([id_Paquete], [DescPaquete], [CostoP]) VALUES (3, N'Servicio a Habitacion, Desayuno', 5000)
INSERT [dbo].[Paquete] ([id_Paquete], [DescPaquete], [CostoP]) VALUES (4, N'Planchado, Servicio a Habitacion', 2500)
INSERT [dbo].[Paquete] ([id_Paquete], [DescPaquete], [CostoP]) VALUES (5, N'GYM, Piscina', 2000)
INSERT [dbo].[Paquete] ([id_Paquete], [DescPaquete], [CostoP]) VALUES (6, N'Servicio a habitacion', 1500)
INSERT [dbo].[Paquete] ([id_Paquete], [DescPaquete], [CostoP]) VALUES (7, N'Pscina', 700)
INSERT [dbo].[Paquete] ([id_Paquete], [DescPaquete], [CostoP]) VALUES (8, N'Planchado', 500)
INSERT [dbo].[Paquete] ([id_Paquete], [DescPaquete], [CostoP]) VALUES (9, N'GYM', 1000)
INSERT [dbo].[Paquete] ([id_Paquete], [DescPaquete], [CostoP]) VALUES (10, N'Desayuno', 1500)
INSERT [dbo].[Paquete] ([id_Paquete], [DescPaquete], [CostoP]) VALUES (11, N'Lavanderia', 700)
INSERT [dbo].[Paquete] ([id_Paquete], [DescPaquete], [CostoP]) VALUES (12, N'Tintoreria', 500)
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (1, N'Gerente')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (2, N'Recepcionista')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (3, N'Botones')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (4, N'Limpieza')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (5, N'Mucama')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (6, N'Servicio a Cuarto')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (7, N'Chofer')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (8, N'Electricista')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (9, N'Jardinero')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (10, N'De tintoreria')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (11, N'Lavanderia')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (12, N'Lavador de Piscina')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (13, N'Medico')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (14, N'Meseros')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (15, N'Cocinero')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (16, N'Camarera')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (17, N'Jefe de alimentos y bebidas')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (18, N'Chef')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (19, N'Auxiliar de Cocina')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (20, N'Jefe de seguridad')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (21, N'Jefe de servicio telefonico')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (22, N'Director de restaurante')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (23, N'Bartender')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (24, N'Jefe de eventos')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (25, N'Director de habitaciones')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (26, N'Director de personal')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (27, N'Director de Contabilidad')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (28, N'Director de marketing')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (29, N'Director de ingenieria')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (30, N'Directorde Compras')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (31, N'Administracion y finanzas')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (32, N'Sistemas')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (33, N'Subgerente')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (34, N'Ama de llaves')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (35, N'Cajero')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (36, N'Auditor nocturno')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (37, N'Auxiliar de lavanderia')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (38, N'Auxiliarde intendencia')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (39, N'Capitan de meseros')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (40, N'Jefe de Recursos Humanos')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (41, N'Jefe de almacen')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (42, N'Auxiliar de almacen')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (43, N'Auxiliar administrativo')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (44, N'Mensajero')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (45, N'Auxiliar Contable')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (46, N'Gerente de Servicios Generales')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (47, N'Auxiliar de Mantenimiento')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (48, N'Agente de Seguridad')
INSERT [dbo].[Puesto] ([id_Puesto], [Puesto]) VALUES (49, N'Jefe de jardineria')
INSERT [dbo].[Reservacion] ([id_Reserva], [id_Habita], [Estatus_Reserva], [FechaHora], [CostoTotal], [id_Cliente], [id_Cr], [id_check], [Dias]) VALUES (1, 1, N'Ausente', NULL, 700.0000, 1, NULL, NULL, 1)
INSERT [dbo].[Reservacion] ([id_Reserva], [id_Habita], [Estatus_Reserva], [FechaHora], [CostoTotal], [id_Cliente], [id_Cr], [id_check], [Dias]) VALUES (2, 1, N'Activo', CAST(N'2018-10-27T10:34:09.000' AS DateTime), 750.0000, 2, 1, 1, 1)
INSERT [dbo].[Reservacion] ([id_Reserva], [id_Habita], [Estatus_Reserva], [FechaHora], [CostoTotal], [id_Cliente], [id_Cr], [id_check], [Dias]) VALUES (3, 3, N'Ausente', NULL, 900.0000, 3, NULL, NULL, 1)
INSERT [dbo].[Reservacion] ([id_Reserva], [id_Habita], [Estatus_Reserva], [FechaHora], [CostoTotal], [id_Cliente], [id_Cr], [id_check], [Dias]) VALUES (4, 2, N'Ausente', NULL, 800.0000, 4, NULL, NULL, 1)
INSERT [dbo].[Reservacion] ([id_Reserva], [id_Habita], [Estatus_Reserva], [FechaHora], [CostoTotal], [id_Cliente], [id_Cr], [id_check], [Dias]) VALUES (5, 2, N'Activo', CAST(N'2018-10-20T12:01:10.000' AS DateTime), 850.0000, 5, 1, 2, 1)
INSERT [dbo].[Reservacion] ([id_Reserva], [id_Habita], [Estatus_Reserva], [FechaHora], [CostoTotal], [id_Cliente], [id_Cr], [id_check], [Dias]) VALUES (6, 4, N'Activo', CAST(N'2018-10-26T19:35:48.000' AS DateTime), 1900.0000, 6, NULL, 3, NULL)
INSERT [dbo].[Reservacion] ([id_Reserva], [id_Habita], [Estatus_Reserva], [FechaHora], [CostoTotal], [id_Cliente], [id_Cr], [id_check], [Dias]) VALUES (7, 1, N'Vencido', CAST(N'2018-09-29T10:01:54.000' AS DateTime), 850.0000, 7, 2, 4, 1)
INSERT [dbo].[Servicio] ([id_Servicio], [Nombre_Servicio], [Descripcion_Servicio], [CostoServicio]) VALUES (1, N'Lavanderia', N'Lavado, secado y planchado diario', 150.0000)
INSERT [dbo].[Servicio] ([id_Servicio], [Nombre_Servicio], [Descripcion_Servicio], [CostoServicio]) VALUES (2, N'A habitacion', N'Servicio a la habitacion', 350.0000)
INSERT [dbo].[Servicio] ([id_Servicio], [Nombre_Servicio], [Descripcion_Servicio], [CostoServicio]) VALUES (3, N'Masajista', N'Masajista profesional enviado a la habitacion', 400.0000)
INSERT [dbo].[Servicio] ([id_Servicio], [Nombre_Servicio], [Descripcion_Servicio], [CostoServicio]) VALUES (4, N'Internet', N'Conexion de WIFI ilimitado durante la estancia', 150.0000)
INSERT [dbo].[Servicio] ([id_Servicio], [Nombre_Servicio], [Descripcion_Servicio], [CostoServicio]) VALUES (5, N'Aparcamiento privado', N'Estacionamiento mas comodo y seguro.', 250.0000)
INSERT [dbo].[TipoUs] ([id_TUs], [TipoUs]) VALUES (1, N'Gerente')
INSERT [dbo].[TipoUs] ([id_TUs], [TipoUs]) VALUES (2, N'Recepcionista')
INSERT [dbo].[Usuarios] ([id_Us], [Username], [Email], [Pass], [FechaRegistro], [id_TUs]) VALUES (1, N'Cesar', N'barajas_cesar@outlook.com', 0x626172613938, CAST(N'2018-10-19T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Usuarios] ([id_Us], [Username], [Email], [Pass], [FechaRegistro], [id_TUs]) VALUES (2, N'Concepción', N'l.c.h.c@outlook.com', 0x636F6E6368616C6F6361, CAST(N'2018-10-19T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Venta] ([id_Venta], [id_Cliente], [id_Empleado], [id_Reserva], [id_Mp]) VALUES (1, 7, 16, 7, 2)
ALTER TABLE [dbo].[CheckIO] ADD  DEFAULT (getdate()) FOR [CheckIn]
GO
ALTER TABLE [dbo].[CheckIO] ADD  DEFAULT (getdate()) FOR [CheckOut]
GO
ALTER TABLE [dbo].[CheckUs] ADD  DEFAULT (getdate()) FOR [CheckInUs]
GO
ALTER TABLE [dbo].[CheckUs] ADD  DEFAULT (getdate()) FOR [CheckOutUs]
GO
ALTER TABLE [dbo].[Disponibilidad] ADD  DEFAULT (getdate()) FOR [Fecha]
GO
ALTER TABLE [dbo].[Factura] ADD  DEFAULT (getdate()) FOR [FechaFactura]
GO
ALTER TABLE [dbo].[Pago] ADD  DEFAULT (getdate()) FOR [FechaP]
GO
ALTER TABLE [dbo].[Categoria]  WITH CHECK ADD  CONSTRAINT [fk_Puesto2] FOREIGN KEY([id_Puesto])
REFERENCES [dbo].[Puesto] ([id_Puesto])
GO
ALTER TABLE [dbo].[Categoria] CHECK CONSTRAINT [fk_Puesto2]
GO
ALTER TABLE [dbo].[CheckUs]  WITH CHECK ADD  CONSTRAINT [fk_Us2] FOREIGN KEY([id_Us])
REFERENCES [dbo].[Usuarios] ([id_Us])
GO
ALTER TABLE [dbo].[CheckUs] CHECK CONSTRAINT [fk_Us2]
GO
ALTER TABLE [dbo].[ComponenteReserva]  WITH CHECK ADD  CONSTRAINT [fk_Paquete2] FOREIGN KEY([id_Paquete])
REFERENCES [dbo].[Paquete] ([id_Paquete])
GO
ALTER TABLE [dbo].[ComponenteReserva] CHECK CONSTRAINT [fk_Paquete2]
GO
ALTER TABLE [dbo].[ComponenteReserva]  WITH CHECK ADD  CONSTRAINT [fk_Servicio2] FOREIGN KEY([id_Servicio])
REFERENCES [dbo].[Servicio] ([id_Servicio])
GO
ALTER TABLE [dbo].[ComponenteReserva] CHECK CONSTRAINT [fk_Servicio2]
GO
ALTER TABLE [dbo].[CorteResepcion]  WITH CHECK ADD  CONSTRAINT [fk_CheckUs2] FOREIGN KEY([id_CheckUs])
REFERENCES [dbo].[CheckUs] ([id_CheckUs])
GO
ALTER TABLE [dbo].[CorteResepcion] CHECK CONSTRAINT [fk_CheckUs2]
GO
ALTER TABLE [dbo].[CorteResepcion]  WITH CHECK ADD  CONSTRAINT [fk_Empleado4] FOREIGN KEY([id_Empleado])
REFERENCES [dbo].[Empleados] ([id_Empleado])
GO
ALTER TABLE [dbo].[CorteResepcion] CHECK CONSTRAINT [fk_Empleado4]
GO
ALTER TABLE [dbo].[CorteResepcion]  WITH CHECK ADD  CONSTRAINT [fk_Venta4] FOREIGN KEY([id_Venta])
REFERENCES [dbo].[Venta] ([id_Venta])
GO
ALTER TABLE [dbo].[CorteResepcion] CHECK CONSTRAINT [fk_Venta4]
GO
ALTER TABLE [dbo].[DatosUsuarios]  WITH CHECK ADD  CONSTRAINT [fk_Empleado2] FOREIGN KEY([id_Empleado])
REFERENCES [dbo].[Empleados] ([id_Empleado])
GO
ALTER TABLE [dbo].[DatosUsuarios] CHECK CONSTRAINT [fk_Empleado2]
GO
ALTER TABLE [dbo].[DatosUsuarios]  WITH CHECK ADD  CONSTRAINT [fk_Us3] FOREIGN KEY([id_Us])
REFERENCES [dbo].[Usuarios] ([id_Us])
GO
ALTER TABLE [dbo].[DatosUsuarios] CHECK CONSTRAINT [fk_Us3]
GO
ALTER TABLE [dbo].[Disponibilidad]  WITH CHECK ADD  CONSTRAINT [fk_Habita3] FOREIGN KEY([id_Habita])
REFERENCES [dbo].[HABITACIONES] ([id_Habita])
GO
ALTER TABLE [dbo].[Disponibilidad] CHECK CONSTRAINT [fk_Habita3]
GO
ALTER TABLE [dbo].[Disponibilidad]  WITH CHECK ADD  CONSTRAINT [fk_Reserva2] FOREIGN KEY([id_Reserva])
REFERENCES [dbo].[Reservacion] ([id_Reserva])
GO
ALTER TABLE [dbo].[Disponibilidad] CHECK CONSTRAINT [fk_Reserva2]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [fk_Catego2] FOREIGN KEY([id_Catego])
REFERENCES [dbo].[Categoria] ([id_Catego])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [fk_Catego2]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [fk_Horario2] FOREIGN KEY([id_Horario])
REFERENCES [dbo].[Horario] ([id_Horario])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [fk_Horario2]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [fk_Puesto3] FOREIGN KEY([id_Puesto])
REFERENCES [dbo].[Puesto] ([id_Puesto])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [fk_Puesto3]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [fk_Venta3] FOREIGN KEY([id_Venta])
REFERENCES [dbo].[Venta] ([id_Venta])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [fk_Venta3]
GO
ALTER TABLE [dbo].[HABITACIONES]  WITH CHECK ADD  CONSTRAINT [fk_CompH2] FOREIGN KEY([id_CompH])
REFERENCES [dbo].[ComponentesHabita] ([id_CompH])
GO
ALTER TABLE [dbo].[HABITACIONES] CHECK CONSTRAINT [fk_CompH2]
GO
ALTER TABLE [dbo].[Pago]  WITH CHECK ADD  CONSTRAINT [fk_Mp2] FOREIGN KEY([id_Mp])
REFERENCES [dbo].[Modo_Pago] ([id_Mp])
GO
ALTER TABLE [dbo].[Pago] CHECK CONSTRAINT [fk_Mp2]
GO
ALTER TABLE [dbo].[Pago]  WITH CHECK ADD  CONSTRAINT [fk_Venta2] FOREIGN KEY([id_venta])
REFERENCES [dbo].[Venta] ([id_Venta])
GO
ALTER TABLE [dbo].[Pago] CHECK CONSTRAINT [fk_Venta2]
GO
ALTER TABLE [dbo].[Reservacion]  WITH CHECK ADD  CONSTRAINT [fk_Check2] FOREIGN KEY([id_check])
REFERENCES [dbo].[CheckIO] ([id_check])
GO
ALTER TABLE [dbo].[Reservacion] CHECK CONSTRAINT [fk_Check2]
GO
ALTER TABLE [dbo].[Reservacion]  WITH CHECK ADD  CONSTRAINT [fk_Cliente2] FOREIGN KEY([id_Cliente])
REFERENCES [dbo].[Cliente] ([id_Cliente])
GO
ALTER TABLE [dbo].[Reservacion] CHECK CONSTRAINT [fk_Cliente2]
GO
ALTER TABLE [dbo].[Reservacion]  WITH CHECK ADD  CONSTRAINT [fk_Cr2] FOREIGN KEY([id_Cr])
REFERENCES [dbo].[ComponenteReserva] ([id_Cr])
GO
ALTER TABLE [dbo].[Reservacion] CHECK CONSTRAINT [fk_Cr2]
GO
ALTER TABLE [dbo].[Reservacion]  WITH CHECK ADD  CONSTRAINT [fk_Habita2] FOREIGN KEY([id_Habita])
REFERENCES [dbo].[HABITACIONES] ([id_Habita])
GO
ALTER TABLE [dbo].[Reservacion] CHECK CONSTRAINT [fk_Habita2]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [fk_TUs2] FOREIGN KEY([id_TUs])
REFERENCES [dbo].[TipoUs] ([id_TUs])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [fk_TUs2]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [fk_Cliente3] FOREIGN KEY([id_Cliente])
REFERENCES [dbo].[Cliente] ([id_Cliente])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [fk_Cliente3]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [fk_Empleado3] FOREIGN KEY([id_Empleado])
REFERENCES [dbo].[Empleados] ([id_Empleado])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [fk_Empleado3]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [fk_Mp3] FOREIGN KEY([id_Mp])
REFERENCES [dbo].[Modo_Pago] ([id_Mp])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [fk_Mp3]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [fk_Reserva3] FOREIGN KEY([id_Reserva])
REFERENCES [dbo].[Reservacion] ([id_Reserva])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [fk_Reserva3]
GO
/****** Object:  StoredProcedure [dbo].[Clientes]    Script Date: 27/10/2018 01:20:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Clientes]
				@Nombre nvarchar (50),
				@Apellido nvarchar (50)

as
				set NOCOUNT ON;
				Select c.NombreC, c.APaterno, c.AMaterno, c.Telefono, c.Email
				from Cliente c
				where c.NombreC = @Nombre and c.APaterno = @Apellido
GO
/****** Object:  StoredProcedure [dbo].[CostoHabitaciones]    Script Date: 27/10/2018 01:20:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[CostoHabitaciones]
				@Habitacion nvarchar (40),
				@Costo int
as
				set NOCOUNT ON;
				Select h.Tipo, h.costoDiario
				from HABITACIONES h
				where @Habitacion = Tipo AND @Costo= costoDiario
GO
/****** Object:  StoredProcedure [dbo].[Empleado]    Script Date: 27/10/2018 01:20:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Empleado]
				@Empleado nvarchar (50),
				@Puesto nvarchar (50)

as
				set NOCOUNT ON;
				Select e.id_Empleado, p.Puesto
				from Empleados e inner join Puesto p
				on @Empleado = e.NombreE and @Puesto = p.Puesto
				where e.id_Puesto = p.id_Puesto
GO
/****** Object:  StoredProcedure [dbo].[EmpleadoHorario]    Script Date: 27/10/2018 01:20:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[EmpleadoHorario]
				@Empleado nvarchar (50),
				@Hora nvarchar(50)

as
				set NOCOUNT ON;
				Select e.APaternoE, e.NombreE, h.Hora,e.Salario
				from Empleados e inner join Horario h
				on @Empleado = e.NombreE and @Hora = h.id_Horario
				where e.id_Horario = h.id_Horario
GO
/****** Object:  StoredProcedure [dbo].[NumReservacion]    Script Date: 27/10/2018 01:20:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[NumReservacion]
				@NumReservacion int
				
as
				set NOCOUNT ON;
				Select id_Reserva, CostoTotal
				from Reservacion
				where @NumReservacion = id_Reserva AND Estatus_Reserva ='Vencido'
					
GO
/****** Object:  StoredProcedure [dbo].[Reservaciones]    Script Date: 27/10/2018 01:20:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Reservaciones]
				@Estatus nvarchar (50),
				@Dias int

as
				set NOCOUNT ON;
				Select r.id_Reserva, c.NombreC, r.Estatus_Reserva, r.Dias
				from Reservacion r inner join Cliente c
				on @Estatus = r.Estatus_Reserva and @Dias = r.Dias
				where r.id_Cliente = c.id_Cliente
GO
/****** Object:  Trigger [dbo].[ELIMINAR]    Script Date: 27/10/2018 01:20:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[ELIMINAR]
	ON [dbo].[Usuarios]
	for delete
as
	if (select count (*) from deleted)>1
	begin
	raiserror('No puede borrar mas de un Usuario',16,1)
	rollback transaction
	end;
GO
ALTER TABLE [dbo].[Usuarios] ENABLE TRIGGER [ELIMINAR]
GO
/****** Object:  Trigger [dbo].[Realiza_Usuarios]    Script Date: 27/10/2018 01:20:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Trigger [dbo].[Realiza_Usuarios]
	ON [dbo].[Usuarios]
	after insert
	as RAISERROR ('NOTIFICACION DE AGREGADO EN TABLA USUARIO', 16,10)
GO
ALTER TABLE [dbo].[Usuarios] ENABLE TRIGGER [Realiza_Usuarios]
GO
USE [master]
GO
ALTER DATABASE [HOTEL] SET  READ_WRITE 
GO
