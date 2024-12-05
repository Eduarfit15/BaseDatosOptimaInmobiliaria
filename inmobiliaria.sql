

create database inmobiliaria;

use inmobiliaria;


create table usuarios(
	id BIGINT primary key auto_increment not null,
    nombre varchar(200),
    correo varchar(255),
    password varchar(255),
    usuario varchar(255)
);

create table roles(
	id BIGINT primary key auto_increment not null,
    nombre varchar(200)
);

CREATE TABLE usuarios_roles (
    user_id BIGINT NOT NULL,
    rol_id BIGINT NOT NULL,
    PRIMARY KEY (user_id, rol_id), 
    FOREIGN KEY (user_id) REFERENCES usuarios(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (rol_id) REFERENCES roles(id) ON DELETE CASCADE ON UPDATE CASCADE
);
				
create table proyecto(
	id BIGINT primary key auto_increment not null,
    nombre varchar(250)
);


create table citas(
	id BIGINT primary key auto_increment not null,
	fecha date not null,
    proyecto BIGINT not null,
    consulta varchar(300) not null,
    cliente BIGINT not null,
    fechaAsig date null,
    agente BIGINT null,
    fechaFin date null,
    estado boolean null,
    FOREIGN KEY (cliente) REFERENCES usuarios(id),
    FOREIGN KEY (agente) REFERENCES usuarios(id),
    FOREIGN KEY (proyecto) REFERENCES proyecto(id)
);


insert into roles(id,nombre)
	values (null,"ROLE_AGENTE"),
    (null,"ROLE_CLIENTE"),
    (null,"ROLE_ADMINISTRADOR");
    
 
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


