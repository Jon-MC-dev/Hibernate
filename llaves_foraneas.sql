use bd_app;
--   productos a categoria-----
ALTER TABLE tbl_productos 
ADD CONSTRAINT `categorias_de_productos`
FOREIGN KEY (id_categoria) REFERENCES tbl_categorias(id_categoria);

--   productos a marcas-----
ALTER TABLE tbl_productos 
ADD CONSTRAINT `categorias_de_marcas`
FOREIGN KEY (id_marca) REFERENCES tbl_marcas(id_marca);


--   colores_fotografias a catalogo_colores -----
ALTER TABLE tbl_colores_fotografias 
ADD CONSTRAINT `colores_fotografias_a_catalogo_colores`
FOREIGN KEY (id_color) REFERENCES tbl_catalogo_colores(id_color);


--   colores_fotografias a productos -----
ALTER TABLE tbl_colores_fotografias 
ADD CONSTRAINT `colores_fotografias_de_productos`
FOREIGN KEY (id_producto) REFERENCES tbl_productos(id_producto);


--   detalle_venta a venta -----
ALTER TABLE tbl_detalle_venta 
ADD CONSTRAINT `detalle_venta_de_venta`
FOREIGN KEY (id_venta) REFERENCES tbl_ventas(id_venta);

--   detalle_adquisicion a adquisicion -----
ALTER TABLE tbl_detalle_adquisicion
ADD CONSTRAINT `detalle_adquisicion_de_adquisicion`
FOREIGN KEY (id_adquisicion) REFERENCES tbl_adquisiciones(id_adquisicion);

--   detalle_venta a productos -----
ALTER TABLE tbl_detalle_venta
ADD CONSTRAINT `venta_de_producto`
FOREIGN KEY (id_producto) REFERENCES tbl_productos(id_producto);

--   detalle_adquisicion a productos -----
ALTER TABLE tbl_detalle_adquisicion
ADD CONSTRAINT `adquisicion_de_producto`
FOREIGN KEY (id_producto) REFERENCES tbl_productos(id_producto);

--   ventas a personas -----
ALTER TABLE tbl_ventas
ADD CONSTRAINT `quien_vendio_el_producto`
FOREIGN KEY (id_usuario_empleado) REFERENCES tbl_personas(id_persona);

--   ventas a personas -----
ALTER TABLE tbl_ventas
ADD CONSTRAINT `a_quien_vendio_el_producto`
FOREIGN KEY (id_persona_cliente) REFERENCES tbl_personas(id_persona);

--   adquisiciones a personas -----
ALTER TABLE tbl_adquisiciones
ADD CONSTRAINT `quien_registro_la_adquisicion_del_producto`
FOREIGN KEY (id_persona) REFERENCES tbl_personas(id_persona);

--   usuarios a personas -----
ALTER TABLE tbl_usuarios
ADD CONSTRAINT `usuario_de_persona`
FOREIGN KEY (id_persona) REFERENCES tbl_personas(id_persona);