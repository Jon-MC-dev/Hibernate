DROP DATABASE IF EXISTS bd_app;
CREATE DATABASE IF NOT EXISTS bd_app;
USE bd_app;

CREATE TABLE IF NOT EXISTS tbl_marcas (
  id_marca INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(45) NULL
  )
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS tbl_categorias (
  id_categoria INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(45) NULL
   )
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS tbl_productos (
  id_producto INT AUTO_INCREMENT PRIMARY KEY,
  id_categoria INT NOT NULL,
  id_marca INT NULL,
  modelo VARCHAR(45) NULL,
  existencias INT NULL,
  descripcion VARCHAR(200) NULL,
  codigo_barras VARCHAR(45) NULL,
  detalles_adicionales JSON NULL
  )
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS tbl_colores_fotografias (
  id_foto INT AUTO_INCREMENT PRIMARY KEY,
  id_producto INT NOT NULL,
  fotografia VARCHAR(100) NULL,
  id_color INT NULL)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS tbl_catalogo_colores (
  id_color INT AUTO_INCREMENT PRIMARY KEY,
  color VARCHAR(45) NULL,
  codigo VARCHAR(10)
  )
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS tbl_personas (
  id_persona INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(45) NULL,
  apellido_paterno VARCHAR(45) NULL,
  apellido_materno VARCHAR(45) NULL,
  edad VARCHAR(45) NULL,
  sexo VARCHAR(45) NULL
  )
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS tbl_usuarios (
  id_persona INT  PRIMARY KEY ,
  usuario VARCHAR(50) NULL,
  contrasena VARCHAR(50) NULL,
  permisos JSON NULL
  )
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS tbl_adquisiciones (
  id_adquisicion INT AUTO_INCREMENT PRIMARY KEY,
  id_persona INT NULL,
  fecha_hora DATETIME NULL,
  precio_total DECIMAL NULL
  )
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS tbl_detalle_adquisicion (
  id_detalle INT AUTO_INCREMENT PRIMARY KEY,
  id_adquisicion INT NULL,
  id_producto INT NULL,
  precio_compra DOUBLE NULL,
  cantidad INT NULL
  )
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS tbl_ventas (
  id_venta INT AUTO_INCREMENT PRIMARY KEY ,
  id_usuario_empleado INT NULL,
  id_persona_cliente INT NULL,
  fecha_hora DATETIME NULL,
  precio_total DECIMAL NULL
  )
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS tbl_detalle_venta (
  id_detalle INT AUTO_INCREMENT PRIMARY KEY,
  id_venta INT NULL,
  id_producto INT NULL,
  precio_venta DOUBLE NULL,
  cantidad INT NULL
  )
ENGINE = InnoDB;
