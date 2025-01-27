-- Eliminar todos los datos de la tabla Company
DELETE FROM dbo.Company;

-- Reiniciar el valor de la clave primaria (IDENTITY)
DBCC CHECKIDENT ('dbo.Company', RESEED, 0);

/* Data for the 'dbo.Company' table  (Records 1 - 1) */

INSERT INTO dbo.Company (compa_name, compa_tradename, compa_doctype, compa_docnum, compa_address, compa_city, compa_state, compa_country, compa_industry, compa_phone, compa_email, compa_website, compa_logo, compa_active)
VALUES (N'Tech Solutions Inc.', N'TechSol', N'NI', N'123456789', N'123 Main Street', N'Bogotá', N'Cundinamarca', N'Colombia', N'Tecnología', N'+57 300 1234567', N'info@techsolutions.com', N'https://www.techsolutions.com', NULL, 1)
GO