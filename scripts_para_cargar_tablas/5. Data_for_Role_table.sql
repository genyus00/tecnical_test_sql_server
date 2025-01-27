-- Eliminar todos los datos de la tabla Role
DELETE FROM dbo.Role;

-- Reiniciar el valor de la clave primaria (IDENTITY)
DBCC CHECKIDENT ('dbo.Role', RESEED, 0);

/* Data for the 'dbo.Role' table  (Records 1 - 2) */

INSERT INTO dbo.Role (role_name, role_code, role_description, role_active)
VALUES (N'Administrador', N'ADMIN', N'Rol con todos los permisos para gestionar la compañía.', 1)
GO

INSERT INTO dbo.Role (role_name, role_code, role_description, role_active)
VALUES (N'Usuario Estándar', N'USER', N'Rol con permisos limitados para acceder a funcionalidades básicas.', 1)
GO