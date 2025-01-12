-- Eliminar todos los datos de la tabla UserCompanyRole
DELETE FROM dbo.UserCompanyRole;

-- Reiniciar el valor de la clave primaria (IDENTITY)
DBCC CHECKIDENT ('dbo.UserCompanyRole', RESEED, 0);

/* Data for the 'dbo.UserCompanyRole' table  (Records 1 - 8) */

INSERT INTO dbo.UserCompanyRole (company_id, user_id, role_id, useco_active)
VALUES (1, 1, 1, 1)
GO

INSERT INTO dbo.UserCompanyRole (company_id, user_id, role_id, useco_active)
VALUES (1, 2, 1, 1)
GO

INSERT INTO dbo.UserCompanyRole (company_id, user_id, role_id, useco_active)
VALUES (1, 3, 1, 1)
GO

INSERT INTO dbo.UserCompanyRole (company_id, user_id, role_id, useco_active)
VALUES (1, 4, 1, 1)
GO

INSERT INTO dbo.UserCompanyRole (company_id, user_id, role_id, useco_active)
VALUES (1, 5, 2, 1)
GO

INSERT INTO dbo.UserCompanyRole (company_id, user_id, role_id, useco_active)
VALUES (1, 6, 2, 1)
GO

INSERT INTO dbo.UserCompanyRole (company_id, user_id, role_id, useco_active)
VALUES (1, 7, 2, 1)
GO

INSERT INTO dbo.UserCompanyRole (company_id, user_id, role_id, useco_active)
VALUES (1, 8, 2, 1)
GO