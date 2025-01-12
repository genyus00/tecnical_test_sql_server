-- Eliminar todos los datos de la tabla PermiUser
DELETE FROM dbo.PermiUser;

-- Reiniciar el valor de la clave primaria (IDENTITY)
DBCC CHECKIDENT ('dbo.PermiUser', RESEED, 0);

/* Data for the 'dbo.PermiUser' table  (Records 1 - 16) */

INSERT INTO dbo.PermiUser (entitycatalog_id, usercompany_id, permission_id, peusr_include)
VALUES (1, 1, 63, 1)
GO

INSERT INTO dbo.PermiUser (entitycatalog_id, usercompany_id, permission_id, peusr_include)
VALUES (1, 2, 63, 1)
GO

INSERT INTO dbo.PermiUser (entitycatalog_id, usercompany_id, permission_id, peusr_include)
VALUES (1, 3, 63, 1)
GO

INSERT INTO dbo.PermiUser (entitycatalog_id, usercompany_id, permission_id, peusr_include)
VALUES (1, 4, 63, 1)
GO

INSERT INTO dbo.PermiUser (entitycatalog_id, usercompany_id, permission_id, peusr_include)
VALUES (1, 5, 15, 1)
GO

INSERT INTO dbo.PermiUser (entitycatalog_id, usercompany_id, permission_id, peusr_include)
VALUES (1, 6, 15, 1)
GO

INSERT INTO dbo.PermiUser (entitycatalog_id, usercompany_id, permission_id, peusr_include)
VALUES (1, 7, 15, 1)
GO

INSERT INTO dbo.PermiUser (entitycatalog_id, usercompany_id, permission_id, peusr_include)
VALUES (1, 8, 15, 1)
GO

INSERT INTO dbo.PermiUser (entitycatalog_id, usercompany_id, permission_id, peusr_include)
VALUES (2, 1, 63, 1)
GO

INSERT INTO dbo.PermiUser (entitycatalog_id, usercompany_id, permission_id, peusr_include)
VALUES (2, 2, 63, 1)
GO

INSERT INTO dbo.PermiUser (entitycatalog_id, usercompany_id, permission_id, peusr_include)
VALUES (2, 3, 63, 1)
GO

INSERT INTO dbo.PermiUser (entitycatalog_id, usercompany_id, permission_id, peusr_include)
VALUES (2, 4, 63, 1)
GO

INSERT INTO dbo.PermiUser (entitycatalog_id, usercompany_id, permission_id, peusr_include)
VALUES (2, 5, 15, 1)
GO

INSERT INTO dbo.PermiUser (entitycatalog_id, usercompany_id, permission_id, peusr_include)
VALUES (2, 6, 15, 1)
GO

INSERT INTO dbo.PermiUser (entitycatalog_id, usercompany_id, permission_id, peusr_include)
VALUES (2, 7, 15, 1)
GO

INSERT INTO dbo.PermiUser (entitycatalog_id, usercompany_id, permission_id, peusr_include)
VALUES (2, 8, 15, 1)
GO