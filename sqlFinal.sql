-- EJERECICIO 1 && 2

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

CREATE TABLE Historial(
    ID_historial INT NOT NULL AUTO_INCREMENT,
    Fecha DATE  NOT NULL,
    Perro INT NOT NULL,
    Descripcion VARCHAR(50),
    Monto INT NOT NULL,
    PRIMARY KEY (ID_historial),
    FOREIGN KEY (Perro) REFERENCES Perro(ID_perro)
);

CREATE TABLE Perro(
    ID_perro INT NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(20) NOT NULL,
    Fecha_nacimiento DATE,
    Sexo VARCHAR(1), -- F O M 
    DNI_dueno INT,
    PRIMARY KEY (ID_perro),
    FOREIGN KEY (DNI_dueno) REFERENCES Dueno(DNI) 
);

INSERT INTO Dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (45081784, 'Luciano', 'Rosales', 5308, 'Sanchez Ariño 3547');
INSERT INTO Perro(Nombre, Fecha_nacimiento, Sexo, DNI_dueno) VALUES ('Morena', 2010/01/10,'F', 45081784);

-- EJERCICIO 9

UPDATE Dueno 
SET Direccion='Libertad 123'
WHERE DNI= 45081784;

select * from Dueno;
