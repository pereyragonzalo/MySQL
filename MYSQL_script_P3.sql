create database ef_gonzalo_pereyra;
use ef_gonzalo_pereyra;

create table puesto (
	id_puesto int auto_increment primary key,
    descripcion varchar(25) not null,
    estado char(1) not null
);
INSERT INTO puesto (descripcion, estado) VALUES
('Analista', 'A'),
('Programador', 'A'),
('Tester', 'A'),
('Gerente', 'I');

create table trabajador (
	id_trabajador varchar(15) primary key,
    nombre varchar(25) not null,
    apellido varchar(25) not null,
    id_puesto int not null,
    dni varchar(8) not null,
    estado_civil char(1),
    sexo char(1),
    estado char(1),
    foreign key (id_puesto) references puesto(id_puesto)
    );
    INSERT INTO trabajador (id_trabajador, nombre, apellido, id_puesto, dni, estado_civil, sexo, estado) VALUES
    ('I001', 'Gonzalo', 'Pereyra', 1, '12345678', 'S', 'M', 'I'),
    ('I002', 'Juan', 'Perez', 2, '12349999', 'C', 'M', 'A'),
    ('I003', 'Julieta', 'Lopez', 3, '12312312', 'D', 'F', 'A'),
    ('I004', 'Julio', 'Paz', 4, '99999999', 'V', 'M', 'A');
    
    ALTER TABLE trabajador DROP FOREIGN KEY trabajador_ibfk_1;
	ALTER TABLE trabajador 
	ADD CONSTRAINT fk_trabajador_puesto
	FOREIGN KEY (id_puesto) REFERENCES puesto(id_puesto)
	ON DELETE CASCADE;

CREATE TABLE descripcion_sexo (
	id INT PRIMARY KEY AUTO_INCREMENT,
	codigo CHAR(1) UNIQUE NOT NULL,
	descripcion VARCHAR(20) NOT NULL
);
INSERT INTO descripcion_sexo (codigo, descripcion) VALUES 
('M', 'Masculino'),
('F', 'Femenino');

CREATE TABLE descripcion_estado_civil (
	id INT PRIMARY KEY AUTO_INCREMENT,
	codigo CHAR(1) UNIQUE NOT NULL,
	descripcion VARCHAR(20) NOT NULL
);
INSERT INTO descripcion_estado_civil (codigo, descripcion) VALUES 
('S', 'Soltero'),
('C', 'Casado'),
('D', 'Divorciado'),
('V', 'Viudo');

CREATE TABLE descripcion_estado (
    id INT PRIMARY KEY AUTO_INCREMENT,
    codigo CHAR(1) UNIQUE NOT NULL,
    descripcion VARCHAR(20) NOT NULL
);
INSERT INTO descripcion_estado (codigo, descripcion) VALUES 
('A', 'Activo'),
('I', 'Inactivo');
