USE BD_JCM
GO

--INSTITUCION_PROCEDENCIA (hay 8 registros)--
INSERT INTO Institucion_Procedencia (Codigo_modular, Razon_social) 
VALUES (1428671, 'I.E. N° 101062 Conchán'),
	   (1428689, 'I.E. N° 101063 Pariamarca'),
	   (1431204, 'I.E. N° 101018 Lajas'),
	   (1352947, 'I.E. Sagrado Corazón de Jesús - Chota'),
	   (1352962, 'I.E. Santa Rosa - Chota'),
	   (1503318, 'I.E. N° 101124 Cochabamba'),
	   (1417756, 'I.E. N° 101205 Querocoto'),
	   (1385204, 'I.E.P. San José - Chota')

--ESTUDIANTE (25) divididos en 1A:5, 2A:4, 2B:4, 3A:4, 4A:4, 5A:4--
INSERT INTO Estudiante (ID_Estudiante, Nombre, Apellido_paterno, Apellido_materno, DNI, Fecha_nacimiento, Sexo, Historial_enfermedades, Celular, Lugar_procedencia, CM_IE) 
--1A--
VALUES ('E0001','Kevin Alexander','Vásquez','Tantalean','76451203','2014-03-12','M',NULL,NULL,'Conchán',1428671),
	   ('E0002','Yeni Milagros','Fernández','Bustamante','76512984','2014-07-25','F','Alergia a la penicilina',NULL,'Conchán',1428671),
	   ('E0003','Jhon Anderson','Díaz','Mejía','76388017','2014-11-02','M',NULL,'987412356','Lajas',1431204),
	   ('E0004','Rosmery Lizbeth','Cubas','Idrogo','76620345','2014-01-18','F','Asma leve',NULL,'Conchán',1428671),
	   ('E0005','Brayan Smith','Huamán','Coronel','76274891','2014-09-30','M',NULL,NULL,'Pariamarca',1428689),
--2A--
	   ('E0006','Luz Angélica','Tarrillo','Salazar','75981362','2013-05-14','F',NULL,NULL,'Conchán',1428671),
	   ('E0007','Edwin Junior','Chávez','Delgado','75840127','2013-12-08','M','Miopía','941265083','Chota',1352962),
	   ('E0008','Mayra Alejandra','Ruiz','Sánchez','76033958','2013-02-27','F',NULL,NULL,'Cochabamba',1503318),
	   ('E0009','Deyvi Wilmer','Alarcón','Bautista','75926740','2012-08-19','M',NULL,NULL,'Conchán',1428671),
--2B--
	   ('E0010','Nayeli Fiorella','Vigil','Cieza','76105283','2011-06-03','F',NULL,NULL,'Conchán',1428671),
	   ('E0011','Cristian Elías','Burga','Llamo','75870419','2012-10-21','M',NULL,'962078415','Lajas',1431204),
	   ('E0012','Ana Lucía','Rafael','Quispe','76148602','2011-04-09','F','Anemia leve',NULL,'Querocoto',1417756),
	   ('E0013','Jherson Yoel','Mendoza','Cabrera','75793325','2010-11-15','M',NULL,NULL,'Chota',1385204),
--3A--
	   ('E0014','Marisol Esperanza','Bustamante','Núñez','75218946','2010-03-22','F',NULL,'975318624','Conchán',1428671),
	   ('E0015','Erick Fabián','Cotrina','Dávila','74936158','2010-09-11','M',NULL,NULL,'Chota',1352947),
	   ('E0016','Dayana Nicole','Vigil','Cieza','75307721','2010-07-06','F',NULL,'918472305','Conchán',1428671),
	   ('E0017','Wilson Rolando','Guevara','Terrones','74852093','2009-12-30','M','Alergia al polvo',NULL,'Pariamarca',1428689),
--4A--
	   ('E0018','Karen Jazmín','Sánchez','Vásquez','74611835','2009-02-17','F',NULL,'947203561','Conchán',1428671),
	   ('E0019','Alex Roberto','Hoyos','Tapia','74729504','2009-06-28','M',NULL,NULL,'Cochabamba',1503318),
	   ('E0020','Yaneth Rocío','Zamora','Heredia','74563217','2009-10-04','F',NULL,NULL,'Conchán',1428671),
	   ('E0021','Deivis Manuel','Idrogo','Fernández','74380962','2008-12-13','M',NULL,'983650217','Lajas',1431204),
--5A--
	   ('E0022','Shirley Madeleine','Díaz','Cabanillas','73958241','2008-04-19','F',NULL,'926410853','Chota',1352962),
	   ('E0023','Jorge Luis','Huamán','Coronel','73810476','2008-08-23','M',NULL,'958231467','Pariamarca',1428689),
	   ('E0024','Mirella Isabel','Tello','Bravo','73642598','2009-11-27','F','Gastritis',NULL,'Conchán',1428671),
	   ('E0025','Frank Anthony','Rojas','Llatas','73799130','2008-01-14','M',NULL,'971520348','Chalamarca',1385204)

--APODERADO (26)--
INSERT INTO Apoderado (ID_Apoderado, Nombre, Apellido_paterno, Apellido_materno, DNI, Sexo, Celular, Lugar_procedencia) 
VALUES('P0001','Rosa Elvira','Tantalean','Alarcón','41238765','F','954123067','Conchán'),
	  ('P0002','Maritza','Bustamante','Llamo','42176503','F','976301842','Conchán'),
	  ('P0003','Teodoro','Díaz','Cubas','40895214','M','987412356','Lajas'),
	  ('P0004','Elena','Idrogo','Bustamante','43021876','F',NULL,'Conchán'),
	  ('P0005','César','Huamán','Tapia','40517893','M','942871560','Pariamarca'),
	  ('P0006','Gladys','Coronel','Burga','41892470','F','965203174','Pariamarca'),
	  ('P0007','Manuel','Tarrillo','Cubas','42604159','M','931648205','Conchán'),
	  ('P0008','Juana','Delgado','Medina','43358062','F','941265083','Chota'),
	  ('P0009','Nelly','Sánchez','Vigil','44127385','F',NULL,'Cochabamba'),
	  ('P0010','Wilder','Alarcón','Heredia','40763921','M','958014632','Conchán'),
	  ('P0011','Santos','Vigil','Díaz','41450287','M','927365018','Conchán'),
	  ('P0012','Carmen','Cieza','Zamora','42893016','F','918472305','Conchán'),
	  ('P0013','Rosalía','Llamo','Terrones','43671549','F','962780415','Lajas'),
	  ('P0014','Pablo','Rafael','Cubas','40298674','M',NULL,'Querocoto'),
	  ('P0015','Digna','Quispe','Hoyos','44012853','F','973158260','Querocoto'),
	  ('P0016','Hilario','Mendoza','Silva','41735920','M','949302716','Chota'),
	  ('P0017','Lucila','Núñez','Cabrera','42519478','F','975318624','Conchán'),
	  ('P0018','Orlando','Cotrina','Vásquez','40634107','M','986520143','Chota'),
	  ('P0019','Zoila','Terrones','Medina','27812456','F',NULL,'Pariamarca'),
	  ('P0020','Nilton','Sánchez','Campos','41307582','M','947203561','Conchán'),
	  ('P0021','Edita','Tapia','Rojas','43215690','F','932816450','Cochabamba'),
	  ('P0022','Aníbal','Zamora','Cabrera','42087314','M',NULL,'Conchán'),
	  ('P0023','Marleny','Fernández','Bravo','44390218','F','983650217','Lajas'),
	  ('P0024','Rodolfo','Cabanillas','Llatas','40981765','M','926410853','Chota'),
	  ('P0025','Julia','Bravo','Silva','43846027','F','951347209','Conchán'),
	  ('P0026','Ernesto','Rojas','Bautista','41562893','M','971520348','Chalamarca')

--ESTUDIANTE_APODERADO (30) donde hermanos comparten apoderados (E0005/E0023 y E0010/E0016)--
INSERT INTO Estudiante_Apoderado (Parentesco, Fecha_asignacion, Observacion, IDEst, IDApo) 
VALUES ('Madre','2026-02-16','Apoderada principal','E0001','P0001'),
	   ('Madre','2026-02-16','Apoderada principal','E0002','P0002'),
	   ('Padre','2026-02-17','Apoderado principal','E0003','P0003'),
	   ('Madre','2026-02-17','Apoderada principal','E0004','P0004'),
	   ('Padre','2026-02-18','Apoderado principal','E0005','P0005'),
	   ('Madre','2026-02-18','Contacto de emergencia','E0005','P0006'),
	   ('Padre','2026-03-02','Apoderado principal','E0023','P0005'),
	   ('Madre','2026-03-02','Contacto de emergencia','E0023','P0006'),
	   ('Padre','2026-03-02','Apoderado principal','E0006','P0007'),
	   ('Madre','2026-03-02','Apoderada principal','E0007','P0008'),
	   ('Madre','2026-03-03','Apoderada principal','E0008','P0009'),
	   ('Padre','2026-03-03','Apoderado principal','E0009','P0010'),
	   ('Padre','2026-03-02','Apoderado principal','E0010','P0011'),
	   ('Madre','2026-03-02','Contacto de emergencia','E0010','P0012'),
	   ('Padre','2026-03-02','Apoderado principal','E0016','P0011'),
	   ('Madre','2026-03-02','Contacto de emergencia','E0016','P0012'),
	   ('Madre','2026-03-04','Apoderada principal','E0011','P0013'),
	   ('Padre','2026-03-04','Apoderado principal','E0012','P0014'),
	   ('Madre','2026-03-04','Contacto de emergencia','E0012','P0015'),
	   ('Padre','2026-03-04','Apoderado principal','E0013','P0016'),
	   ('Madre','2026-03-04','Apoderada principal','E0014','P0017'),
	   ('Padre','2026-03-04','Apoderado principal','E0015','P0018'),
	   ('Abuelo/a','2026-03-05','Apoderada por ausencia de los padres','E0017','P0019'),
	   ('Padre','2026-03-03','Apoderado principal','E0018','P0020'),
	   ('Madre','2026-03-03','Apoderada principal','E0019','P0021'),
	   ('Padre','2026-03-04','Apoderado principal','E0020','P0022'),
	   ('Madre','2026-03-04','Apoderada principal','E0021','P0023'),
	   ('Tío/a','2026-03-05','Apoderado por viaje de los padres','E0022','P0024'),
	   ('Madre','2026-03-06','Apoderada principal','E0024','P0025'),
	   ('Padre','2026-03-06','Apoderado principal','E0025','P0026')

--AULA (10): 6 aulas de clase + dirección, almacén, sala de EF y laboratorio de cómputo--
INSERT INTO Aula (Piso, Tipo, Aforo) 
VALUES (1,'Aula de clase - 1° A',30),
	   (1,'Aula de clase - 2° A',30),
	   (1,'Aula de clase - 2° B',30),
	   (2,'Aula de clase - 3° A',30),
	   (2,'Aula de clase - 4° A',30),
	   (2,'Aula de clase - 5° A',30),
	   (1,'Dirección',6),
	   (1,'Almacén',4),
	   (1,'Salón de Educación Física',30),
	   (2,'Laboratorio de cómputo',20)

--DOCENTE (13): 10 docentes + 1 directora + 1 practicante + 1 profesor de religión (enviado por organización religiosa)--
INSERT INTO Docente (ID_Docente, Nombre, Apellido_paterno, Apellido_materno, DNI, Sexo, Celular, Tipo) 
VALUES ('D0001','Rosa Marleni','Cieza','Bustamante','41026357','F','954870213','Tutor'), -- tutora 1A, Comunicación--
	   ('D0002','Walter Eduardo','Vásquez','Llamo','42318560','M','976125480','Tutor'),-- tutor 2A, Matemática--
	   ('D0003','Luz Mery','Salazar','Vigil','43105792','F','941058726','Tutor'),-- tutora 2B, Ciencia y Tecnología--
	   ('D0004','José Hernán','Tello','Burga','40872416','M','987236541','Tutor'),-- tutor 3A, DPCC--
	   ('D0005','Elmer Wilson','Rojas','Cotrina','44256031','M','932764108','Tutor'), -- tutor 4A, Educación para el Trabajo--
	   ('D0006','Gloria Estela','Mendoza','Núñez','45019378','F','968301542','Tutor'),-- tutora 5A, Arte--
	   ('D0007','Henry Alberto','Guevara','Díaz','41693824','M','925403671','Docente'), -- Educación Física--
	   ('D0008','Karina Yuliana','Llamo','Terrones','42760915','F','951782036','Coordinador'), -- Inglés, coordinadora juegos florales--
	   ('D0009','Lucio Heriberto','Sánchez','Cabrera','40355287','M','973420185','Coordinador'),-- Matemática, coordinador ONEM--
	   ('D0010','Marlith Jazmín','Núñez','Tapia','43987014','F','946018352','Docente'), -- Comunicación--
	   ('D0011','Aurora Esperanza','Salazar','Heredia','27940513','F','983517206','Director'),-- Directora--
	   ('D0012','Dayana Alejandra','Bravo','Mego','72518430','F','917360428',  'Practicante'), --CyT, practicante--
	   ('D0013','Pedro Cristóbal','Medina','Campos','41238905','M','962048731','Docente') -- Religión (enviado por organización religiosa)--

--SECCION (6)--
INSERT INTO Seccion (Grado, Seccion, Anio_vigente, IDAula, IDTutor) 
VALUES (1,'A',2026,1,'D0001'),
	   (2,'A',2026,2,'D0002'),
	   (2,'B',2026,3,'D0003'),
	   (3,'A',2026,4,'D0004'),
	   (4,'A',2026,5,'D0005'),
	   (5,'A',2026,6,'D0006')

--AREA (10)--
INSERT INTO Area (ID_Area, Nombre, N_horas) 
VALUES ('A0001','Matemática',5.0),
	   ('A0002','Comunicación',5.0),
	   ('A0003','Ciencia y Tecnología',4.0),
	   ('A0004','Religión',2.0),
	   ('A0005','Arte y Cultura',2.0),
	   ('A0006','Tutoría',1.0),
	   ('A0007','Desarrollo Pers. y Cívica',3.0),
	   ('A0008','Educación para el Trabajo',2.0),
	   ('A0009','Educación Física',2.0),
	   ('A0010','Inglés',2.0)

--DIRECCION (18), lo docentes peuden tener varias direcciones asociadas--
INSERT INTO Direccion (ID_Direccion, Nomenclatura, Nombre_calle, Numero, Ciudad, IDDoc) 
VALUES ('DR001','Jr.','Grau',245,'Chota','D0001'),
	   ('DR002','Jr.','Tacna',78,'Conchán','D0001'),
	   ('DR003','Av.','Mariscal Castilla',530,'Chota','D0002'),
	   ('DR004','Jr.','2 de Mayo',316,'Chota','D0003'),
	   ('DR005','Psje.','Los Pinos',15,'Conchán','D0003'),
	   ('DR006','Jr.','Bolognesi',189,'Conchán','D0004'),
	   ('DR007','Jr.','Lima',402,'Chota','D0005'),
	   ('DR008','Jr.','Unión',56,'Conchán','D0006'),
	   ('DR009','Jr.','Cajamarca',221,'Chota','D0006'),
	   ('DR010','Av.','Perú',734,'Chota','D0007'),
	   ('DR011','Jr.','Ayacucho',143,'Chota','D0008'),
	   ('DR012','Jr.','Junín',267,'Chota','D0009'),
	   ('DR013','Jr.','Libertad',91,'Conchán','D0009'),
	   ('DR014','Psje.','San Martín',33,'Conchán','D0010'),
	   ('DR015','Jr.','Amazonas',358,'Chota','D0011'),
	   ('DR016','Jr.','Progreso',24,'Conchán','D0011'),
	   ('DR017','Jr.','Callao',110,'Chota','D0012'),
	   ('DR018','Jr.','Arequipa',205,'Chota','D0013')

--MATRICULA (26)
INSERT INTO Matricula (ID_Matricula, Fecha, Anio_lectivo, Estado, Observacion, IDEstu, IDSecc) 
-- 1A--
VALUES ('M0001','2026-02-16',2026,'Finalizado',NULL,'E0001',1),
	   ('M0002','2026-02-16',2026,'Finalizado',NULL,'E0002',1),
	   ('M0003','2026-02-17',2026,'Finalizado',NULL,'E0003',1),
	   ('M0004','2026-02-23',2026,'Finalizado','Subsanó partida de nacimiento','E0004',1),
	   ('M0005','2026-02-18',2026,'Finalizado',NULL,'E0005',1),
-- 2A--
	   ('M0006','2026-03-02',2026,'Ratificado',NULL,'E0006',2),
	   ('M0007','2026-03-02',2026,'Ratificado',NULL,'E0007',2),
	   ('M0008','2026-03-03',2026,'Ratificado',NULL,'E0008',2),
	   ('M0009','2026-03-03',2026,'Ratificado',NULL,'E0009',2),
-- 2B--
	   ('M0010','2026-03-02',2026,'Ratificado',NULL,'E0010',3),
	   ('M0011','2026-03-04',2026,'Ratificado',NULL,'E0011',3),
	   ('M0012','2026-03-04',2026,'Ratificado',NULL,'E0012',3),
	   ('M0013','2026-10-19',2026,'Pendiente','Ingreso tardío, documentos incompletos','E0013',NULL),
-- 3A--
	   ('M0014','2026-03-04',2026,'Ratificado',NULL,'E0014',4),
	   ('M0015','2026-03-04',2026,'Ratificado',NULL,'E0015',4),
	   ('M0016','2026-03-02',2026,'Ratificado',NULL,'E0016',4),
	   ('M0017','2026-03-05',2026,'Ratificado',NULL,'E0017',4),
-- 4A--
	   ('M0018','2026-03-03',2026,'Traslado','Traslado a I.E. de Chota (mayo 2026)','E0018',5),
	   ('M0019','2026-03-03',2026,'Ratificado',NULL,'E0019',5),
	   ('M0020','2026-03-04',2026,'Ratificado',NULL,'E0020',5),
	   ('M0021','2026-03-04',2026,'Retirado','Retiro por motivos laborales de los padres','E0021',5),
-- 5A--
	   ('M0022','2026-03-05',2026,'Ratificado',NULL,'E0022',6),
	   ('M0023','2026-03-02',2026,'Ratificado',NULL,'E0023',6),
	   ('M0024','2026-03-06',2026,'Ratificado',NULL,'E0024',6),
	   ('M0025','2026-03-06',2026,'Ratificado',NULL,'E0025',6),
	   ('M0026','2026-03-04',2026,'Cancelado','Anulada por no presentar documentos','E0013',NULL)

--HORARIO (109)--
--Hora pedagógica = 45 min | Receso 11:00 - 11:30--
INSERT INTO Horario (ID_Horario, Dia, Hora_inicio, Hora_fin, IDDoc, IDSecc, IDArea)
-- LUNES--
VALUES ('H001','Lunes','08:00','08:45','D0010',1,'A0002'),
	   ('H002','Lunes','08:00','09:30','D0002',2,'A0001'),
	   ('H003','Lunes','08:00','09:30','D0006',3,'A0005'),
	   ('H004','Lunes','08:00','08:45','D0008',4,'A0010'),
	   ('H005','Lunes','08:00','09:30','D0001',5,'A0002'),
	   ('H006','Lunes','08:00','09:30','D0003',6,'A0003'),
	   ('H007','Lunes','08:45','10:15','D0009',1,'A0001'),
	   ('H008','Lunes','08:45','09:30','D0004',4,'A0006'),
	   ('H009','Lunes','09:30','11:00','D0006',2,'A0005'),
	   ('H010','Lunes','09:30','10:15','D0002',3,'A0001'),
	   ('H011','Lunes','09:30','11:00','D0004',4,'A0007'),
	   ('H012','Lunes','09:30','11:00','D0003',5,'A0003'),
	   ('H013','Lunes','09:30','10:15','D0013',6,'A0004'),
	   ('H014','Lunes','10:15','11:00','D0001',1,'A0006'),
	   ('H015','Lunes','10:15','11:00','D0008',3,'A0010'),
	   ('H016','Lunes','10:15','11:00','D0002',6,'A0001'),
	   ('H017','Lunes','11:30','13:00','D0013',1,'A0004'),
	   ('H018','Lunes','11:30','12:15','D0002',2,'A0006'),
	   ('H019','Lunes','11:30','13:00','D0005',3,'A0008'),
	   ('H020','Lunes','11:30','13:00','D0003',4,'A0003'),
	   ('H021','Lunes','11:30','13:00','D0007',5,'A0009'),
	   ('H022','Lunes','11:30','13:00','D0006',6,'A0005'),
	   ('H023','Lunes','12:15','13:00','D0004',2,'A0007'),
-- MARTES--
	   ('H024','Martes','08:00','09:30','D0004',1,'A0007'),
	   ('H025','Martes','08:00','08:45','D0002',2,'A0001'),
	   ('H026','Martes','08:00','09:30','D0003',3,'A0003'),
	   ('H027','Martes','08:00','08:45','D0009',4,'A0001'),
	   ('H028','Martes','08:00','08:45','D0008',5,'A0010'),
	   ('H029','Martes','08:00','09:30','D0010',6,'A0002'),
	   ('H030','Martes','08:45','10:15','D0008',2,'A0010'),
	   ('H031','Martes','08:45','10:15','D0013',4,'A0004'),
	   ('H032','Martes','08:45','09:30','D0001',5,'A0002'),
	   ('H033','Martes','09:30','11:00','D0010',1,'A0002'),
	   ('H034','Martes','09:30','10:15','D0001',3,'A0002'),
	   ('H035','Martes','09:30','11:00','D0009',5,'A0001'),
	   ('H036','Martes','09:30','10:15','D0006',6,'A0006'),
	   ('H037','Martes','10:15','11:00','D0001',2,'A0002'),
	   ('H038','Martes','10:15','11:00','D0003',3,'A0006'),
	   ('H039','Martes','10:15','11:00','D0004',4,'A0006'),
	   ('H040','Martes','10:15','11:00','D0008',6,'A0010'),
	   ('H041','Martes','11:30','13:00','D0007',1,'A0009'),
	   ('H042','Martes','11:30','13:00','D0005',2,'A0008'),
	   ('H043','Martes','11:30','13:00','D0013',3,'A0004'),
	   ('H044','Martes','11:30','13:00','D0008',4,'A0010'),
	   ('H045','Martes','11:30','13:00','D0006',5,'A0005'),
	   ('H046','Martes','11:30','13:00','D0004',6,'A0007'),
-- MIERCOLES--
	   ('H047','Miercoles','08:00','08:45','D0008',1,'A0010'),
	   ('H048','Miercoles','08:00','09:30','D0001',2,'A0002'),
	   ('H049','Miercoles','08:00','09:30','D0002',3,'A0001'),
	   ('H050','Miercoles','08:00','09:30','D0003',4,'A0003'),
	   ('H051','Miercoles','08:00','09:30','D0005',5,'A0006'),
	   ('H052','Miercoles','08:00','09:30','D0010',6,'A0002'),
	   ('H053','Miercoles','08:45','09:30','D0009',1,'A0001'),
	   ('H054','Miercoles','09:30','11:00','D0003',1,'A0003'),
	   ('H055','Miercoles','09:30','11:00','D0004',2,'A0007'),
	   ('H056','Miercoles','09:30','11:00','D0001',3,'A0002'),
	   ('H057','Miercoles','09:30','11:00','D0010',4,'A0002'),
	   ('H058','Miercoles','09:30','10:15','D0009',5,'A0001'),
	   ('H059','Miercoles','09:30','11:00','D0002',6,'A0001'),
	   ('H060','Miercoles','10:15','11:00','D0013',5,'A0004'),
	   ('H061','Miercoles','11:30','13:00','D0006',1,'A0005'),
	   ('H062','Miercoles','11:30','13:00','D0013',2,'A0004'),
	   ('H063','Miercoles','11:30','13:00','D0004',3,'A0007'),
	   ('H064','Miercoles','11:30','13:00','D0007',4,'A0009'),
	   ('H065','Miercoles','11:30','13:00','D0005',5,'A0008'),
	   ('H066','Miercoles','11:30','13:00','D0003',6,'A0003'),
-- JUEVES--
	   ('H067','Jueves','08:00','09:30','D0005',1,'A0008'),
	   ('H068','Jueves','08:00','09:30','D0002',2,'A0001'),
	   ('H069','Jueves','08:00','08:45','D0003',3,'A0006'),
	   ('H070','Jueves','08:00','09:30','D0009',4,'A0001'),
	   ('H071','Jueves','08:00','08:45','D0013',5,'A0004'),
	   ('H072','Jueves','08:00','08:45','D0004',6,'A0007'),
	   ('H073','Jueves','08:45','09:30','D0004',3,'A0007'),
	   ('H074','Jueves','08:45','10:15','D0003',5,'A0003'),
	   ('H075','Jueves','08:45','09:30','D0010',6,'A0002'),
	   ('H076','Jueves','09:30','11:00','D0009',1,'A0001'),
	   ('H077','Jueves','09:30','10:15','D0002',2,'A0006'),
	   ('H078','Jueves','09:30','11:00','D0001',3,'A0002'),
	   ('H079','Jueves','09:30','11:00','D0010',4,'A0002'),
	   ('H080','Jueves','09:30','11:00','D0007',6,'A0009'),
	   ('H081','Jueves','10:15','11:00','D0008',2,'A0010'),
	   ('H082','Jueves','10:15','11:00','D0004',5,'A0007'),
	   ('H083','Jueves','11:30','12:15','D0001',1,'A0006'),
	   ('H084','Jueves','11:30','13:00','D0003',2,'A0003'),
	   ('H085','Jueves','11:30','13:00','D0007',3,'A0009'),
	   ('H086','Jueves','11:30','13:00','D0005',4,'A0008'),
	   ('H087','Jueves','11:30','13:00','D0008',5,'A0010'),
	   ('H088','Jueves','11:30','12:15','D0006',6,'A0006'),
	   ('H089','Jueves','12:15','13:00','D0004',1,'A0007'),
	   ('H090','Jueves','12:15','13:00','D0013',6,'A0004'),
-- VIERNES--
	   ('H091','Viernes','08:00','09:30','D0003',1,'A0003'),
	   ('H092','Viernes','08:00','09:30','D0001',2,'A0002'),
	   ('H093','Viernes','08:00','09:30','D0002',3,'A0001'),
	   ('H094','Viernes','08:00','08:45','D0004',4,'A0007'),
	   ('H095','Viernes','08:00','09:30','D0009',5,'A0001'),
	   ('H096','Viernes','08:00','09:30','D0008',6,'A0010'),
	   ('H097','Viernes','08:45','09:30','D0010',4,'A0002'),
	   ('H098','Viernes','09:30','11:00','D0010',1,'A0002'),
	   ('H099','Viernes','09:30','11:00','D0003',2,'A0003'),
	   ('H100','Viernes','09:30','11:00','D0008',3,'A0010'),
	   ('H101','Viernes','09:30','11:00','D0009',4,'A0001'),
	   ('H102','Viernes','09:30','11:00','D0001',5,'A0002'),
	   ('H103','Viernes','09:30','11:00','D0002',6,'A0001'),
	   ('H104','Viernes','11:30','13:00','D0008',1,'A0010'),
	   ('H105','Viernes','11:30','13:00','D0007',2,'A0009'),
	   ('H106','Viernes','11:30','13:00','D0003',3,'A0003'),
	   ('H107','Viernes','11:30','13:00','D0006',4,'A0005'),
	   ('H108','Viernes','11:30','13:00','D0004',5,'A0007'),
	   ('H109','Viernes','11:30','13:00','D0005',6,'A0008')

--ASISTENCIA (24)--
INSERT INTO Asistencia (ID_Asistencia, Estado, Fecha, Hora_ingreso, Hora_salida, Observacion, IDDoc, IDHor) 
-- Lunes 02/11/2026--
VALUES ('AS00001','Asistencia','2026-11-02','07:50','09:30',NULL,'D0009','H001'),
	   ('AS00002','Asistencia','2026-11-02','07:55','09:30',NULL,'D0002','H002'),
	   ('AS00003','Tardanza','2026-11-02','08:12','09:30','Llegó 12 min tarde','D0001','H003'),
	   ('AS00004','Asistencia','2026-11-02','07:58','09:30',NULL,'D0010','H004'),
	   ('AS00005','Ausencia justificada','2026-11-02',NULL,NULL,'Descanso médico presentado','D0003','H005'),
	   ('AS00006','Falta','2026-11-02',NULL,NULL,'Sin comunicación previa','D0008','H006'),
	   ('AS00007','Asistencia','2026-11-02','09:25','11:00',NULL,'D0004','H012'),
	   ('AS00008','Asistencia','2026-11-02','11:25','13:00',NULL,'D0006','H015'),
	   ('AS00009','Tardanza','2026-11-02','13:10','13:45','Llegó 10 min tarde','D0005','H023'),
-- Martes 03/11/2026--
	   ('AS00010','Asistencia','2026-11-03','07:55','09:30',NULL,'D0007','H025'),
	   ('AS00011','Asistencia','2026-11-03','07:58','09:30',NULL,'D0006','H026'),
	   ('AS00012','Tardanza','2026-11-03','08:20','09:30','Retraso por transporte','D0013','H027'),
	   ('AS00013','Asistencia','2026-11-03','07:50','09:30',NULL,'D0005','H028'),
	   ('AS00014','Asistencia','2026-11-03','07:57','09:30',NULL,'D0004','H029'),
	   ('AS00015','Ausencia justificada','2026-11-03',NULL,NULL,'Continúa descanso médico','D0003','H030'),
-- Lunes 26/10/2026--
	   ('AS00016','Asistencia','2026-10-26','07:53','09:30',NULL,'D0009','H001'),
	   ('AS00017','Asistencia','2026-10-26','07:56','09:30',NULL,'D0002','H002'),
	   ('AS00018','Asistencia','2026-10-26','07:49','09:30',NULL,'D0001','H003'),
	   ('AS00019','Ausencia justificada','2026-10-26',NULL,NULL,'Comisión de servicio en UGEL','D0010','H004'),
	   ('AS00020','Asistencia','2026-10-26','07:59','09:30',NULL,'D0003','H005'),
	   ('AS00021','Tardanza','2026-10-26','08:07','09:30','Llegó 7 min tarde','D0008','H006'),
-- Martes 27/10/2026--
	   ('AS00022','Asistencia','2026-10-27','07:55','09:30',NULL,'D0007','H025'),
	   ('AS00023','Falta','2026-10-27',NULL,NULL,'No asistió, sin aviso','D0013','H027'),
	   ('AS00024','Ausencia justificada','2026-10-27',NULL,NULL,'Permiso personal por duelo','D0006','H026')

--JUSTIFICANTE (8)--
INSERT INTO Justificante (ID_Justificante, Tipo, Descripcion, IDAsis) 
VALUES ('J001','Descanso médico','Descanso médico por 3 días',  'AS00005'),
	   ('J002','Descanso médico','Ampliación de descanso médico','AS00015'),
	   ('J003','Comisión de servicio','Capacitación en la UGEL Chota','AS00019'),
	   ('J004','Permiso personal','Permiso por duelo familiar','AS00024'),
	   ('J005','Tardanza justificada','Retraso por mal estado de la carretera','AS00012'),
	   ('J006','Falta justificada','Justificación presentada posteriormente','AS00006'),
	   ('J007','Motivo de salud familiar','Atención de familiar enfermo','AS00023'),
	   ('J008','Tardanza justificada','Cita médica en el Centro de Salud Conchán','AS00003')

--DOCUMENTO_EVIDENCIA (15) un justificante puede tener varios documentos--
INSERT INTO Documento_evidencia (Identificador, IDJust) 
VALUES ('CITT N° 2026-001245','J001'),
	   ('Certificado médico EsSalud','J001'),
	   ('Receta médica N° 00983','J001'),
	   ('CITT N° 2026-001318','J002'),
	   ('Informe médico ampliatorio','J002'),
	   ('Oficio N° 0452-2026-UGEL-CHOTA','J003'),
	   ('Cronograma de capacitación','J003'),
	   ('Partida de defunción (copia)','J004'),
	   ('Solicitud de permiso personal','J004'),
	   ('Declaración jurada de retraso','J005'),
	   ('Solicitud de justificación','J006'),
	   ('Constancia de atención médica','J006'),
	   ('Constancia de atención familiar','J007'),
	   ('Declaración jurada simple','J007'),
	   ('Constancia de cita C.S. Conchán','J008')

--TIPO_DOCUMENTO (18)--
INSERT INTO Tipo_documento (ID_TipoDoc, Nombre) 
VALUES ('TD01','Solicitud de matrícula'),
	   ('TD02','Solicitud de traslado'),
	   ('TD03','Certificado de estudios'),
	   ('TD04','Constancia de matrícula'),
	   ('TD05','Oficio'),
	   ('TD06','Constancia de vacante'),
	   ('TD07','Solicitud de rectificación'),
	   ('TD08','Constancia de conducta'),
	   ('TD09','Informe'),
	   ('TD10','Solicitud de retiro'),
	   ('TD11','Oficio circular'),
	   ('TD12','Solicitud de información'),
	   ('TD13','Solicitud de licencia/permiso'),
	   ('TD14','Memorando'),
	   ('TD15','Resolución directoral'),
	   ('TD16','Reporte estadístico'),
	   ('TD17','Convocatoria o citación'),
	   ('TD18','Solicitud de duplicado')

--REQUISITO (22)--
INSERT INTO Requisito (ID_Requisito, Nombre) 
VALUES ('RQ01','Copia de DNI del estudiante'),
	   ('RQ02','Copia de DNI del apoderado'),
	   ('RQ03','Certificado de estudios'),
	   ('RQ04','Constancia de no adeudo'),
	   ('RQ05','Ficha única de matrícula'),
	   ('RQ06','Resolución de traslado'),
	   ('RQ07','Partida de nacimiento'),
	   ('RQ08','Constancia de vacante'),
	   ('RQ09','Carné de vacunación'),
	   ('RQ10','Solicitud firmada'),
	   ('RQ11','Número y fecha de oficio'),
	   ('RQ12','Sello y firma del remitente'),
	   ('RQ13','Detalle de lo solicitado'),
	   ('RQ14','Plazo de respuesta'),
	   ('RQ15','Copia de DNI del docente'),
	   ('RQ16','Documento de sustento'),
	   ('RQ17','Visto bueno de Dirección'),
	   ('RQ18','Copia de resolución vigente'),
	   ('RQ19','Formato de datos adjunto'),
	   ('RQ20','Documento a rectificar'),
	   ('RQ21','Número de resolución'),
	   ('RQ22','Anexos de sustento')

--DETALLE_REQUISITO (62), solo que estan agrupados en 18 filas segun el documento al que corresponden--
INSERT INTO Detalle_Requisito (Obligatoriedad, IDTD, IDReq) 
VALUES (1,'TD01','RQ01'),(1,'TD01','RQ02'),(1,'TD01','RQ03'),(1,'TD01','RQ07'),(0,'TD01','RQ09'),(1,'TD01','RQ10'),-- Solicitud de matrícula--
	   (1,'TD02','RQ01'),(1,'TD02','RQ02'),(1,'TD02','RQ04'),(1,'TD02','RQ06'),(1,'TD02','RQ10'), -- Solicitud de traslado--
	   (1,'TD03','RQ01'),(1,'TD03','RQ02'),(1,'TD03','RQ10'), -- Certificado de estudios--
	   (1,'TD04','RQ01'),(1,'TD04','RQ10'), -- Constancia de matrícula--
	   (1,'TD05','RQ11'),(1,'TD05','RQ12'),(1,'TD05','RQ13'),(0,'TD05','RQ14'), -- Oficio--
	   (1,'TD06','RQ01'),(1,'TD06','RQ02'),(1,'TD06','RQ10'), -- -- Constancia de vacante--
	   (1,'TD07','RQ01'),(1,'TD07','RQ07'),(1,'TD07','RQ10'),(1,'TD07','RQ20'), -- Solicitud de rectificación--
	   (1,'TD08','RQ01'),(0,'TD08','RQ02'), -- Constancia de conducta--
	   (1,'TD09','RQ13'),(1,'TD09','RQ17'),(0,'TD09','RQ22'), -- Informe--
	   (1,'TD10','RQ01'),(1,'TD10','RQ02'),(1,'TD10','RQ04'),(1,'TD10','RQ10'), -- Solicitud de retiro--
	   (1,'TD11','RQ11'),(1,'TD11','RQ12'),(0,'TD11','RQ14'), -- Oficio circular--
	   (1,'TD12','RQ10'),(1,'TD12','RQ12'),(1,'TD12','RQ13'),(1,'TD12','RQ14'), -- Solicitud de información--
	   (1,'TD13','RQ10'),(1,'TD13','RQ15'),(1,'TD13','RQ16'),(1,'TD13','RQ17'),-- Solicitud de licencia/permiso--
	   (1,'TD14','RQ11'),(1,'TD14','RQ12'), -- Memorando--
	   (1,'TD15','RQ12'),(1,'TD15','RQ21'),(0,'TD15','RQ18'),-- Resolución directoral--
	   (1,'TD16','RQ12'),(1,'TD16','RQ14'),(1,'TD16','RQ17'),(1,'TD16','RQ19'),-- Reporte estadístico--
	   (1,'TD17','RQ11'),(1,'TD17','RQ12'),(0,'TD17','RQ14'),-- Convocatoria o citación--
	   (1,'TD18','RQ01'),(1,'TD18','RQ02'),(1,'TD18','RQ10')-- Solicitud de duplicado--

--DOCUMENTO (32)--
INSERT INTO Documento (ID_Documento, Tipo_remitente, Razon_social, Fecha_recepcion, Hora_recepcion, Fecha_resolucion, Motivo, Estado, Observacion, IDTD) 
VALUES ('DC001','Apoderado','Rosa Elvira Tantalean Alarcón','2026-02-16','08:40','2026-02-18','Solicitud de matrícula 1° grado','Aprobado','Documentación completa','TD01'),
	   ('DC002','Apoderado','Maritza Bustamante Llamo','2026-02-16','09:05','2026-02-18','Solicitud de matrícula 1° grado','Aprobado','Documentación completa','TD01'),
	   ('DC003','Apoderado','Teodoro Díaz Cubas','2026-02-17','08:15','2026-02-19','Solicitud de matrícula 1° grado','Aprobado',NULL,'TD01'),
	   ('DC004','Apoderado','Elena Idrogo Bustamante','2026-02-17','10:20','2026-02-23','Solicitud de matrícula 1° grado','Aprobado','Subsanó partida de nacimiento','TD01'),
	   ('DC005','Apoderado','César Huamán Tapia','2026-03-02','09:00','2026-03-03','Ratificación de matrícula 5° grado','Aprobado',NULL,'TD01'),
	   ('DC006','UGEL','UGEL Chota','2026-03-05','11:30','2026-03-06','Oficio sobre inicio del año escolar','Derivado','Derivado a Dirección','TD05'),
	   ('DC007','Apoderado','Julia Bravo Silva','2026-03-09','08:50','2026-03-11','Constancia de matrícula para programa social','Aprobado',NULL,'TD04'),
	   ('DC008','Apoderado','Santos Vigil Díaz','2026-04-14','09:35','2026-04-15','Constancia de conducta de hija','Aprobado',NULL,'TD08'),
	   ('DC009','Docente','Henry Alberto Guevara Díaz','2026-04-20','12:10',NULL,'Informe de actividades deportivas','Pendiente',NULL,'TD09'),
	   ('DC010','I.E.','I.E. N° 101062 Conchán','2026-04-28','10:05','2026-04-30','Remisión de certificados de estudios','Aprobado',NULL,'TD03'),
	   ('DC011','Apoderado','Nilton Sánchez Campos','2026-05-11','08:30','2026-05-13','Solicitud de traslado a I.E. de Chota','Aprobado','Con resolución de traslado','TD02'),
	   ('DC012','Apoderado','Marleny Fernández Bravo','2026-06-02','09:45','2026-06-03','Solicitud de retiro de estudiante','Aprobado',NULL,'TD10'),
	   ('DC013','Ex-alumno','Wilder Jhonatan Cieza Tarrillo','2026-06-15','10:40',NULL,'Solicitud de certificado de estudios 2022','Pendiente',NULL,'TD03'),
	   ('DC014','Otra entidad','Centro de Salud Conchán','2026-07-06','08:20','2026-07-07','Oficio campaña de vacunación escolar','Derivado','Derivado a coordinación de tutoría','TD05'),
	   ('DC015','UGEL','UGEL Chota','2026-08-03','11:00',NULL,'Oficio de convocatoria a la ONEM 2026','Pendiente',NULL,'TD05'),
	   ('DC016','Estudiante','Shirley Madeleine Díaz Cabanillas','2026-08-17','12:35',NULL,'Solicitud de rectificación de nombre','Observado','Adjuntar partida de nacimiento','TD07'),
	   ('DC017','Apoderado','Edita Tapia Rojas','2026-09-08','09:10',NULL,'Solicitud de constancia de vacante','Pendiente',NULL,'TD06'),
	   ('DC018','Docente','Rosa Marleni Cieza Bustamante','2026-10-05','08:05','2026-10-06','Informe de tutoría del III bimestre','Aprobado',NULL,'TD09'),
	   ('DC019','Apoderado','Hilario Mendoza Silva','2026-10-19','09:40',NULL,'Solicitud de matrícula de estudiante','Observado','Falta ficha y copia de DNI','TD01'),
	   ('DC020','UGEL','UGEL Chota','2026-10-26','10:15','2026-10-28','Oficio sobre cierre de nóminas SIAGIE','Derivado','Derivado a Dirección','TD05'),
	   ('DC021','UGEL','UGEL Chota','2026-03-12','11:00','2026-03-13','Resolución de conformación del CONEI','Aprobado','Archivada en Dirección','TD15'),
	   ('DC022','UGEL','UGEL Chota','2026-03-16','10:00','2026-03-20','Solicitud de información de nómina docente','Aprobado','Respondido con Oficio N° 012-2026','TD12'),
	   ('DC023','UGEL','UGEL Chota','2026-04-06','11:20','2026-04-10','Reporte estadístico de matrícula al 31/03','Aprobado','Enviado por SIAGIE','TD16'),
	   ('DC024','Docente','Walter Eduardo Vásquez Llamo','2026-04-22','08:30','2026-04-23','Solicitud de permiso por capacitación','Aprobado','Con visto bueno de Dirección','TD13'),
	   ('DC025','Docente','Lucio Heriberto Sánchez Cabrera','2026-05-18','12:15','2026-05-19','Permiso para acompañar a estudiantes a la ONEM','Aprobado',NULL,'TD13'),
	   ('DC026','UGEL','UGEL Chota','2026-05-25','09:50',NULL,'Solicitud de información sobre infraestructura','Pendiente','Plazo de respuesta: 5 días hábiles','TD12'),
	   ('DC027','Otra entidad','Municipalidad Distrital de Conchán','2026-06-22','10:30','2026-06-24','Invitación a desfile cívico por aniversario','Derivado','Derivado a docente de Educación Física','TD17'),
	   ('DC028','Docente','Karina Yuliana Llamo Terrones','2026-09-30','09:00','2026-10-02','Informe de coordinación del área de Inglés','Aprobado',NULL,'TD09'),
	   ('DC029','I.E.','I.E. N° 101062 Conchán','2026-09-14','09:20',NULL,'Solicitud de nómina de ingresantes 2027','Pendiente',NULL,'TD12'),
	   ('DC030','Apoderado','Teodoro Díaz Cubas','2026-09-21','08:55','2026-09-23','Solicitud de duplicado de constancia','Aprobado',NULL,'TD18'),
	   ('DC031','UGEL','UGEL Chota','2026-10-12','10:45','2026-10-16','Memorando de supervisión pedagógica','Derivado','Derivado a docentes y coordinadores','TD14'),
	   ('DC032','Docente','Luz Mery Salazar Vigil','2026-11-02','07:45',NULL,'Licencia por descanso médico','Observado','Adjunta CITT; falta visto bueno','TD13')

-- Verificación de cantidades--
SELECT 'Institucion_Procedencia' Tabla, COUNT(*) Registros FROM Institucion_Procedencia UNION ALL
SELECT 'Estudiante', COUNT(*) FROM Estudiante UNION ALL
SELECT 'Apoderado', COUNT(*) FROM Apoderado UNION ALL
SELECT 'Estudiante_Apoderado', COUNT(*) FROM Estudiante_Apoderado UNION ALL
SELECT 'Aula', COUNT(*) FROM Aula UNION ALL
SELECT 'Docente', COUNT(*) FROM Docente UNION ALL
SELECT 'Seccion', COUNT(*) FROM Seccion UNION ALL
SELECT 'Area', COUNT(*) FROM Area UNION ALL
SELECT 'Direccion', COUNT(*) FROM Direccion UNION ALL
SELECT 'Matricula', COUNT(*) FROM Matricula UNION ALL
SELECT 'Horario', COUNT(*) FROM Horario UNION ALL
SELECT 'Asistencia', COUNT(*) FROM Asistencia UNION ALL
SELECT 'Justificante', COUNT(*) FROM Justificante UNION ALL
SELECT 'Documento_evidencia', COUNT(*) FROM Documento_evidencia UNION ALL
SELECT 'Tipo_documento', COUNT(*) FROM Tipo_documento UNION ALL
SELECT 'Requisito', COUNT(*) FROM Requisito UNION ALL
SELECT 'Detalle_Requisito', COUNT(*) FROM Detalle_Requisito UNION ALL
SELECT 'Documento', COUNT(*) FROM Documento
GO
