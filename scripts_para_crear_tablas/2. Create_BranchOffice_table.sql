CREATE TABLE dbo.BranchOffice (
  id_broff bigint IDENTITY(1, 1) NOT NULL,
  company_id bigint NOT NULL,
  broff_name nvarchar(255) COLLATE Modern_Spanish_CI_AS NOT NULL,
  broff_code nvarchar(255) COLLATE Modern_Spanish_CI_AS NOT NULL,
  broff_address nvarchar(255) COLLATE Modern_Spanish_CI_AS NOT NULL,
  broff_city nvarchar(255) COLLATE Modern_Spanish_CI_AS NOT NULL,
  broff_state nvarchar(255) COLLATE Modern_Spanish_CI_AS NOT NULL,
  broff_country nvarchar(255) COLLATE Modern_Spanish_CI_AS NOT NULL,
  broff_phone nvarchar(255) COLLATE Modern_Spanish_CI_AS NOT NULL,
  broff_email nvarchar(255) COLLATE Modern_Spanish_CI_AS NOT NULL,
  broff_active bit DEFAULT 1 NOT NULL,
  PRIMARY KEY CLUSTERED (id_broff)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON),
  CONSTRAINT UQ_Company_BranchCode UNIQUE (company_id, broff_code)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON),
  CONSTRAINT FK_BranchOffice_Company FOREIGN KEY (company_id) 
  REFERENCES dbo.Company (id_compa) 
  ON UPDATE CASCADE
  ON DELETE NO ACTION
)
ON [PRIMARY]
GO

EXEC sp_addextendedproperty 'MS_Description', N'Representa un establecimiento físico o punto de operación 
que pertenece a una compañía específica.

Funcion:
1. Gestión y control de múltiples ubicaciones de una misma empresa.
2. Organización de operaciones por punto de venta o servicio.
3. Seguimiento y análisis de desempeño por sucursal.
4. Asignación y control de recursos específicos por ubicación.
5. Facilitar la gestión descentralizada de operaciones empresariales.

Creado por:@RJimenez
Fecha: 08/01/2025', N'schema', N'dbo', N'table', N'BranchOffice'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Identificador único para la sucursal', N'schema', N'dbo', N'table', N'BranchOffice', N'column', N'id_broff'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Compañía a la que pertenece esta sucursal', N'schema', N'dbo', N'table', N'BranchOffice', N'column', N'company_id'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Nombre descriptivo de la sucursal', N'schema', N'dbo', N'table', N'BranchOffice', N'column', N'broff_name'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Código único que identifica la sucursal dentro de la empresa', N'schema', N'dbo', N'table', N'BranchOffice', N'column', N'broff_code'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Dirección física de la sucursal', N'schema', N'dbo', N'table', N'BranchOffice', N'column', N'broff_address'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Ciudad donde está ubicada la sucursal', N'schema', N'dbo', N'table', N'BranchOffice', N'column', N'broff_city'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Departamento o estado donde está ubicada la sucursal', N'schema', N'dbo', N'table', N'BranchOffice', N'column', N'broff_state'
GO

EXEC sp_addextendedproperty 'MS_Description', N'País donde está ubicada la sucursal', N'schema', N'dbo', N'table', N'BranchOffice', N'column', N'broff_country'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Número de teléfono de la sucursal', N'schema', N'dbo', N'table', N'BranchOffice', N'column', N'broff_phone'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Dirección de correo electrónico de la sucursal', N'schema', N'dbo', N'table', N'BranchOffice', N'column', N'broff_email'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Indica si la sucursal está activa (1) o inactiva (0)', N'schema', N'dbo', N'table', N'BranchOffice', N'column', N'broff_active'
GO