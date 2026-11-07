USE BD_JCM
GO

--1.Registrar un nuevo estudiante--
INSERT INTO Estudiante (ID_Estudiante, Nombre, Apellido_paterno, Apellido_materno, DNI, Fecha_nacimiento, Sexo, Historial_enfermedades, Celular, Lugar_procedencia, CM_IE)
VALUES ('E0026','Milagros Fiorella','Cieza','Tarrillo','76890124','2014-05-09','F',NULL,NULL,'Conchán',1428671)

--2.Registrar un nuevo apoderado--
INSERT INTO Apoderado (ID_Apoderado, Nombre, Apellido_paterno, Apellido_materno, DNI, Sexo, Celular, Lugar_procedencia)
VALUES ('P0027','Wilmer','Cieza','Bustamante','42905817','M','954780321','Conchán')

--3.Relacionar al estudiante con su apoderado (usa la fecha de hoy)--
INSERT INTO Estudiante_Apoderado (Parentesco, Fecha_asignacion, Observacion, IDEst, IDApo)
VALUES ('Padre', getdate(), 'Apoderado principal', 'E0026', 'P0027')

--4.Matricular a la estudiante en 1° A (sección 1) con estado Pendiente--
INSERT INTO Matricula (ID_Matricula, Fecha, Anio_lectivo, Estado, Observacion, IDEstu, IDSecc)
VALUES ('M0027', getdate(), 2026, 'Pendiente', 'Falta partida de nacimiento', 'E0026', 1)

--5.SELECT, para revisar toda las faltas--
SELECT * FROM Asistencia 
WHERE Estado = 'Falta'

--6.Actualizar el celular de un estudiante--
UPDATE Estudiante 
SET Celular = '987654321' 
WHERE ID_Estudiante = 'E0001'
SELECT * FROM Estudiante

--7.Completar la matrícula pendiente de E0013, asignarle sección 2° B y ratificarla--
UPDATE Matricula
SET Estado = 'Ratificado', IDSecc = 3, Observacion = 'Documentación completada'
WHERE ID_Matricula = 'M0013'
SELECT * FROM Matricula

--8. Aprobar el documento DC019 con fecha de resolución de hoy--
UPDATE Documento
SET Estado = 'Aprobado', Fecha_resolucion = getdate(), Observacion = 'Documentación completa'
WHERE ID_Documento = 'DC019'
SELECT * FROM Documento

--9. INNER JOIN, revisar tardanzas y el docente asociado--
SELECT A.ID_Asistencia, A.Estado, d.ID_Docente, D.Nombre+' '+D.Apellido_paterno as Docente, A.Observacion
FROM Asistencia as A
INNER JOIN Docente as D 
ON D.ID_Docente = A.IDDoc
WHERE A.Estado = 'Tardanza'

--10. Aumentar el aforo de la dirección de 6 a 8--
UPDATE Aula 
SET Aforo = 8 
WHERE ID_Aula = 7
SELECT * FROM Aula

--11. Consultar que documentos evidencia esta asociados al justificante J008--
SELECT * FROM Documento_evidencia
WHERE IDJust = 'J008'

--12. Eliminar el documento evidencia asociado a J008--
DELETE FROM Documento_evidencia 
WHERE IDJust = 'J008'
SELECT * FROM Documento_evidencia

--13. Insertar nuevo documento evidencia para justificante J008--
INSERT INTO Documento_evidencia([Identificador], [IDJust])
VALUES ('Orden médica ES0019', 'J008')

--14. Revisar las matrículas canceladas que nunca tuvieron sección--
SELECT * FROM Matricula 
WHERE Estado = 'Cancelado' AND IDSecc IS NULL

--15. Eliminar las matrículas canceladas que nunca tuvieron sección--
DELETE FROM Matricula 
WHERE Estado = 'Cancelado' AND IDSecc IS NULL

--16. Horario del día lunes: docente, área, sección y hora--
SELECT d.Nombre + ' ' + d.Apellido_paterno as Docente, ar.Nombre as Area,s.Grado,s.Seccion as Seccion,h.Dia, h.Hora_inicio, h.Hora_fin
FROM Horario h
INNER JOIN Docente d 
ON d.ID_Docente = h.IDDoc
INNER JOIN Area ar 
ON ar.ID_Area = h.IDArea
INNER JOIN Seccion s 
ON s.ID_Seccion = h.IDSecc
WHERE h.Dia = 'Lunes'
ORDER BY h.Hora_inicio

--16. Consultar cuando documentos tipo informe hay--
SELECT D.ID_Documento, d.Tipo_remitente, TD.ID_TipoDoc, TD.Nombre 
FROM Documento as D
INNER JOIN Tipo_documento TD
ON td.ID_TipoDoc = d.IDTD
WHERE TD.Nombre = 'Informe'

--17. Right join. Ver cuantos registros hay en seccion al unirse con matricula--
SELECT S.ID_Seccion, S.Grado, S.ID_Seccion, M.ID_Matricula, M.Estado
FROM Seccion as S
RIGHT JOIN Matricula as M
ON M.IDSecc = S.ID_Seccion

--18.Left join. Ver todos los docentes y la sección de la que son tutores--
SELECT D.ID_Docente, D.Nombre, D.Apellido_paterno, D.Tipo, S.Grado, S.Seccion
FROM Docente as D
LEFT JOIN Seccion as S
ON S.IDTutor = D.ID_Docente
WHERE Tipo = 'Tutor'

--19.Full join. Ver todos los requisitos y todos los tipos de documento que los piden, ordenado por tipo de documento--
SELECT R.ID_Requisito, R.Nombre, DR.IDTD, DR.Obligatoriedad
FROM Requisito as R
FULL JOIN Detalle_Requisito as DR
ON DR.IDReq = R.ID_Requisito
ORDER BY IDTD 

--20.Sin intersección (ambos lados). Aulas sin sección y secciones sin aula--
SELECT A.ID_Aula, A.Tipo, S.ID_Seccion, S.Grado, S.Seccion
FROM Aula as A
FULL JOIN Seccion as S
ON S.IDAula = A.ID_Aula
WHERE A.ID_Aula IS NULL OR S.ID_Seccion IS NULL