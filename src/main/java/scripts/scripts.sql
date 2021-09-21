use tiendagenerica;


//TABLA USUARIOS
CREATE TABLE tiendagenerica.usuarios (
    cedula_usuario BIGINT PRIMARY KEY,
    email_usuario VARCHAR(255) NOT NULL,
    nombre_usuario VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    usuario VARCHAR(255) NOT NULL
);

INSERT INTO tiendagenerica.usuarios VALUES(001,'admin@correo.com','Administrador','123','admin');
INSERT INTO tiendagenerica.usuarios VALUES(002,'user1@correo.com','Usuario Uno','123','user1');
INSERT INTO tiendagenerica.usuarios VALUES(003,'user2@correo.com','Usuario Dos','123','user2');

CREATE UNIQUE INDEX usuario_unico 
ON tiendagenerica.usuarios(usuario);


//TABLA CLIENTES
CREATE TABLE tiendagenerica.clientes (
    cedula_cliente BIGINT PRIMARY KEY,
    nombre_cliente VARCHAR(255) NOT NULL,
    direccion_cliente VARCHAR(255) NOT NULL,
    telefono_cliente VARCHAR(255) NOT NULL,
    email_cliente VARCHAR(255) NOT NULL
);

INSERT INTO tiendagenerica.clientes VALUES(1,'cliente1','Cl 1 # 1 - 1','1234567890','cliente1@correo.com');

CREATE UNIQUE INDEX cliente_unico 
ON tiendagenerica.clientes(cedula_cliente);