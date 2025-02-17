DROP TABLE programa;
DROP TABLE almacenes;
DROP TABLE progAlma;
DROP TABLE fabricante;
DROP TABLE progFab;
DROP TABLE cliente;
DROP TABLE registro;

CREATE TABLE programa (
    codigo INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre VARCHAR(50),
    versión VARCHAR(50)
    );
CREATE TABLE almacenes (
    cif INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre VARCHAR(50),
    ciudad VARCHAR(50)
 	);
CREATE TABLE progAlma (
    cantidad INT,
    codigo INT,
    cif INT,
    PRIMARY KEY (codigo, cif)
    );
CREATE TABLE fabricante (
    id_fab INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre VARCHAR(50),
    pais VARCHAR(30)
    );
CREATE TABLE progFab (
    id_fab INT,
    codigo INT,
    PRIMARY KEY (id_fab, codigo)
    );
CREATE TABLE cliente (
    dni INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre VARCHAR(50),
    edad INT
    );
CREATE TABLE registro (
    medio VARCHAR(20),
    cif INT,
    dni INT,
    codigo INT,
    PRIMARY KEY (cif, dni, codigo)
    );
INSERT INTO programa VALUES 
    ('Aplication Server', '9i'),
    ('Database', '8i'),
    ('Database', '9i'),
    ('Database', '10g'),
    ('Developer', '6i'),
    ('Access', '97'),
    ('Access', '2000'),
    ('Access', 'XP'),
    ('Windows', '98'),
    ('Windows', 'XP Professional'),
    ('Windows', 'XP Home Edition'),
    ('Windows', '2003 Server'),
    ('Norton Internet Security', '2004'),
    ('Freddy Hardest', '-'),
    ('Paradox', '2'),
    ('C++ Builder', '55'),
    ('DB/2', '20'),
    ('OS/2', '10'),
    ('JBuilder', 'X'),
    ('La prisión', '10');
INSERT INTO fabricante VALUES
    ('Oracle', 'Estados Unidos'),
    ('Microsoft', 'Estados Unidos'),
    ('IBM', 'Estados Unidos'),
    ('Dinamic', 'España'),
    ('Borland', 'Estados Unidos'),
    ('Symantec', 'Estados Unidos');
INSERT INTO almacenes VALUES
    ('El Corte Inglés', 'Sevilla'),
    ('El Corte Inglés', 'Madrid'),
    ('Jump', 'Valencia'),
    ('Centro Mail', 'Sevilla'),
    ('FNAC', 'Barcelona');
INSERT INTO cliente VALUES
    ('Pepe Pérez', 45),
    ('Juan González', 45),
    ('Maria Gómez', 33),
    ('Javier Casado', 18),
    ('Nuria Sánchez', 29),
    ('Antonio Navarro', 58);
INSERT INTO progFab VALUES 
    (1,1),
    (1,2),
    (1,3),
    (1,4),
    (1,5),
    (2,6),
    (2,7),
    (2,8),
    (2,9),
    (2,10),
    (2,11),
    (2,12),
    (6,13),
    (4,14),
    (5,15),
    (5,16),
    (3,17),
    (3,18),
    (5,19),
    (4,20);
INSERT INTO progAlma VALUES
    (1,1,10),
    (1,2,11),
    (1,6,5),
    (1,7,3),
    (1,10,5),
    (1,13,7),
    (2,1,6),
    (2,2,6),
    (2,6,4),
    (2,7,7),
    (3,10,8),
    (3,13,5),
    (4,14,3),
    (4,20,6),
    (5,15,8),
    (5,16,2),
    (5,17,3),
    (5,19,6),
    (5,8,8);
INSERT INTO registro VALUES
    (1,1,1, 'Internet'),
    (1,3,4, 'Tarjeta postal'),
    (4,2,10, 'Teléfono'),
    (4,1,10, 'Tarjeta postal'),
    (5,2,12, 'Internet'),
    (2,4,15, 'Internet');