Ejercicios 1 y 2

CREATE DATABASE peluqueriaCanina;
	
USE peluqueriaCanina;

CREATE TABLE Dueno(
    DNI INT NOT NULL,
    Nombre VARCHAR(20) NOT NULL,
    Apellido VARCHAR(20) NOT NULL,
    Telefono INT,
    Direccion VARCHAR(80),
    PRIMARY KEY (DNI)
);

CREATE TABLE Perro(
    ID_perro INT NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(20) NOT NULL,
    Fecha_nacimiento DATE,
    Sexo VARCHAR(1), -- masculino (m) o femenino (f)
    DNI_dueno INT,
    PRIMARY KEY (ID_perro),
    FOREIGN KEY (DNI_dueno) REFERENCES Dueno(DNI) 
);

CREATE TABLE Historial(
    ID_historial INT NOT NULL AUTO_INCREMENT,
    Fecha DATE  NOT NULL,
    Perro INT NOT NULL,
    Descripcion VARCHAR(50),
    Monto INT NOT NULL,
    PRIMARY KEY (ID_historial),
    FOREIGN KEY (Perro) REFERENCES Perro(ID_perro)
);

INSERT INTO Dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (35916098, 'Fernando', 'Rosales', 4792997, 'Balcarce 876');
INSERT INTO Perro(Nombre, Fecha_nacimiento, Sexo, DNI_dueno) VALUES ('Titi', 2017/01/07,'M', 35916098);

-- EJERCICIO 10

TRUNCATE TABLE Historial;
