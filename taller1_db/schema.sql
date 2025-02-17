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
    version VARCHAR(50)
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
