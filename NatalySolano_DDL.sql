USE BD_JCM
GO

-- 1. Crear tabla TALLERES (Danza, Arte, Cómputo)
CREATE TABLE TALLERES
(
ID_Taller int identity primary key not null,
Nombre varchar(30) not null,
Cupos int check (Cupos > 0 and Cupos <= 20) not null
)

-- 2. Eliminar tabla TALLERES
DROP TABLE TALLERES

-- 3. Agregar columna de Estado civil a la tabla Docente
ALTER TABLE Docente
ADD Estado_Civil varchar(30)
SELECT * FROM Docente

-- 4. Eliminar columna Estado civil de la tabla Docente
ALTER TABLE Docente
DROP COLUMN Estado_Civil
SELECT * FROM Docente

-- 5. Crear tabla Sanción
CREATE TABLE Sancion
(
ID_Sancion int identity primary key not null,
Gravedad varchar(20) check (Gravedad in ('Leve', 'Grave', 'Muy Grave')) not null,
Descripcion varchar(50) not null,
Fecha_emision date default getdate() not null
)

-- 6. Eliminar tabla Sanción
DROP TABLE Sancion

-- 7. Vista para consultar los horarios que corresponden al día Viernes
CREATE VIEW Vista_HorarioViernes AS
SELECT h.ID_Horario, h.Dia, h.Hora_inicio, h.Hora_fin, s.Grado, s.Seccion
FROM Horario h
JOIN Seccion s ON h.IDSecc = s.ID_Seccion
WHERE h.Dia = 'Viernes'
GO

SELECT * FROM Vista_HorarioViernes
GO

-- 8. Vista para ver las aulas con aforo mayor a 25 alumnos
CREATE VIEW Vista_AulasGrandes AS
SELECT ID_Aula, piso, Aforo, tipo
FROM Aula
WHERE Aforo > 25
GO

SELECT * FROM Vista_AulasGrandes
GO

-- 9. Vista para consultar los estudiantes matriculados que se encuentran con estado 'Ratificado'
CREATE VIEW Vista_EstudiantesRatificados AS
SELECT e.ID_Estudiante, e.Nombre, e.Apellido_paterno, e.Apellido_materno, m.Anio_lectivo, m.Estado
FROM Estudiante e
JOIN Matricula m ON e.ID_Estudiante = m.IDEstu
WHERE m.Estado = 'Ratificado'
GO

SELECT * FROM Vista_EstudiantesRatificados
GO

-- 10. Vista para consultar los docentes que son de sexo Femenino ('F')
CREATE VIEW Vista_DocentesMujeres AS
SELECT ID_Docente, Nombre, Apellido_paterno, Tipo, Sexo
FROM Docente
WHERE Sexo = 'F'
GO

SELECT * FROM Vista_DocentesMujeres
GO

-- 11. Borrar las vistas creadas
DROP VIEW Vista_HorarioViernes
DROP VIEW Vista_AulasGrandes
DROP VIEW Vista_EstudiantesRatificados
DROP VIEW Vista_DocentesMujeres

-- 12. Agregar columna de correo institucional a la tabla Docente
ALTER TABLE Docente 
ADD CorreoInstitucional varchar(30) NULL
SELECT * FROM Docente

-- 13.Eliminar la columna Correo institucional
ALTER TABLE Docente
DROP COLUMN CorreoInstitucional
SELECT * FROM Docente

-- 14. Crear la tabla ControlPermiso (permisos y tardanzas)
CREATE TABLE ControlPermiso
(
ID_Permiso int identity primary key not null,
Motivo varchar(50) not null,
Tipo_salida varchar(20) check (Tipo_salida in ('Tardanza', 'Permiso médico', 'Emergencia')) not null,
Hora_salida time not null
)

-- 15. Insertar registros en la tabla ControlPermiso
INSERT INTO ControlPermiso (Motivo, Tipo_salida, Hora_salida) 
     VALUES ('Cita médica en hospital', 'Permiso médico', '08:30:00'),
            ('Tránsito lento en la ruta', 'Tardanza', '08:15:00'),
            ('Familiar descompensado', 'Emergencia', '10:00:00')

SELECT * FROM ControlPermiso

-- 16. Consultar los permisos registrados que sean específicamente del tipo 'Tardanza'
SELECT * FROM ControlPermiso 
WHERE Tipo_salida = 'Tardanza'

-- 17. Consultar los permisos registrados que sean específicamente del tipo 'Emergencia'
SELECT * FROM ControlPermiso 
WHERE Tipo_salida = 'Emergencia'

-- 18. Extender el tamaño de la columna Motivo
ALTER TABLE ControlPermiso 
ALTER COLUMN Motivo varchar(100) not null

-- 19. Vaciar la tabla (TRUNCATE) conservando su estructura
TRUNCATE TABLE ControlPermiso

SELECT * FROM ControlPermiso

-- 20. Eliminar la tabla por completo
DROP TABLE ControlPermiso