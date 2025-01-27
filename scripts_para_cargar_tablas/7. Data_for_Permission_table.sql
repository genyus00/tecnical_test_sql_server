-- Eliminar todos los datos de la tabla Permission
DELETE FROM dbo.Permission;

-- Reiniciar el valor de la clave primaria (IDENTITY)
DBCC CHECKIDENT ('dbo.Permission', RESEED, -1);

/* Data for the 'dbo.Permission' table  (Records 1 - 64) */

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Sin Permisos', N'No tiene ningún permiso asignado', 0, 0, 0, 0, 0, 0)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Create', N'Permiso para create registros', 1, 0, 0, 0, 0, 0)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Read', N'Permiso para read registros', 0, 1, 0, 0, 0, 0)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Update', N'Permiso para update registros', 0, 0, 1, 0, 0, 0)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Delete', N'Permiso para delete registros', 0, 0, 0, 1, 0, 0)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Import', N'Permiso para import registros', 0, 0, 0, 0, 1, 0)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Export', N'Permiso para export registros', 0, 0, 0, 0, 0, 1)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Create y Read', N'Permiso para create y read registros', 1, 1, 0, 0, 0, 0)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Create y Update', N'Permiso para create y update registros', 1, 0, 1, 0, 0, 0)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Create y Delete', N'Permiso para create y delete registros', 1, 0, 0, 1, 0, 0)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Create y Import', N'Permiso para create y import registros', 1, 0, 0, 0, 1, 0)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Create y Export', N'Permiso para create y export registros', 1, 0, 0, 0, 0, 1)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Read y Update', N'Permiso para read y update registros', 0, 1, 1, 0, 0, 0)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Read y Delete', N'Permiso para read y delete registros', 0, 1, 0, 1, 0, 0)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Read y Import', N'Permiso para read y import registros', 0, 1, 0, 0, 1, 0)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Read y Export', N'Permiso para read y export registros', 0, 1, 0, 0, 0, 1)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Update y Delete', N'Permiso para update y delete registros', 0, 0, 1, 1, 0, 0)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Update y Import', N'Permiso para update y import registros', 0, 0, 1, 0, 1, 0)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Update y Export', N'Permiso para update y export registros', 0, 0, 1, 0, 0, 1)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Delete y Import', N'Permiso para delete y import registros', 0, 0, 0, 1, 1, 0)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Delete y Export', N'Permiso para delete y export registros', 0, 0, 0, 1, 0, 1)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Import y Export', N'Permiso para import y export registros', 0, 0, 0, 0, 1, 1)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Create y Read y Update', N'Permiso para create y read y update registros', 1, 1, 1, 0, 0, 0)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Create y Read y Delete', N'Permiso para create y read y delete registros', 1, 1, 0, 1, 0, 0)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Create y Read y Import', N'Permiso para create y read y import registros', 1, 1, 0, 0, 1, 0)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Create y Read y Export', N'Permiso para create y read y export registros', 1, 1, 0, 0, 0, 1)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Create y Update y Delete', N'Permiso para create y update y delete registros', 1, 0, 1, 1, 0, 0)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Create y Update y Import', N'Permiso para create y update y import registros', 1, 0, 1, 0, 1, 0)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Create y Update y Export', N'Permiso para create y update y export registros', 1, 0, 1, 0, 0, 1)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Create y Delete y Import', N'Permiso para create y delete y import registros', 1, 0, 0, 1, 1, 0)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Create y Delete y Export', N'Permiso para create y delete y export registros', 1, 0, 0, 1, 0, 1)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Create y Import y Export', N'Permiso para create y import y export registros', 1, 0, 0, 0, 1, 1)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Read y Update y Delete', N'Permiso para read y update y delete registros', 0, 1, 1, 1, 0, 0)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Read y Update y Import', N'Permiso para read y update y import registros', 0, 1, 1, 0, 1, 0)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Read y Update y Export', N'Permiso para read y update y export registros', 0, 1, 1, 0, 0, 1)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Read y Delete y Import', N'Permiso para read y delete y import registros', 0, 1, 0, 1, 1, 0)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Read y Delete y Export', N'Permiso para read y delete y export registros', 0, 1, 0, 1, 0, 1)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Read y Import y Export', N'Permiso para read y import y export registros', 0, 1, 0, 0, 1, 1)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Update y Delete y Import', N'Permiso para update y delete y import registros', 0, 0, 1, 1, 1, 0)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Update y Delete y Export', N'Permiso para update y delete y export registros', 0, 0, 1, 1, 0, 1)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Update y Import y Export', N'Permiso para update y import y export registros', 0, 0, 1, 0, 1, 1)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Delete y Import y Export', N'Permiso para delete y import y export registros', 0, 0, 0, 1, 1, 1)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Create y Read y Update y Delete', N'Permiso para create y read y update y delete registros', 1, 1, 1, 1, 0, 0)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Create y Read y Update y Import', N'Permiso para create y read y update y import registros', 1, 1, 1, 0, 1, 0)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Create y Read y Update y Export', N'Permiso para create y read y update y export registros', 1, 1, 1, 0, 0, 1)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Create y Read y Delete y Import', N'Permiso para create y read y delete y import registros', 1, 1, 0, 1, 1, 0)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Create y Read y Delete y Export', N'Permiso para create y read y delete y export registros', 1, 1, 0, 1, 0, 1)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Create y Read y Import y Export', N'Permiso para create y read y import y export registros', 1, 1, 0, 0, 1, 1)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Create y Update y Delete y Import', N'Permiso para create y update y delete y import registros', 1, 0, 1, 1, 1, 0)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Create y Update y Delete y Export', N'Permiso para create y update y delete y export registros', 1, 0, 1, 1, 0, 1)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Create y Update y Import y Export', N'Permiso para create y update y import y export registros', 1, 0, 1, 0, 1, 1)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Create y Delete y Import y Export', N'Permiso para create y delete y import y export registros', 1, 0, 0, 1, 1, 1)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Read y Update y Delete y Import', N'Permiso para read y update y delete y import registros', 0, 1, 1, 1, 1, 0)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Read y Update y Delete y Export', N'Permiso para read y update y delete y export registros', 0, 1, 1, 1, 0, 1)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Read y Update y Import y Export', N'Permiso para read y update y import y export registros', 0, 1, 1, 0, 1, 1)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Read y Delete y Import y Export', N'Permiso para read y delete y import y export registros', 0, 1, 0, 1, 1, 1)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Update y Delete y Import y Export', N'Permiso para update y delete y import y export registros', 0, 0, 1, 1, 1, 1)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Create y Read y Update y Delete y Import', N'Permiso para create y read y update y delete y import registros', 1, 1, 1, 1, 1, 0)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Create y Read y Update y Delete y Export', N'Permiso para create y read y update y delete y export registros', 1, 1, 1, 1, 0, 1)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Create y Read y Update y Import y Export', N'Permiso para create y read y update y import y export registros', 1, 1, 1, 0, 1, 1)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Create y Read y Delete y Import y Export', N'Permiso para create y read y delete y import y export registros', 1, 1, 0, 1, 1, 1)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Create y Update y Delete y Import y Export', N'Permiso para create y update y delete y import y export registros', 1, 0, 1, 1, 1, 1)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Read y Update y Delete y Import y Export', N'Permiso para read y update y delete y import y export registros', 0, 1, 1, 1, 1, 1)
GO

INSERT INTO dbo.Permission (name, description, can_create, can_read, can_update, can_delete, can_import, can_export)
VALUES (N'Create y Read y Update y Delete y Import y Export', N'Permiso para create y read y update y delete y import y export registros', 1, 1, 1, 1, 1, 1)
GO