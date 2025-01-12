-- Eliminar todos los datos de la tabla PermiRoleRecord
DELETE FROM dbo.PermiRoleRecord;

-- Reiniciar el valor de la clave primaria (IDENTITY)
DBCC CHECKIDENT ('dbo.PermiRoleRecord', RESEED, 0);

/* Data for the 'dbo.PermiRoleRecord' table  (Records 1 - 4) */

INSERT INTO dbo.PermiRoleRecord (role_id, entitycatalog_id, perrc_record, permission_id, perol_include)
VALUES (1, 1, 2, 10, 1)
GO

INSERT INTO dbo.PermiRoleRecord (role_id, entitycatalog_id, perrc_record, permission_id, perol_include)
VALUES (1, 1, 8, 15, 0)
GO

INSERT INTO dbo.PermiRoleRecord (role_id, entitycatalog_id, perrc_record, permission_id, perol_include)
VALUES (2, 2, 5, 22, 1)
GO

INSERT INTO dbo.PermiRoleRecord (role_id, entitycatalog_id, perrc_record, permission_id, perol_include)
VALUES (2, 2, 9, 33, 0)
GO