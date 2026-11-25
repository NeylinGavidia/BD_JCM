-- creacion de roles
-- roles de servidor y de BD
USE master
GO

-- creacion de login
CREATE LOGIN Login_Directora
WITH PASSWORD = 'Directora27'

USE [BD_JCM]

CREATE USER Directora
FOR LOGIN Login_Directora

ALTER ROLE [db_owner]
ADD MEMBER Directora