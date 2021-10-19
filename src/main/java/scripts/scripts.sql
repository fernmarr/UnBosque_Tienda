use tiendagenerica;


CREATE TABLE tiendagenerica.usuarios (
    cedula_usuario BIGINT PRIMARY KEY,
    email_usuario VARCHAR(255) NOT NULL,
    nombre_usuario VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    usuario VARCHAR(255) NOT NULL
);

INSERT INTO tiendagenerica.usuarios VALUES(001,'admin@correo.com','Administrador','qwerty','admin');
INSERT INTO tiendagenerica.usuarios VALUES(002,'user1@correo.com','Usuario Uno','12345','user1');
INSERT INTO tiendagenerica.usuarios VALUES(003,'user2@correo.com','Usuario Dos','12345','user2');
INSERT INTO tiendagenerica.usuarios VALUES(004,'user4@correo.com','Usuario 4','12345','user4');
INSERT INTO tiendagenerica.usuarios VALUES(005,'user5@correo.com','Usuario 5','12345','user5');

CREATE UNIQUE INDEX usuario_unico 
ON tiendagenerica.usuarios(usuario);


SELECT * FROM tiendagenerica.usuarios where usuario = 'admin';

/*update tiendagenerica.usuarios
set password ="123"*/

CREATE TABLE tiendagenerica.clientes (
    cedula_cliente BIGINT PRIMARY KEY,
    nombre_cliente VARCHAR(255) NOT NULL,
    direccion_cliente VARCHAR(255) NOT NULL,
    telefono_cliente VARCHAR(255) NOT NULL,
    email_cliente VARCHAR(255) NOT NULL
);

INSERT INTO tiendagenerica.clientes VALUES(1,'cliente1','Cl 1 # 1 - 1','1234567890','cliente1@correo.com');
INSERT INTO tiendagenerica.clientes VALUES(2,'cliente2','Cl 2 # 2 - 2','3242343242','cliente2@correo.com');
INSERT INTO tiendagenerica.clientes VALUES(3,'cliente3','Cl 3 # 3 - 3','6544445','cliente3@correo.com');
INSERT INTO tiendagenerica.clientes VALUES(4,'cliente4','Cl 4 # 4 - 4','67867867','cliente4@correo.com');


CREATE UNIQUE INDEX cliente_unico 
ON tiendagenerica.clientes(cedula_cliente);


CREATE TABLE tiendagenerica.proveedores (
 nitproveedor BIGINT PRIMARY KEY,
    ciudad_proveedor VARCHAR(255) NOT NULL,
    direccion_proveedor VARCHAR(255) NOT NULL,
    nombre_proveedor VARCHAR(255) NOT NULL,
    telefono_proveedor VARCHAR(255) NOT NULL
);


CREATE TABLE tiendagenerica.productos (
 codigo_producto BIGINT PRIMARY KEY,
    ivacompra DOUBLE NOT NULL,
    nitproveedor BIGINT NOT NULL,
    nombre_producto VARCHAR(255) NOT NULL,
    precio_compra DOUBLE NOT NULL,
    precio_venta DOUBLE NOT NULL,
    FOREIGN KEY (nitproveedor) REFERENCES proveedores(nitproveedor)
);


INSERT INTO tiendagenerica.proveedores VALUES(001,'Bogota','KR 7 CLL 41','Colanta','+57300000001');
INSERT INTO tiendagenerica.proveedores VALUES(002,'Cota','KR 7 CLL 42','EcoVerduras','+57300000002');
INSERT INTO tiendagenerica.proveedores VALUES(003,'Chía','KR 7 CLL 43','Fresas del Campo','+57300000003');
INSERT INTO tiendagenerica.proveedores VALUES(004,'Tunja','KR 7 CLL 44','Alpina','+57300000004');
INSERT INTO tiendagenerica.proveedores VALUES(005,'Duitama','KR 7 CLL 45','Papa Campesina','+57300000005');


INSERT INTO tiendagenerica.productos VALUES(201,0.19,1,'Leche Entera',2000.0,3000.0);

create table tiendagenerica.ventas(
codigo_venta bigint primary key auto_increment,
cedula_cliente bigint,
cedula_usuario bigint,
ivaventa double,
total_venta double,
valor_venta double,
FOREIGN KEY (cedula_cliente) REFERENCES tiendagenerica.clientes(cedula_cliente)
);

ALTER TABLE tiendagenerica.ventas
ADD FOREIGN KEY (cedula_usuario) REFERENCES tiendagenerica.usuarios(cedula_usuario);

create table tiendagenerica.detalle_ventas(
codigo_detalle_venta bigint primary key auto_increment,
cantidad_producto int,
codigo_producto bigint,
codigo_venta bigint,
valor_total double,
valor_venta double,
valoriva double,
FOREIGN KEY (codigo_producto) REFERENCES tiendagenerica.productos(codigo_producto)
);

ALTER TABLE tiendagenerica.detalle_ventas
ADD FOREIGN KEY (codigo_venta) REFERENCES tiendagenerica.ventas(codigo_venta);



############# revisar estado de la bd 
select id, user, host, db, command, time, state, info, progress
from information_schema.processlist;

####### obteniendo el siguiente consecutivo en ventas
SELECT `AUTO_INCREMENT`
FROM  INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'tiendalostiburones'
AND   TABLE_NAME   = 'ventas';



