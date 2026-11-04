CREATE DATABASE BD_JCM
GO

USE BD_JCM
GO

CREATE TABLE Institucion_Procedencia(
Codigo_modular int primary key not null,
Razon_social varchar(50) not null
)

CREATE TABLE Estudiante(
ID_Estudiante varchar(5) primary key not null,-- esto para poder poner letras tambien qwq como E0001 -- 
Nombre varchar(30) not null, 
Apellido_paterno varchar(40) not null,
Apellido_materno varchar(40) not null,
DNI varchar(8) unique check(len(DNI) = 8 and DNI not like '%[^0-9]%') not null,
Fecha_nacimiento date check (year(Fecha_nacimiento) >= 1800 and year(Fecha_nacimiento) <= year(getdate())) not null, 
-- con esto hacemos que el año de nacimiento sea mayor a 1800 y que no sea mayor al año actual--
Edad as (datediff (year, Fecha_nacimiento, getdate())),
Sexo varchar(1) check (Sexo in ('F', 'M')) not null, -- F= femenino, M= masculino -- 
Historial_enfermedades varchar(200),
Celular char(9) check (len(Celular) = 9 and Celular not like '%[^0-9]%'),
-- para 9 digitos max, y que sean solo numeros
Lugar_procedencia varchar(40) not null,
CM_IE int not null, -- codigo modular de I.E. de procedencia
Foreign key (CM_IE) references Institucion_Procedencia(Codigo_modular)
)

CREATE TABLE Apoderado(
ID_Apoderado varchar(5) primary key not null,
Nombre varchar(30) not null, 
Apellido_paterno varchar(40) not null,
Apellido_materno varchar(40) not null,
DNI varchar(8) unique check(len(DNI) = 8 and DNI not like '%[^0-9]%') not null,
Sexo varchar(1) check (Sexo in ('F', 'M')) not null,
Celular char(9) check (len(Celular) = 9 and Celular not like '%[^0-9]%'),
Lugar_procedencia varchar(40) not null
)

CREATE TABLE Estudiante_Apoderado( --entidad debil que asocia estudiante y apoderado --
Parentesco varchar(20) check (Parentesco in('Padre', 'Madre','Tutor legal', 'Abuelo/a', 'Hermano/a mayor', 'Tío/a', 'Familiar')),
Fecha_asignacion date default getdate() not null,
Observacion varchar(50),
IDEst varchar(5) not null, --id estudiante--
IDApo varchar(5) not null, --id apoderado--
Primary key (IDEst, IDApo), --pk compuesta --
Foreign key (IDEst) references Estudiante(ID_Estudiante),
Foreign key (IDApo) references Apoderado(ID_Apoderado)
)

CREATE TABLE Aula(
ID_Aula int identity primary key not null,
Piso int check (Piso between 1 and 2) not null,
Tipo varchar(40) not null,
Aforo int check (Aforo > 30) not null
)

CREATE TABLE Docente(
ID_Docente varchar(5) primary key not null,
Nombre varchar(30) not null, 
Apellido_paterno varchar(40) not null,
Apellido_materno varchar(40) not null,
DNI varchar(8) unique check(len(DNI) = 8 and DNI not like '%[^0-9]%') not null,
Sexo varchar(1) check (Sexo in ('F', 'M')) not null,
Celular char(9) check (len(Celular) = 9 and Celular not like '%[^0-9]%'),
Tipo varchar(20) check (Tipo in ('Tutor', 'Docente', 'Practicante', 'Coordinador', 'Sustituto', 'Director'))
)

CREATE TABLE Seccion(
ID_Seccion int identity primary key not null,
Grado int check (Grado between 1 and 5) not null,
Seccion char(1) check (Seccion not like '%[^A-Z]%') not null, --para que no sea numeros
Anio_vigente int check (Anio_vigente >= 2020 and Anio_vigente <= year(getdate())) default year(getdate()) not null,
-- para que el año sea superior a 2020, menor o igual al año actual (no hay amtricula adelantada) y por defecto el año actual --
IDAula int not null,
IDTutor varchar(5) not null, -- es docente pero para a seccion como tutor
Foreign key (IDAula) references Aula(ID_Aula),
Foreign key (IDTutor) references Docente(ID_Docente)
)

CREATE TABLE Area(
ID_Area varchar(5)primary key not null,
Nombre varchar(25) not null,
N_horas decimal(3,1) check (N_horas > 0) not null --para poner 2.5, maximo con dos digitos enteros--
)

CREATE TABLE Direccion(
ID_Direccion varchar(5) primary key not null,
Nomenclatura varchar(7) not null,
Nombre_calle varchar(40) not null,
Numero int check (Numero > 0) not null,
Ciudad varchar(40) not null,
IDDoc varchar(5) not null,
Foreign key (IDDoc) references Docente(ID_Docente)
)

CREATE TABLE Matricula(
ID_Matricula varchar(5) primary key not null,
Fecha date default getdate() check (Fecha <= getdate()) not null,
Anio_lectivo int check (Anio_lectivo >= 2020 and Anio_lectivo <= year(getdate())) default year(getdate()) not null,
Estado varchar(20) check(Estado in ('Pendiente', 'Finalizado', 'Cancelado', 'Traslado', 'Retirado', 'Suspendido')) not null,
Observacion varchar(50),
IDEstu varchar(5) not null,
IDSecc int,
Foreign key (IDEstu) references Estudiante(ID_Estudiante),
Foreign key (IDSecc) references Seccion(ID_Seccion)
)

CREATE TABLE Horario(
ID_Horario varchar(4) primary key not null,
Dia varchar(10) check (Dia in ('Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes')) not null,
Hora_inicio time not null, --debe ser time, o termina trayendo a la fecha y hora, repitiendo con lo de date--
Hora_fin time not null,
-- esto para que no sean ceros ni negativos y la hora de fin sea mayor a la de fin--
IDDoc varchar(5) not null,
IDSecc int,
IDArea varchar(5),
Foreign key (IDDoc) references Docente(ID_Docente),
Foreign key (IDSecc) references Seccion(ID_Seccion),
Foreign key (IDArea) references Area(ID_Area),
Check (Hora_fin > Hora_inicio) --segun el error 8141, debe ir separado porque son de la misma tabla--
)

CREATE TABLE Asistencia(
ID_Asistencia varchar(7) primary key not null,
Estado varchar(20) check (Estado in ('Asistencia', 'Tardanza', 'Ausencia justificada', 'Falta')) default 'Asistencia' not null,
Fecha date default getdate() not null,
Hora_ingreso time,
Hora_salida time,
Observacion varchar(50),
IDDoc varchar(5) not null,
IDHor varchar(4) not null,
Foreign key (IDDoc) references Docente(ID_Docente),
Foreign Key (IDHor) references Horario(ID_Horario),
Check (Hora_salida > Hora_ingreso)
)

CREATE TABLE Justificante(
ID_Justificante varchar(4) primary key not null,
Tipo varchar(30) not null,
Descripcion varchar(50) not null,
IDAsis varchar(7) not null,
Foreign key (IDAsis) references Asistencia(ID_Asistencia)
)

CREATE TABLE Documento_evidencia(
ID_Evidencia int identity primary key not null,
Identificador varchar(40) not null, --´puede ser tanto nombre de documento como codigo de la evidencia--
IDJust varchar(4) not null,
Foreign key (IDJust) references Justificante(ID_Justificante)
)

CREATE TABLE Tipo_documento(
ID_TipoDoc varchar(4) primary key not null,
Nombre varchar(30) not null
)

CREATE TABLE Requisito(
ID_Requisito varchar(4) primary key not null, 
Nombre varchar(30) not null
)

CREATE TABLE Detalle_Requisito( --entidad debil--
Obligatoriedad bit default 1 not null,
IDTD varchar(4) not null,
IDReq varchar(4) not null,
Primary key (IDTD, IDReq), -- pk compuesta--
Foreign key (IDTD) references Tipo_documento(ID_TipoDoc),
Foreign key (IDReq) references Requisito(ID_Requisito)
)

CREATE TABLE Documento(
ID_Documento varchar(5) primary key not null,
Tipo_remitente varchar(15) check(Tipo_remitente in ('UGEL', 'Docente', 'Estudiante', 'Apoderado', 'Ex-alumno', 'I.E.', 'Otra entidad')) not null,
Razon_social varchar(50) not null,
Fecha_recepcion date default getdate() not null,
Hora_recepcion time not null,
Fecha_resolucion date,
Motivo varchar(50) not null,
Estado varchar(20) check(Estado in('Pendiente', 'Aprobado', 'Rechazado', 'Observado', 'Derivado')) not null,
Observacion varchar(50),
IDTD varchar(4) not null,
Foreign key (IDTD) references Tipo_documento(ID_TipoDoc),
Check(Fecha_resolucion > Fecha_recepcion)
)