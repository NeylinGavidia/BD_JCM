USE BD_JCM
GO

-- 1. Registrar una institución de procedencia
INSERT INTO Institucion_Procedencia (Codigo_modular, Razon_social)
VALUES ('1234568', 'I.E. San Juan de Conchan')


--2. Consultar estudiantes según su lugar de procedencia
SELECT ID_Estudiante, Nombre, Apellido_paterno, Lugar_procedencia
FROM Estudiante
WHERE Lugar_procedencia = 'Conchán'

--3. Consultar apoderados según su lugar de procedencia
SELECT ID_Apoderado, Nombre, Apellido_paterno, Celular
FROM Apoderado
WHERE Lugar_procedencia = 'Conchan'

-- 4. Registrar un área académica
INSERT INTO Area (ID_Area, Nombre, N_horas)
VALUES ('AR012', 'Educación Física', 3)

-- 5. Consultar documentos pendientes
SELECT ID_Documento, Razon_social, Motivo, Estado
FROM Documento
WHERE Estado = 'Pendiente'

--6. Consultar estudiantes con sus instituciones de procedencia
SELECT E.ID_Estudiante, E.Nombre, E.Apellido_paterno,
I.Codigo_modular, I.Razon_social
FROM Estudiante AS E
INNER JOIN Institucion_Procedencia AS I
ON E.CM_IE = I.Codigo_modular

-- 7. Actualizar el celular del apoderado
UPDATE Apoderado
SET Celular = '987654321'
WHERE ID_Apoderado = 'P0030'

SELECT * FROM Apoderado

--8. Consultar matrículas del año lectivo 2026
SELECT ID_Matricula, Fecha, Anio_lectivo, Estado
FROM Matricula
WHERE Anio_lectivo = 2026

-- 9. Consultar matrículas con los datos de los estudiantes
SELECT M.ID_Matricula, E.Nombre, E.Apellido_paterno,
M.Anio_lectivo, M.Estado
FROM Matricula AS M
INNER JOIN Estudiante AS E
ON M.IDEstu = E.ID_Estudiante

--10. Eliminar una observación académica específica
DELETE FROM Observacion_Academica
WHERE Tipo = 'Conducta'

SELECT * FROM Observacion_Academica

--11. Consultar documentos recibidos por persona natural
SELECT ID_Documento, Razon_social, Fecha_recepcion, Motivo
FROM Documento
WHERE Tipo_remitente = 'Persona natural'


--12. Consultar los tipos de documentos registrados
SELECT ID_TipoDoc, Nombre
FROM Tipo_documento

-- 13. Registrar una observación académica
INSERT INTO Observacion_Academica (Tipo, Descripcion)
VALUES ('Seguimiento', 'Se realizó seguimiento al estudiante')

SELECT * FROM Observacion_Academica


-- 14. Modificar la descripción de la observación
UPDATE Observacion_Academica
SET Descripcion = 'Se realizó seguimiento académico y personal'
WHERE Tipo = 'Seguimiento'

SELECT * FROM Observacion_Academica

-- 15. Consultar todas las secciones y sus aulas
SELECT S.ID_Seccion, S.Grado, S.Seccion,
A.ID_Aula, A.Tipo, A.Aforo
FROM Seccion AS S
LEFT JOIN Aula AS A
ON S.IDAula = A.ID_Aula

--16. Consultar aulas con capacidad para 30 estudiantes
SELECT ID_Aula, Piso, Tipo, Aforo
FROM Aula
WHERE Aforo = 30

-- 17. Actualizar el tipo de una observación académica
UPDATE Observacion_Academica
SET Tipo = 'Seguimiento estudiantil'
WHERE ID_OBSERVACION = 1

SELECT * FROM Observacion_Academica


--18. Consultar los requisitos obligatorios
SELECT R.ID_Requisito, R.Nombre, DR.Obligatoriedad
FROM Requisito AS R
INNER JOIN Detalle_Requisito AS DR
ON R.ID_Requisito = DR.IDReq
WHERE DR.Obligatoriedad = 'Obligatorio'


-- 19. Eliminar la observación de prueba
DELETE FROM Observacion_Academica
WHERE Tipo = 'Seguimiento'

SELECT * FROM Observacion_Academica


-- 20. Eliminar la relación de estudiante y apoderado de prueba
DELETE FROM Estudiante_Apoderado
WHERE IDEst = 'E0030' AND IDApo = 'P0030'

SELECT * FROM Estudiante_Apoderado