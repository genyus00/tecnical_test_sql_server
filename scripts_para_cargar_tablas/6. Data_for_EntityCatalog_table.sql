-- Eliminar todos los datos de la tabla EntityCatalog
DELETE FROM dbo.EntityCatalog;

-- Reiniciar el valor de la clave primaria (IDENTITY)
DBCC CHECKIDENT ('dbo.EntityCatalog', RESEED, 0);

/* Data for the 'dbo.EntityCatalog' table  (Records 1 - 2) */

INSERT INTO dbo.EntityCatalog (entit_name, entit_descrip, entit_active, entit_config)
VALUES (N'BranchOffice', N'Modelo que representa una oficina de la empresa', 1, N'{"auth": true, "fields": ["username", "email"]}')
GO

INSERT INTO dbo.EntityCatalog (entit_name, entit_descrip, entit_active, entit_config)
VALUES (N'CostCenter', N'Modelo que representa una unidad dentro de la empresa a la que se le asignan costos', 1, N'{"fields": ["name", "price", "stock"]}')
GO