-- 1 Y 2 
CREATE DATABASE peluqueria;
	
USE peluqueria;

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
    Sexo VARCHAR(1), 
    DNI_dueno INT,
    PRIMARY KEY (ID_perro),
    FOREIGN KEY (DNI_dueno) REFERENCES Dueno(DNI) 
);

INSERT INTO Dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (25551184, 'Naty', 'Tello', 3308, 'Colon 10');
INSERT INTO Perro(Nombre, Fecha_nacimiento, Sexo, DNI_dueno) VALUES ('Black', 2020/04/11,'M', 25551184);

-- 4

UPDATE Perro
SET Fecha_nacimiento=2021/05/11
WHERE ID_perro=1; 