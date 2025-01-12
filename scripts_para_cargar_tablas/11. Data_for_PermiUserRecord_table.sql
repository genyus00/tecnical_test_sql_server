-- Eliminar todos los datos de la tabla PermiUserRecord
DELETE FROM dbo.PermiUserRecord;

-- Reiniciar el valor de la clave primaria (IDENTITY)
DBCC CHECKIDENT ('dbo.PermiUserRecord', RESEED, 0);

/* Data for the 'dbo.PermiUserRecord' table  (Records 1 - 4) */

INSERT INTO dbo.PermiUserRecord (usercompany_id, permission_id, entitycatalog_id, peusr_record, peusr_include)
VALUES (5, 40, 1, 3, 1)
GO

INSERT INTO dbo.PermiUserRecord (usercompany_id, permission_id, entitycatalog_id, peusr_record, peusr_include)
VALUES (1, 13, 1, 10, 0)
GO

INSERT INTO dbo.PermiUserRecord (usercompany_id, permission_id, entitycatalog_id, peusr_record, peusr_include)
VALUES (5, 51, 2, 6, 1)
GO

INSERT INTO dbo.PermiUserRecord (usercompany_id, permission_id, entitycatalog_id, peusr_record, peusr_include)
VALUES (1, 61, 2, 7, 0)
GO