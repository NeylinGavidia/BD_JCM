USE BD_JCM
GO

--1.Crear tabla Bimestre (periodos del año escolar)--
CREATE TABLE Bimestre(
ID_Bimestre int identity primary key not null,
Nombre varchar(20) not null,
Anio int check (Anio >= 2020) not null,
Fecha_inicio date not null,
Fecha_fin date not null,
Check (Fecha_fin > Fecha_inicio)
)

--2.Eliminar tabla Bimestre (periodos del año escolar)--
DROP TABLE Bimestre

--3.Agregar columna de correo al estudiante
ALTER TABLE Estudiante 
ADD Correo varchar(60) NULL
SELECT *FROM Estudiante

--4.Eliminar columna de correo creada--
ALTER TABLE Estudiante 
DROP COLUMN Correo
SELECT *FROM Estudiante

--5.Ampliar el nombre del área (para poder usar "Desarrollo Personal, Ciudadanía y Cívica" completo)
ALTER TABLE Area 
ALTER COLUMN Nombre varchar(50) not null

--6.Evitar aforos en cero o negativos--
ALTER TABLE Aula 
ADD CONSTRAINT CK_Aula_Aforo_minimo check (Aforo > 0)

--7.Agregar fecha de ingreso al docente--
ALTER TABLE Docente 
ADD Fecha_ingreso date NULL
SELECT * FROM Docente

--8.Eliminar columna de fecha de ingreso creada--
ALTER TABLE Docente
DROP COLUMN Fecha_ingreso 
SELECT *FROM Docente

--9.Evitar que una sección tenga dos clases que empiecen a la misma hora el mismo día--
ALTER TABLE Horario 
ADD CONSTRAINT UN_Horario_Seccion UNIQUE (Dia, Hora_inicio, IDSecc)

--10.Evitar secciones repetidas en un mismo año--
ALTER TABLE Seccion 
ADD CONSTRAINT UN_Seccion_Grado_Anio UNIQUE (Grado, Seccion, Anio_vigente)
GO

--11.Vista de estudiantes matriculados actualmente--
CREATE VIEW Estudiantes_Matriculados AS
SELECT e.ID_Estudiante, e.Nombre, e.Apellido_paterno, e.Apellido_materno, e.Edad, s.Grado, s.Seccion, m.Estado
FROM Estudiante e
JOIN Matricula m ON m.IDEstu = e.ID_Estudiante
JOIN Seccion s ON s.ID_Seccion = m.IDSecc
WHERE m.Estado IN ('Finalizado', 'Ratificado')
GO

SELECT * FROM Estudiantes_Matriculados
GO
 
--12.Vista del horario de cada docente--
CREATE VIEW Horario_Docente AS
SELECT d.ID_Docente, d.Nombre, d.Apellido_paterno, h.Dia, h.Hora_inicio, h.Hora_fin, ar.Nombre AS Area, s.Grado, s.Seccion
FROM Horario h
JOIN Docente d ON d.ID_Docente = h.IDDoc
JOIN Area ar ON ar.ID_Area = h.IDArea
JOIN Seccion s ON s.ID_Seccion = h.IDSecc
GO

SELECT * FROM Horario_Docente WHERE Dia = 'Lunes'
GO

--13.Borrar las vistas--
DROP VIEW Horario_Docente
DROP VIEW Estudiantes_Matriculados

--14.Crear tabla Turno (tabla pequeña con llave primaria y un CHECK)--
CREATE TABLE Turno(
ID_Turno varchar(3) primary key not null,
Nombre varchar(15) not null,
Hora_inicio time not null,
Hora_fin time not null,
Check (Hora_fin > Hora_inicio)
)

--15.Agregar una columna a Turno--
ALTER TABLE Turno
ADD Descripcion varchar(50) NULL
SELECT * FROM Turno
 
--16.Ampliar el tamaño de la columna Descripcion--
ALTER TABLE Turno
ALTER COLUMN Descripcion varchar(100) NULL
 
--17.Eliminar la columna Descripcion y tabla--
ALTER TABLE Turno
DROP COLUMN Descripcion
SELECT * FROM Turno

DROP TABLE Turno

--18. Crear tabla de Calificacion--
CREATE TABLE Calificacion(
ID_Calificacion int identity primary key not null,
Nota decimal(4,2) check (Nota between 0 and 20) not null,
Fecha_registro date default getdate() not null,
IDMat varchar(5) not null,
IDArea varchar(5) not null,
Foreign key (IDMat) references Matricula(ID_Matricula),
Foreign key (IDArea) references Area(ID_Area)
)

INSERT INTO Calificacion(Nota, IDMat, IDArea)
VALUES(17, 'M0001', 'A0001')
SELECT * FROM Calificacion

--19. Vaciar todos los registros de Calificacion (conserva la estructura y reinicia el identity)--
TRUNCATE TABLE Calificacion
SELECT * FROM Calificacion

--20.Eliminar tabla Calificacion--
DROP TABLE Calificacion
