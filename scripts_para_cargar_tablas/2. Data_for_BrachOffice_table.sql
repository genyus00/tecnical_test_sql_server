-- Eliminar todos los datos de la tabla BranchOffice
DELETE FROM dbo.BranchOffice;

-- Reiniciar el valor de la clave primaria (IDENTITY)
DBCC CHECKIDENT ('dbo.BranchOffice', RESEED, 0);

/* Data for the 'dbo.BranchOffice' table  (Records 1 - 10) */

INSERT INTO dbo.BranchOffice (company_id, broff_name, broff_code, broff_address, broff_city, broff_state, broff_country, broff_phone, broff_email, broff_active)
VALUES (1, N'Sucursal Principal Bogotá', N'TS-BG001', N'123 Main Street', N'Bogotá', N'Cundinamarca', N'Colombia', N'+57 300 1234568', N'sucursal_bogota@techsolutions.com', 1)
GO

INSERT INTO dbo.BranchOffice (company_id, broff_name, broff_code, broff_address, broff_city, broff_state, broff_country, broff_phone, broff_email, broff_active)
VALUES (1, N'Sucursal Santa Marta', N'TS-ME002', N'456 Secondary Street', N'Santa Marta', N'Magdalena', N'Colombia', N'+57 300 9876542', N'sucursal_medellin@techsolutions.com', 1)
GO

INSERT INTO dbo.BranchOffice (company_id, broff_name, broff_code, broff_address, broff_city, broff_state, broff_country, broff_phone, broff_email, broff_active)
VALUES (1, N'Sucursal Cali', N'TS-CL003', N'789 Tertiary Street', N'Cali', N'Valle del Cauca', N'Colombia', N'+57 300 4567890', N'sucursal_cali@techsolutions.com', 1)
GO

INSERT INTO dbo.BranchOffice (company_id, broff_name, broff_code, broff_address, broff_city, broff_state, broff_country, broff_phone, broff_email, broff_active)
VALUES (1, N'Sucursal Barranquilla', N'TS-BQ004', N'1011 Coastal Road', N'Barranquilla', N'Atlántico', N'Colombia', N'+57 300 6543210', N'sucursal_barranquilla@techsolutions.com', 1)
GO

INSERT INTO dbo.BranchOffice (company_id, broff_name, broff_code, broff_address, broff_city, broff_state, broff_country, broff_phone, broff_email, broff_active)
VALUES (1, N'Sucursal Medellín', N'TS-ME005', N'1213 Industrial Avenue', N'Medellín', N'Antioquia', N'Colombia', N'+57 300 7890123', N'sucursal_medellin@techsolutions.com', 1)
GO

INSERT INTO dbo.BranchOffice (company_id, broff_name, broff_code, broff_address, broff_city, broff_state, broff_country, broff_phone, broff_email, broff_active)
VALUES (1, N'Sucursal Cartagena', N'TS-CT006', N'1415 Historical Plaza', N'Cartagena', N'Bolívar', N'Colombia', N'+57 300 8765432', N'sucursal_cartagena@techsolutions.com', 1)
GO

INSERT INTO dbo.BranchOffice (company_id, broff_name, broff_code, broff_address, broff_city, broff_state, broff_country, broff_phone, broff_email, broff_active)
VALUES (1, N'Sucursal Bucaramanga', N'TS-BU007', N'1617 Mountain View', N'Bucaramanga', N'Santander', N'Colombia', N'+57 300 2345678', N'sucursal_bucaramanga@techsolutions.com', 1)
GO

INSERT INTO dbo.BranchOffice (company_id, broff_name, broff_code, broff_address, broff_city, broff_state, broff_country, broff_phone, broff_email, broff_active)
VALUES (1, N'Sucursal Pereira', N'TS-PR008', N'1819 Coffee Lane', N'Pereira', N'Risaralda', N'Colombia', N'+57 300 5678901', N'sucursal_pereira@techsolutions.com', 1)
GO

INSERT INTO dbo.BranchOffice (company_id, broff_name, broff_code, broff_address, broff_city, broff_state, broff_country, broff_phone, broff_email, broff_active)
VALUES (1, N'Sucursal Manizales', N'TS-MN009', N'2021 Andean Path', N'Manizales', N'Caldas', N'Colombia', N'+57 300 3456789', N'sucursal_manizales@techsolutions.com', 1)
GO

INSERT INTO dbo.BranchOffice (company_id, broff_name, broff_code, broff_address, broff_city, broff_state, broff_country, broff_phone, broff_email, broff_active)
VALUES (1, N'Sucursal Pasto', N'TS-PS010', N'2223 Southern Blvd', N'Pasto', N'Nariño', N'Colombia', N'+57 300 6789012', N'sucursal_pasto@techsolutions.com', 1)
GO