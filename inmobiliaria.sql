

create database inmobiliaria;

use inmobiliaria;


create table usuarios(
	id tinyint primary key auto_increment not null,
    nombre varchar(200),
    correo varchar(255)
);

create table roles(
	id tinyint primary key auto_increment not null,
    nombre varchar(200)
);

CREATE TABLE usuarios_roles (
    user_id TINYINT NOT NULL,
    rol_id TINYINT NOT NULL,
    PRIMARY KEY (user_id, rol_id), 
    FOREIGN KEY (user_id) REFERENCES usuarios(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (rol_id) REFERENCES roles(id) ON DELETE CASCADE ON UPDATE CASCADE
);
				
create table proyecto(
	id tinyint primary key auto_increment not null,
    nombre varchar(250)
);


create table citas(
	id bigint primary key auto_increment not null,
	fecha date not null,
    proyecto tinyint not null,
    consulta varchar(300) not null,
    cliente tinyint not null,
    fechaAsig date null,
    agente tinyint null,
    fechaFin date null,
    estado boolean null,
    FOREIGN KEY (cliente) REFERENCES usuarios(id),
    FOREIGN KEY (agente) REFERENCES usuarios(id),
    FOREIGN KEY (proyecto) REFERENCES proyecto(id)
);


INSERT INTO usuarios (nombre, correo)
VALUES
    ('Eduardo Gonzales', 'eduardo.gonzales@example.com'),
    ('María López', 'maria.lopez@example.com'),
    ('Juan Pérez', 'juan.perez@example.com'),
    ('Carla Torres', 'carla.torres@example.com'),
    ('Luis Ramírez', 'luis.ramirez@example.com'),
    ('Sofía Martínez', 'sofia.martinez@example.com');

insert into roles(id,nombre)
	values (null,"Agente"),
    (null,"Cliente"),
    (null,"Administrador");
    
insert into usuarios_roles(user_id,rol_id)
	values (1,1),
	(2,1),
	(3,2),
    (4,2),
    (5,3),
    (6,3);
    
INSERT INTO proyecto (nombre)
VALUES
    ('Proyecto Residencial Los Pinos'),
    ('Edificio Torre Central'),
    ('Condominio Las Palmeras'),
    ('Residencial La Pradera'),
    ('Complejo Habitacional Vista Verde'),
    ('Urbanización El Refugio'),
    ('Centro Empresarial Horizonte'),
    ('Plaza Comercial Las Américas'),
    ('Proyecto Residencial San Ángel'),
    ('Edificio Corporativo Alfa');


