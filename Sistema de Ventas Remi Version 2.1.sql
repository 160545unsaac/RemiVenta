
---------Creacion de la base de datos
use master
go
if exists (select * from sysdatabases where name='BDSistemaVentas')
		drop database BDSistemaVentas
go
create database BDSistemaVentas
go
---------Creacion de las tablas 
use BDSistemaVentas
go
create type TCodProducto from varchar(5)not null;
go
create type TCodCliente from varchar (5)not null;
go
---- TABLA: TProducto
create table TProducto
(  -- lista de atributos o campos
	CodProducto TCodProducto not null,
	Producto varchar(20),
	Descripcion varchar(50),
	Marca varchar (15),
	Modelo varchar (15),
	Serie varchar (20),
	Stock int,
	PrecioUnitario float,
	------- definicion ded cables----------
	primary key (CodProducto),---- la ultima linea de codigo no lleva coma(,)	
)
go
----------------TABLA DE USUARIO-------------------------
create table TUsuario(
	CodUsuario varchar(10)not null,
	Contraseña varchar(8)not null,
	DNI varchar (8),
	Nombre varchar(30),
	Edad int,
	Telefono varchar(9),
	Tipo varchar (10)
	primary key (CodUsuario)
)
go
------TABLA: TCliente -----
create table TCliente(
	CodCliente TCodCliente  not null,
	DNI varchar(8),
	Direccion varchar(50),
	Email varchar(30),
	Telefono varchar(9),
	----Determinacion de las claves
	primary key (CodCliente)
)
go
------TABLA:TDocVenta----------
create table TDocVenta(
	NroDocVenta varchar(10),
	Fecha varchar(10),
	Tipo varchar(12),
	TipoPago varchar(12),
	CodCliente TCodCliente not null,
	CodUsuario varchar(10)not null,
	-------Determinacion de Claves
	primary key (NroDocVenta),
	foreign key (CodCliente) references TCliente,
	foreign key (CodUsuario) references TUsuario
)
go
------TABLA: TDetalleVenta-------
create table TDetalleVenta(
	NroDocVenta varchar(10),
	CodProducto TCodProducto not null,
	Cantidad int,
	PrecioUnitario float,
	-------Deteminacion de Claves 
	foreign key (NroDocVenta) references TDocVenta,
	foreign key (CodProducto) references TProducto
)
go
-------TABLA DE Documento de PagoVenta-----------
create table TDocVentaCredito(
	NroDocVentaCredito varchar(10),
	NroDocVenta varchar(10),
	NroCuotas int,
	FechaPago varchar(10),
	Observaciones varchar(50),
	Estado varchar(20),
	-------Determinacion de Claves
	primary key (NroDocVentaCredito),
	foreign key (NroDocVenta) references TDocVenta,
)
go
--------TABLA DE DETALLE DE PAGO DE VENTA
create table TDetalleVentaCredito(
	NroDocVentaCredito varchar(10),
	CuotaActual int,
	Fecha varchar(10),
	CodUsuario varchar(10)not null,
	MontoPagado float,
	foreign key (CodUsuario) references TUsuario,
	foreign key (NroDocVentaCredito)references TDocVenta

)
go
--------TABLA DE ARQUEO ---------
create table TArqueoCaja(
	NroArqueoCaja varchar(10),
	Fecha varchar (10),
	TotalSolesInicio float,
	TotalSolesFinal float,
	CodUsuario varchar(10),
	primary key (NroArqueoCaja),
	------Determinacion de las claves primarias
	foreign key (CodUsuario) references TUsuario,
)
go


