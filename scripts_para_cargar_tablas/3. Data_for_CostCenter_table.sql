-- Eliminar todos los datos de la tabla CostCenter
DELETE FROM dbo.CostCenter;

-- Reiniciar el valor de la clave primaria (IDENTITY)
DBCC CHECKIDENT ('dbo.CostCenter', RESEED, 0);

/* Data for the 'dbo.CostCenter' table  (Records 1 - 10) */

INSERT INTO dbo.CostCenter (company_id, cosce_parent_id, cosce_code, cosce_name, cosce_description, cosce_budget, cosce_level, cosce_active)
VALUES (1, NULL, N'TS-CC001', N'Centro de Desarrollo', N'Responsable de investigación y desarrollo de nuevos productos.', 50000, 1, 1)
GO

INSERT INTO dbo.CostCenter (company_id, cosce_parent_id, cosce_code, cosce_name, cosce_description, cosce_budget, cosce_level, cosce_active)
VALUES (1, NULL, N'TS-CC002', N'Centro de Ventas', N'Encargado de la comercialización de productos y servicios.', 30000, 1, 1)
GO

INSERT INTO dbo.CostCenter (company_id, cosce_parent_id, cosce_code, cosce_name, cosce_description, cosce_budget, cosce_level, cosce_active)
VALUES (1, NULL, N'TS-CC003', N'Centro de Marketing', N'Responsable de la estrategia de marketing y comunicación.', 20000, 1, 1)
GO

INSERT INTO dbo.CostCenter (company_id, cosce_parent_id, cosce_code, cosce_name, cosce_description, cosce_budget, cosce_level, cosce_active)
VALUES (1, NULL, N'TS-CC004', N'Centro de Soporte', N'Encargado de brindar soporte técnico a los clientes.', 15000, 1, 1)
GO

INSERT INTO dbo.CostCenter (company_id, cosce_parent_id, cosce_code, cosce_name, cosce_description, cosce_budget, cosce_level, cosce_active)
VALUES (1, NULL, N'TS-CC005', N'Centro de Producción', N'Responsable de la fabricación y ensamblaje de productos.', 40000, 1, 1)
GO

INSERT INTO dbo.CostCenter (company_id, cosce_parent_id, cosce_code, cosce_name, cosce_description, cosce_budget, cosce_level, cosce_active)
VALUES (1, NULL, N'TS-CC006', N'Centro de Recursos Humanos', N'Gestión de talento humano y administración de nómina.', 25000, 1, 1)
GO

INSERT INTO dbo.CostCenter (company_id, cosce_parent_id, cosce_code, cosce_name, cosce_description, cosce_budget, cosce_level, cosce_active)
VALUES (1, NULL, N'TS-CC007', N'Centro de Finanzas', N'Encargado de la administración financiera y contabilidad.', 35000, 1, 1)
GO

INSERT INTO dbo.CostCenter (company_id, cosce_parent_id, cosce_code, cosce_name, cosce_description, cosce_budget, cosce_level, cosce_active)
VALUES (1, NULL, N'TS-CC008', N'Centro de Logística', N'Gestión del transporte y distribución de productos.', 30000, 1, 1)
GO

INSERT INTO dbo.CostCenter (company_id, cosce_parent_id, cosce_code, cosce_name, cosce_description, cosce_budget, cosce_level, cosce_active)
VALUES (1, NULL, N'TS-CC009', N'Centro de Innovación', N'Focalizado en la mejora de procesos y tecnologías.', 60000, 1, 1)
GO

INSERT INTO dbo.CostCenter (company_id, cosce_parent_id, cosce_code, cosce_name, cosce_description, cosce_budget, cosce_level, cosce_active)
VALUES (1, NULL, N'TS-CC010', N'Centro de Legal', N'Responsable de la gestión legal y cumplimiento normativo.', 10000, 1, 1)
GO