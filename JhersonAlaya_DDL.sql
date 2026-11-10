USE BD_JCM
GO

--1. Crear una tabla para registrar actividades escolares.
CREATE TABLE Actividad_Escolar
(
    ID_Actividad INT IDENTITY PRIMARY KEY NOT NULL,
    Nombre VARCHAR(40) NOT NULL,
    Fecha DATE NOT NULL,
    Responsable VARCHAR(40) NOT NULL
)

SELECT * FROM Actividad_Escolar
GO

--2. Agregar una columna de descripción a Actividad_Escolar.
ALTER TABLE Actividad_Escolar
ADD Descripcion VARCHAR(100) NULL

SELECT * FROM Actividad_Escolar
GO

--3. Ampliar el tamaño de la columna Nombre.
ALTER TABLE Actividad_Escolar
ALTER COLUMN Nombre VARCHAR(60) NOT NULL

SELECT * FROM Actividad_Escolar
GO

--4. Agregar una restricción para evitar fechas anteriores al año 2020.
ALTER TABLE Actividad_Escolar
ADD CONSTRAINT CK_Actividad_Fecha
CHECK (Fecha >= '2020-01-01')

SELECT * FROM Actividad_Escolar
GO

--5. Crear una tabla para registrar reuniones.

CREATE TABLE Reunion
(
    ID_Reunion INT IDENTITY PRIMARY KEY NOT NULL,
    Tema VARCHAR(50) NOT NULL,
    Fecha DATE NOT NULL,
    Hora TIME NOT NULL
)

SELECT * FROM Reunion
GO

--6. Agregar una columna de lugar a la tabla Reunion.

ALTER TABLE Reunion
ADD Lugar VARCHAR(50) NULL

SELECT * FROM Reunion
GO

--7. Agregar una restricción para validar las horas de reunión.

ALTER TABLE Reunion
ADD CONSTRAINT CK_Reunion_Hora
CHECK (Hora >= '07:00:00' AND Hora <= '20:00:00')

SELECT * FROM Reunion
GO

--8. Crear una vista para consultar las actividades escolares.

CREATE VIEW Vista_Actividades AS
SELECT ID_Actividad, Nombre, Fecha, Responsable
FROM Actividad_Escolar
GO

SELECT * FROM Vista_Actividades
GO

--9. Crear una vista para consultar las reuniones.

CREATE VIEW Vista_Reuniones AS
SELECT ID_Reunion, Tema, Fecha, Hora
FROM Reunion
GO

SELECT * FROM Vista_Reuniones
GO

--10. Eliminar la vista de actividades.

DROP VIEW Vista_Actividades

SELECT * FROM Actividad_Escolar
GO

--11. Eliminar la vista de reuniones.

DROP VIEW Vista_Reuniones

SELECT * FROM Reunion
GO

--12. Crear una tabla para registrar materiales educativos.

CREATE TABLE Material_Educativo
(
    ID_Material INT IDENTITY PRIMARY KEY NOT NULL,
    Nombre VARCHAR(40) NOT NULL,
    Cantidad INT CHECK (Cantidad > 0) NOT NULL,
    Estado VARCHAR(20) NOT NULL
)

SELECT * FROM Material_Educativo
GO

--13. Agregar una columna de observación a Material_Educativo.

ALTER TABLE Material_Educativo
ADD Observacion VARCHAR(100) NULL

SELECT * FROM Material_Educativo
GO

--14. Ampliar el tamaño de la columna Estado.

ALTER TABLE Material_Educativo
ALTER COLUMN Estado VARCHAR(40) NOT NULL

SELECT * FROM Material_Educativo
GO

--15. Agregar una restricción para validar el estado del material.

ALTER TABLE Material_Educativo
ADD CONSTRAINT CK_Material_Estado
CHECK (Estado IN ('Disponible', 'Prestado', 'Deteriorado'))

SELECT * FROM Material_Educativo
GO

--16. Crear una tabla para registrar actividades deportivas.

CREATE TABLE Actividad_Deportiva
(
    ID_Deporte INT IDENTITY PRIMARY KEY NOT NULL,
    Nombre VARCHAR(40) NOT NULL,
    Participantes INT CHECK (Participantes > 0) NOT NULL
)

SELECT * FROM Actividad_Deportiva
GO

--17. Agregar una columna de categoría a Actividad_Deportiva.

ALTER TABLE Actividad_Deportiva
ADD Categoria VARCHAR(30) NULL

SELECT * FROM Actividad_Deportiva
GO

--18. Eliminar la columna Observacion de Material_Educativo.

ALTER TABLE Material_Educativo
DROP COLUMN Observacion

SELECT * FROM Material_Educativo
GO

--19. Vaciar los registros de Actividad_Deportiva conservando su estructura.

TRUNCATE TABLE Actividad_Deportiva

SELECT * FROM Actividad_Deportiva
GO

--20. Eliminar la tabla Actividad_Deportiva por completo.
DROP TABLE Actividad_Deportiva
GO
