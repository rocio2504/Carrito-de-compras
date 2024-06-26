
CREATE DATABASE DBCARRITO
GO

USE DBCARRITO
GO

-- Creaci�n de las Tablas y Constraints
-- -----------------------------------------
CREATE TABLE CATEGORIA(
IdCategoria INT PRIMARY KEY IDENTITY (1,1),
Descripcion VARCHAR(100),
Activo BIT DEFAULT 1,
FechaRegistro DATETIME DEFAULT GETDATE()
)

GO

CREATE TABLE MARCA(
IdMarca INT PRIMARY KEY IDENTITY(1,1),
Descripcion VARCHAR(100),
Activo BIT DEFAULT 1,
FechaRegisto DATETIME DEFAULT GETDATE()
)
GO
-- ROCIO MAMANI
-- -----------------------------------------
CREATE TABLE PRODUCTO(
IdProducto INT PRIMARY KEY IDENTITY(1,1),
Nombre VARCHAR(500),
Descripcion VARCHAR(500),
IdMarca INT, 
IdCategoria INT,
Precio DECIMAL(10,2) DEFAULT 0,
Stock INT,
RutaImagen VARCHAR(100),
NombreImagen VARCHAR(100),
Activo BIT DEFAULT 1,
FechaRegisto DATETIME DEFAULT GETDATE()
)

-- ROCIO MAMANI
-- -----------------------------------------
-- Creacion de FK PRODUCTO
ALTER TABLE PRODUCTO
ADD CONSTRAINT Fk_PRODUCTO_MARCA
FOREIGN KEY (IdMarca) 
REFERENCES MARCA (IdMarca)
GO
-- ROCIO MAMANI
-- -----------------------------------------
ALTER TABLE PRODUCTO
ADD CONSTRAINT Fk_PRODUCTO_CATEGORIA
FOREIGN KEY (IdCategoria) 
REFERENCES CATEGORIA (IdCategoria)
GO

CREATE TABLE CLIENTE(
IdCliente INT PRIMARY KEY IDENTITY(1,1),
Nombres VARCHAR (100),
Apellidos VARCHAR (100),
Correo VARCHAR (100),
Clave VARCHAR (150),
Reestablecer BIT DEFAULT 0, 
FechaRegistro DATETIME DEFAULT GETDATE()
)
-- ROCIO MAMANI
-- -----------------------------------------
CREATE TABLE CARRITO (
Idcarrito INT PRIMARY KEY IDENTITY(1,1),
IdCliente INT,
IdProducto INT,
Cantidad INT
)
-- ROCIO MAMANI
-- -----------------------------------------
-- Creacion de FK CARRITO
ALTER TABLE CARRITO
ADD CONSTRAINT Fk_CARRITO_CLIENTE
FOREIGN KEY (IdCliente) 
REFERENCES CLIENTE (IdCliente)
GO

ALTER TABLE CARRITO
ADD CONSTRAINT Fk_CARRITO_PRODUCTO
FOREIGN KEY (IdProducto) 
REFERENCES PRODUCTO (IdProducto)
GO
-- ROCIO MAMANI
-- -----------------------------------------
CREATE TABLE VENTA(
IdVenta INT PRIMARY KEY IDENTITY(1,1),
IdCliente INT,
Totalproducto INT,
MontoTotal DECIMAL (10,2),
Contacto VARCHAR (50),
IdDistrito VARCHAR (10), 
Telefono VARCHAR (50),
Direccion VARCHAR (500), 
IdTransaccion VARCHAR (50), 
FechaVenta DATETIME DEFAULT GETDATE()
)
GO
-- ROCIO MAMANI
-- -----------------------------------------
ALTER TABLE VENTA
ADD CONSTRAINT Fk_VENTA_CLIENTE
FOREIGN KEY (IdCliente) 
REFERENCES CLIENTE (IdCliente)
GO

CREATE TABLE DETALLE_VENTA(
IdDetalleVenta INT PRIMARY KEY IDENTITY(1,1),
IdVenta INT,
IdProducto INT,
Cantidad INT,
Total DECIMAL(10,2)
)
GO

ALTER TABLE DETALLE_VENTA
ADD CONSTRAINT Fk_DETALLE_VENTA_VENTA
FOREIGN KEY (IdVenta) 
REFERENCES VENTA (IdVenta)
GO
-- ROCIO MAMANI
-- -----------------------------------------
ALTER TABLE DETALLE_VENTA
ADD CONSTRAINT Fk_DETALLE_VENTA_PRODUCTO
FOREIGN KEY (IdProducto) 
REFERENCES PRODUCTO (IdProducto)
GO
-- ROCIO MAMANI
-- -----------------------------------------
CREATE TABLE USUARIO(
IdUsuario INT PRIMARY KEY IDENTITY(1,1),
Nombres VARCHAR (100), 
Apellidos VARCHAR (100), 
Correo VARCHAR (100), 
Clave VARCHAR (100), 
Reestablecer BIT DEFAULT 1, 
Activo BIT DEFAULT 1, 
FechaRegistro DATETIME DEFAULT GETDATE()
)
GO

CREATE TABLE DEPARTAMENTO(
IdDepartamento VARCHAR(2) PRIMARY KEY,
Descripcion VARCHAR(45) NOT NULL
)
GO
-- ROCIO MAMANI
-- -----------------------------------------
CREATE TABLE PROVINCIA(
IdProvincia VARCHAR(4) NOT NULL PRIMARY KEY,
Descripcion VARCHAR(45) NOT NULL,
IdDepartamento VARCHAR(2)
)
GO

ALTER TABLE PROVINCIA
ADD CONSTRAINT Fk_PROVINCIA_DEPARTAMENTO 
FOREIGN KEY (IdDepartamento) 
REFERENCES DEPARTAMENTO(IdDepartamento)
GO

CREATE TABLE DISTRITO(
IdDistrito VARCHAR(6) NOT NULL PRIMARY KEY,
Descripcion VARCHAR(45) NOT NULL,
IdProvincia VARCHAR(4) NOT NULL,
IdDepartamento VARCHAR(2) NOT NULL
)

ALTER TABLE DISTRITO
ADD CONSTRAINT Fk_DISTRITO_PROVINCIA
FOREIGN KEY (IdProvincia) 
REFERENCES PROVINCIA (IdProvincia)
GO
-- ROCIO MAMANI
-- -----------------------------------------
ALTER TABLE DISTRITO
ADD CONSTRAINT Fk_DISTRITO_DEPARTAMENTO
FOREIGN KEY (IdDepartamento) 
REFERENCES DEPARTAMENTO(IdDepartamento)
GO



