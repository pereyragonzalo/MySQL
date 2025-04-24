create database t2_jose_quispe;
use t2_jose_quispe;

create table roles (
	id_rol int auto_increment primary key,
    descripcion varchar(25) not null,
    estado char(1) not null
);

INSERT INTO roles (descripcion, estado) VALUES
('Administrador', 'A'),
('Gerente', 'A'),
('Supervisor', 'A'),
('Analista', 'I'),
('Empleado', 'A');

create table departamento (
	id_departamento int auto_increment primary key,
    descripcion varchar(25) not null,
    estado char(1) not null
);

INSERT INTO departamento (descripcion, estado) VALUES
('Recursos Humanos', 'A'),
('Finanzas', 'A'),
('Marketing', 'A'),
('Tecnología', 'A'),
('Ventas', 'A'),
('Operaciones', 'I');

create table usuario (
	id_usuario int auto_increment primary key,
    nombre varchar(25) not null,
    apellido varchar(25) not null,
    id_rol int not null,
    id_departamento int not null,
    clave varchar(25),
    estado char(1),
    foreign key (id_rol) references roles(id_rol),
    foreign key (id_departamento) references departamento(id_departamento)
);

INSERT INTO usuario (nombre, apellido, id_rol, id_departamento, clave, estado) VALUES
('Carlos', 'Pérez', 1, 1, 'clave123', 'A'),
('Ana', 'Gómez', 2, 2, 'segura456', 'A'),
('Luis', 'Rodríguez', 3, 3, 'pass789', 'A'),
('María', 'Fernández', 4, 4, 'admin321', 'I'),
('Pedro', 'Sánchez', 5, 5, 'qwerty123', 'A'),
('Elena', 'Torres', 2, 6, 'password456', 'A'),
('Javier', 'Ramírez', 1, 3, 'secure789', 'A');