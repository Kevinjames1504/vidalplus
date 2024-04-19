/*
Francelys Margarita Vidal Henríquez 
20-MIIN-1-027

*/

CREATE TABLE Pacientes (
    idPaciente INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100)  NOT NULL,
    FechaNacimiento DATE  NOT NULL,
    Sexo CHAR(1) NOT NULL
);

CREATE TABLE Mediciones (
    idMedicion INT AUTO_INCREMENT PRIMARY KEY,
    idPaciente INT NOT NULL,
    Fecha DATE NOT NULL,
    Peso DECIMAL(5, 2)  NOT NULL,
    Altura DECIMAL(5, 2)  NOT NULL,
    FOREIGN KEY (idPaciente) REFERENCES Pacientes(idPaciente)
);

CREATE TABLE Historiales (
    idHistorial INT AUTO_INCREMENT PRIMARY KEY,
    idPaciente INT  NOT NULL,
    Fecha DATE  NOT NULL,
    Tipo VARCHAR(50)  NOT NULL,
    Valor VARCHAR(255)  NOT NULL,
    FOREIGN KEY (idPaciente) REFERENCES Pacientes(idPaciente)
);

CREATE TABLE Resultados (
    idResultado INT AUTO_INCREMENT PRIMARY KEY,
    idHistorial INT  NOT NULL,
    ICM DECIMAL(5, 2)  NOT NULL,
    AguaCorporal DECIMAL(5, 2)  NOT NULL,
    FOREIGN KEY (idHistorial) REFERENCES Historiales(idHistorial)
);

CREATE TABLE Citas (
    idCita INT AUTO_INCREMENT PRIMARY KEY,
    idPaciente INT  NOT NULL,
    Fecha DATE  NOT NULL,
    Hora TIME  NOT NULL,
    FOREIGN KEY (idPaciente) REFERENCES Pacientes(idPaciente)
);

TRUNCATE TABLE Citas;
TRUNCATE TABLE Historiales;
TRUNCATE TABLE Mediciones;
TRUNCATE TABLE Pacientes;
TRUNCATE TABLE Resultados;


--Insertando Registros


-- Insertando registros en la tabla Pacientes
INSERT INTO Pacientes (Nombre, FechaNacimiento, Sexo) VALUES 
('Juan Pérez', '1985-07-22', 'M'),
('María López', '1990-01-15', 'F'),
('Carlos Martínez', '1975-12-30', 'M'),
('Ana García', '1988-06-04', 'F'),
('Luis Gómez', '2000-03-25', 'M'),
('Sofía Rodríguez', '1995-08-09', 'F'),
('Jorge Morales', '1983-11-11', 'M'),
('Elena Nieto', '1992-02-02', 'F'),
('Pedro Vargas', '1970-05-20', 'M'),
('Lucía Castro', '2003-09-17', 'F'),
('Tomás Ortega', '1987-03-15', 'M'),
('Carmen Ruiz', '1998-12-28', 'F'),
('Fernando Sanz', '1965-04-08', 'M'),
('Isabel Méndez', '2001-10-21', 'F'),
('Miguel Jiménez', '1980-01-18', 'M');

-- Insertando registros en la tabla Mediciones
INSERT INTO Mediciones (idPaciente, Fecha, Peso, Altura) VALUES 
(1, '2023-04-10', 78.5, 172.0),
(2, '2023-04-11', 65.0, 165.0),
(3, '2023-04-12', 90.0, 180.0),
(4, '2023-04-13', 55.0, 160.0),
(5, '2023-04-14', 85.0, 175.0),
(6, '2023-04-15', 68.0, 168.0),
(7, '2023-04-16', 74.0, 170.0),
(8, '2023-04-17', 60.0, 158.0),
(9, '2023-04-18', 82.0, 177.0),
(10, '2023-04-19', 56.0, 162.0),
(11, '2023-04-20', 77.0, 169.0),
(12, '2023-04-21', 63.0, 164.0),
(13, '2023-04-22', 89.0, 185.0),
(14, '2023-04-23', 54.0, 159.0),
(15, '2023-04-24', 80.0, 173.0);

-- Insertando registros en la tabla Historiales
INSERT INTO Historiales (idPaciente, Fecha, Tipo, Valor) VALUES 
(1, '2023-04-10', 'Visita médica', 'Chequeo anual'),
(2, '2023-04-11', 'Examen de laboratorio', 'Análisis de sangre completo'),
(3, '2023-04-12', 'Vacunación', 'Vacuna antigripal'),
(4, '2023-04-13', 'Consulta especialista', 'Cardiología'),
(5, '2023-04-14', 'Procedimiento', 'Colonoscopía'),
(6, '2023-04-15', 'Visita médica', 'Revisión semestral'),
(7, '2023-04-16', 'Examen de laboratorio', 'Perfil lipídico'),
(8, '2023-04-17', 'Vacunación', 'Vacuna tétanos'),
(9, '2023-04-18', 'Consulta especialista', 'Dermatología'),
(10, '2023-04-19', 'Procedimiento', 'Endoscopía'),
(11, '2023-04-20', 'Visita médica', 'Control de hipertensión'),
(12, '2023-04-21', 'Examen de laboratorio', 'Niveles de glucosa'),
(13, '2023-04-22', 'Vacunación', 'Vacuna hepatitis B'),
(14, '2023-04-23', 'Consulta especialista', 'Neurología'),
(15, '2023-04-24', 'Procedimiento', 'MRI cerebral');

-- Insertando registros en la tabla Resultados
INSERT INTO Resultados (idHistorial, ICM, AguaCorporal) VALUES 
(1, 26.5, 42.0),
(2, 23.9, 38.5),
(3, 27.8, 44.2),
(4, 21.5, 36.0),
(5, 27.7, 43.8),
(6, 24.1, 39.0),
(7, 25.6, 40.5),
(8, 24.0, 38.7),
(9, 26.2, 41.3),
(10, 22.3, 36.9),
(11, 25.8, 41.0),
(12, 23.5, 37.8),
(13, 26.0, 42.5),
(14, 21.3, 35.4),
(15, 26.4, 42.1);

-- Insertando registros en la tabla Citas
INSERT INTO Citas (idPaciente, Fecha, Hora) VALUES 
(1, '2023-04-25', '09:00'),
(2, '2023-04-26', '09:30'),
(3, '2023-04-27', '10:00'),
(4, '2023-04-28', '10:30'),
(5, '2023-04-29', '11:00'),
(6, '2023-04-30', '11:30'),
(7, '2023-05-01', '12:00'),
(8, '2023-05-02', '12:30'),
(9, '2023-05-03', '13:00'),
(10, '2023-05-04', '13:30'),
(11, '2023-05-05', '14:00'),
(12, '2023-05-06', '14:30'),
(13, '2023-05-07', '15:00'),
(14, '2023-05-08', '15:30'),
(15, '2023-05-09', '16:00');


-- Consulta de resultados

-- Histrial por paciente
SELECT 
    P.idPaciente,
    P.Nombre,
    H.Fecha AS FechaHistorial,
    H.Tipo,
    H.Valor
FROM 
    Pacientes AS P
JOIN 
    Historiales AS H ON P.idPaciente = H.idPaciente
ORDER BY 
    P.idPaciente, H.Fecha;

-- Citas por paciente
SELECT 
    P.idPaciente AS IdPaciente,
    P.Nombre,
    P.FechaNacimiento,
    P.Sexo,
    COUNT(C.idCita) AS NumeroDeCitas
FROM 
    Pacientes AS P
JOIN 
    Citas AS C ON P.idPaciente = C.idPaciente
WHERE 
    C.Fecha <= NOW() 
GROUP BY 
    P.idPaciente, P.Nombre
ORDER BY 
    P.Nombre;

-- Promedio ICM por sexo

SELECT 
    Pa.Sexo,
    AVG(Re.ICM) AS PromedioICM
FROM 
    Pacientes AS Pa
JOIN 
    Historiales AS H ON Pa.idPaciente = H.idPaciente
JOIN 
    Resultados AS Re ON H.idHistorial = Re.idHistorial
GROUP BY 
    Pa.Sexo;