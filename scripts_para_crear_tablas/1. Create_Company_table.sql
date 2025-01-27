CREATE TABLE dbo.Company (
  id_compa bigint IDENTITY(1, 1) NOT NULL,
  compa_name nvarchar(255) COLLATE Modern_Spanish_CI_AS NOT NULL,
  compa_tradename nvarchar(255) COLLATE Modern_Spanish_CI_AS NOT NULL,
  compa_doctype nvarchar(2) COLLATE Modern_Spanish_CI_AS NOT NULL,
  compa_docnum nvarchar(255) COLLATE Modern_Spanish_CI_AS NOT NULL,
  compa_address nvarchar(255) COLLATE Modern_Spanish_CI_AS NOT NULL,
  compa_city nvarchar(255) COLLATE Modern_Spanish_CI_AS NOT NULL,
  compa_state nvarchar(255) COLLATE Modern_Spanish_CI_AS NOT NULL,
  compa_country nvarchar(255) COLLATE Modern_Spanish_CI_AS NOT NULL,
  compa_industry nvarchar(255) COLLATE Modern_Spanish_CI_AS NOT NULL,
  compa_phone nvarchar(255) COLLATE Modern_Spanish_CI_AS NOT NULL,
  compa_email nvarchar(255) COLLATE Modern_Spanish_CI_AS NOT NULL,
  compa_website nvarchar(255) COLLATE Modern_Spanish_CI_AS NULL,
  compa_logo nvarchar(max) COLLATE Modern_Spanish_CI_AS NULL,
  compa_active bit DEFAULT 1 NOT NULL,
  PRIMARY KEY CLUSTERED (id_compa)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON),
  CONSTRAINT CK_Company_DocType CHECK ([compa_doctype]='OT' OR [compa_doctype]='PP' OR [compa_doctype]='CE' OR [compa_doctype]='CC' OR [compa_doctype]='NI')
)
ON [PRIMARY]
GO

EXEC sp_addextendedproperty 'MS_Description', N'Representa una entidad empresarial con sus datos de identificación,
ubicación y características principales dentro del sistema ERP.

Funcion:
1. Gestión centralizada de la información básica de las empresas en el sistema.
2. Soporte para operaciones comerciales y administrativas específicas de cada empresa.
3. Cumplimiento de requisitos legales y fiscales relacionados con la identificación empresarial.
4. Base para la configuración de parámetros y políticas específicas de cada empresa.
5. Facilitar la gestión multi-empresa dentro del sistema ERP.

Creado por:@RJimenez
Fecha: 08/01/2025', N'schema', N'dbo', N'table', N'Company'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Identificador único para la compañía', N'schema', N'dbo', N'table', N'Company', N'column', N'id_compa'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Nombre legal completo de la compañía', N'schema', N'dbo', N'table', N'Company', N'column', N'compa_name'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Nombre comercial o marca de la compañía', N'schema', N'dbo', N'table', N'Company', N'column', N'compa_tradename'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Tipo de documento de identificación de la compañía', N'schema', N'dbo', N'table', N'Company', N'column', N'compa_doctype'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Número de identificación fiscal o documento legal de la compañía', N'schema', N'dbo', N'table', N'Company', N'column', N'compa_docnum'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Dirección física de la compañía', N'schema', N'dbo', N'table', N'Company', N'column', N'compa_address'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Ciudad donde está ubicada la compañía', N'schema', N'dbo', N'table', N'Company', N'column', N'compa_city'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Departamento o estado donde está ubicada la compañía', N'schema', N'dbo', N'table', N'Company', N'column', N'compa_state'
GO

EXEC sp_addextendedproperty 'MS_Description', N'País donde está ubicada la compañía', N'schema', N'dbo', N'table', N'Company', N'column', N'compa_country'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Sector industrial al que pertenece la compañía', N'schema', N'dbo', N'table', N'Company', N'column', N'compa_industry'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Número de teléfono principal de la compañía', N'schema', N'dbo', N'table', N'Company', N'column', N'compa_phone'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Dirección de correo electrónico principal de la compañía', N'schema', N'dbo', N'table', N'Company', N'column', N'compa_email'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Sitio web oficial de la compañía', N'schema', N'dbo', N'table', N'Company', N'column', N'compa_website'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Logo oficial de la compañía', N'schema', N'dbo', N'table', N'Company', N'column', N'compa_logo'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Indica si la compañía está activa (1) o inactiva (0)', N'schema', N'dbo', N'table', N'Company', N'column', N'compa_active'
GO