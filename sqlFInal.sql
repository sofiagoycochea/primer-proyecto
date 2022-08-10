-- EJERECICIO 1 

CREATE DATABASE peluqueriaCanina;

USE peluqueriaCanina;

CREATE TABLE Perro(
    ID_perro INT NOT NULL,
    Nombre VARCHAR(20) NOT NULL,
    Fecha_nacimiento DATE,
    Sexo VARCHAR(1), -- F O M 
    DNI_dueno INT NOT NULL,
    PRIMARY KEY (ID_perro),
    FOREIGN KEY (DNI_dueno) REFERENCES DUENO(DNI) 
);