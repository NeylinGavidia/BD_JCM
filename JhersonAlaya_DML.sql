USE BD_JCM
GO

--1. Registrar una nueva actividad escolar.

INSERT INTO Actividad_Escolar
(Nombre, Fecha, Responsable, Descripcion)
VALUES
('Feria de ciencias', '2026-11-20', 'Docente de Ciencia', 'Exposición de proyectos')

SELECT * FROM Actividad_Escolar
GO

--2. Registrar otra actividad escolar.

INSERT INTO Actividad_Escolar
(Nombre, Fecha, Responsable, Descripcion)
VALUES
('Concurso de lectura', '2026-11-25', 'Docente de Comunicación', 'Participación estudiantil')

SELECT * FROM Actividad_Escolar
GO

--3. Registrar una reunión de docentes.

INSERT INTO Reunion
(Tema, Fecha, Hora, Lugar)
VALUES
('Reunión académica', '2026-11-15', '09:00:00', 'Sala de reuniones')

SELECT * FROM Reunion
GO

--4. Registrar otra reunión.

INSERT INTO Reunion
(Tema, Fecha, Hora, Lugar)
VALUES
('Entrega de informes', '2026-11-18', '10:00:00', 'Dirección')

SELECT * FROM Reunion
GO

--5. Registrar materiales educativos.

INSERT INTO Material_Educativo
(Nombre, Cantidad, Estado)
VALUES
('Cuadernos', 30, 'Disponible')

SELECT * FROM Material_Educativo
GO

--6. Registrar materiales de laboratorio.

INSERT INTO Material_Educativo
(Nombre, Cantidad, Estado)
VALUES
('Microscopios', 5, 'Disponible')

SELECT * FROM Material_Educativo
GO

--7. Actualizar el responsable de una actividad.

UPDATE Actividad_Escolar
SET Responsable = 'Coordinador académico'
WHERE Nombre = 'Feria de ciencias'

SELECT * FROM Actividad_Escolar
GO

--8. Actualizar la descripción de una actividad.

UPDATE Actividad_Escolar
SET Descripcion = 'Presentación de trabajos científicos'
WHERE Nombre = 'Feria de ciencias'

SELECT * FROM Actividad_Escolar
GO

--9. Actualizar el lugar de una reunión.

UPDATE Reunion
SET Lugar = 'Auditorio principal'
WHERE Tema = 'Reunión académica'

SELECT * FROM Reunion
GO

--10. Actualizar la cantidad de materiales.

UPDATE Material_Educativo
SET Cantidad = 40
WHERE Nombre = 'Cuadernos'

SELECT * FROM Material_Educativo
GO

--11. Consultar los estudiantes de sexo masculino.

SELECT ID_Estudiante, Nombre, Apellido_paterno, Sexo
FROM Estudiante
WHERE Sexo = 'M'

GO

--12. Consultar los docentes cuyo tipo sea Tutor.

SELECT ID_Docente, Nombre, Apellido_paterno, Tipo
FROM Docente
WHERE Tipo = 'Tutor'

GO

--13. Consultar las áreas que tengan más de 2 horas.

SELECT ID_Area, Nombre, N_horas
FROM Area
WHERE N_horas > 2

GO

--14. Consultar las matrículas del año 2026.

SELECT ID_Matricula, Fecha, Anio_lectivo, Estado
FROM Matricula
WHERE Anio_lectivo = 2026

GO

--15. Consultar los estudiantes que proceden de Chota.

SELECT ID_Estudiante, Nombre, Apellido_paterno, Lugar_procedencia
FROM Estudiante
WHERE Lugar_procedencia = 'Chota'

GO

--16. Consultar los estudiantes cuyos nombres comiencen con la letra M.

SELECT ID_Estudiante, Nombre, Apellido_paterno
FROM Estudiante
WHERE Nombre LIKE 'M%'

GO

--17. Consultar las aulas que tengan entre 20 y 30 alumnos de aforo.

SELECT ID_Aula, Piso, Tipo, Aforo
FROM Aula
WHERE Aforo BETWEEN 20 AND 30

GO

--18. Consultar los docentes con sus respectivas direcciones.

SELECT D.ID_Docente, D.Nombre, D.Apellido_paterno,
       DR.Nombre_calle, DR.Numero, DR.Ciudad
FROM Docente AS D
INNER JOIN Direccion AS DR
ON D.ID_Docente = DR.IDDoc

GO

--19. Consultar las matrículas junto con los nombres de los estudiantes.

SELECT M.ID_Matricula, E.Nombre, E.Apellido_paterno,
       M.Anio_lectivo, M.Estado
FROM Matricula AS M
INNER JOIN Estudiante AS E
ON M.IDEstu = E.ID_Estudiante

GO

--20. Eliminar una actividad escolar registrada.

DELETE FROM Actividad_Escolar
WHERE Nombre = 'Concurso de lectura'

SELECT * FROM Actividad_Escolar
GO