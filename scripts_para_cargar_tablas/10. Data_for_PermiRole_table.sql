-- Eliminar todos los datos de la tabla PermiRole
DELETE FROM dbo.PermiRole;

-- Reiniciar el valor de la clave primaria (IDENTITY)
DBCC CHECKIDENT ('dbo.PermiRole', RESEED, 0);

/* Data for the 'dbo.PermiRole' table  (Records 1 - 4) */

INSERT INTO dbo.PermiRole (role_id, entitycatalog_id, permission_id, perol_include)
VALUES (1, 1, 63, 1)
GO

INSERT INTO dbo.PermiRole (role_id, entitycatalog_id, permission_id, perol_include)
VALUES (1, 2, 63, 1)
GO

INSERT INTO dbo.PermiRole (role_id, entitycatalog_id, permission_id, perol_include)
VALUES (2, 1, 15, 1)
GO

INSERT INTO dbo.PermiRole (role_id, entitycatalog_id, permission_id, perol_include)
VALUES (2, 2, 15, 1)
GO