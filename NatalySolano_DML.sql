USE BD_JCM
GO

-- 1. Registrar un nuevo docente de especialidad / tutor
INSERT INTO Docente (ID_Docente, Nombre, Apellido_paterno, Apellido_materno, DNI, Sexo, Celular, Tipo)
             VALUES ('D0014', 'Eythan Nicolas', 'Vargas', 'Ríos', '45891234', 'M', '978123456', 'Tutor')

-- 2. Registrar una nueva área académica con decimales en horas
INSERT INTO Area (ID_Area, Nombre, N_horas)
          VALUES ('A0011', 'Robótica', 3.0)

-- 3. Registrar un nuevo requisito
INSERT INTO Requisito (ID_Requisito, Nombre)
               VALUES ('RQ23', 'Constancia de conducta')

-- 4. DELETE: Borrar un registro de docente
DELETE FROM Docente
WHERE ID_Docente = 'D0014'
SELECT * FROM Docente

-- 5. DELETE: Borrar un registro de área
DELETE FROM Area
WHERE ID_Area = 'A0011'
SELECT * FROM Area

-- 6. DELETE: Borrar un registro de requisito
DELETE FROM Requisito
WHERE ID_Requisito = 'RQ23'
SELECT * FROM Requisito

-- 7. UPDATE: Actualizar el historial médico de una estudiante
UPDATE Estudiante
SET Historial_enfermedades = 'Asma'
WHERE ID_Estudiante = 'E0001'
SELECT * FROM Estudiante

-- 8. UPDATE: Actualizar el lugar de procedencia de un apoderado
UPDATE Apoderado
SET Lugar_procedencia = 'Querocoto'
WHERE ID_Apoderado = 'P0001'
SELECT * FROM Apoderado

-- 9. UPDATE: Actualizar el tipo de un docente
UPDATE Docente
SET Tipo = 'Docente'
WHERE ID_Docente = 'D0003'
SELECT * FROM Docente

-- 10. UPDATE: Actualizar el celular de un docente
UPDATE Docente
SET Celular = '944369437'
WHERE ID_Docente = 'D0012'
SELECT * FROM Docente

-- 11. UPDATE: Actualizar el número de una dirección
UPDATE Direccion
SET Numero = 327
WHERE ID_Direccion = 'DR018'
SELECT * FROM Direccion

-- 12. LIKE: Filtrar estudiantes cuyos apellidos o nombres empiecen por 'C' o 'S'
SELECT ID_Estudiante, Nombre, Apellido_paterno, Apellido_materno, DNI, Celular
FROM Estudiante
WHERE Apellido_paterno LIKE 'S%' OR Apellido_paterno LIKE 'C%'
ORDER BY Apellido_paterno ASC

-- 13. BETWEEN: Consultar asistencias tomadas dentro de un rango de horas de ingreso
SELECT ID_Asistencia, Estado, Fecha, Hora_ingreso, IDDoc
FROM Asistencia
WHERE Hora_ingreso BETWEEN '07:30:00' AND '08:00:00'

-- 14. UPDATE: Cambiar el estado de un documento a Rechazado
UPDATE Documento
SET Estado = 'Rechazado', Observacion = 'Faltan sellos oficiales'
WHERE ID_Documento = 'DC005'
SELECT * FROM Documento

-- 15. Ver estudiantes de un lugar específico
SELECT ID_Estudiante, Nombre, Apellido_paterno, Lugar_procedencia
FROM Estudiante
WHERE Lugar_procedencia = 'Conchán'

-- 16. INNER JOIN: Ver los estudiantes con el nombre de su apoderado y el parentesco
SELECT E.ID_Estudiante, E.Nombre, A.Nombre, EA.Parentesco
FROM Estudiante AS E
INNER JOIN Estudiante_Apoderado AS EA
ON E.ID_Estudiante = EA.IDEst
INNER JOIN Apoderado AS A
ON EA.IDApo = A.ID_Apoderado

-- 17. LEFT JOIN: Ver todas las asistencias registradas y sus justificantes si los tuvieran
SELECT A.ID_Asistencia, A.Fecha, A.Estado, J.Tipo, J.Descripcion
FROM Asistencia AS A
LEFT JOIN Justificante AS J
ON A.ID_Asistencia = J.IDAsis

-- 18. RIGHT JOIN con ORDER BY: Ver los horarios en que se dictan ordenados de forma ascendente por área
SELECT H.ID_Horario, H.Dia, H.Hora_inicio, AR.Nombre
FROM Horario AS H
RIGHT JOIN Area AS AR
ON H.IDArea = AR.ID_Area
ORDER BY AR.Nombre ASC

-- 19. INNER JOIN con LIKE: Ver los estudiantes con el nombre de su apoderado cuyo apellido empiece con 'C' o 'S'
SELECT E.ID_Estudiante, E.Nombre, E.Apellido_paterno, A.Nombre, EA.Parentesco
FROM Estudiante AS E
INNER JOIN Estudiante_Apoderado AS EA
ON E.ID_Estudiante = EA.IDEst
INNER JOIN Apoderado AS A 
ON EA.IDApo = A.ID_Apoderado
WHERE E.Apellido_paterno LIKE 'C%' OR E.Apellido_paterno LIKE 'S%'

-- 20. INNER JOIN con ORDER BY: Ver el horario de clases vinculando docente y área, ordenado por hora de inicio
SELECT H.ID_Horario, H.Dia, H.Hora_inicio, D.Nombre, D.Apellido_paterno, AR.Nombre
FROM Horario AS H
INNER JOIN Docente AS D
ON H.IDDoc = D.ID_Docente
INNER JOIN Area AS AR
ON H.IDArea = AR.ID_Area
ORDER BY H.Hora_inicio ASC