CREATE TABLE dbo.CostCenter (
  id_cosce bigint IDENTITY(1, 1) NOT NULL,
  company_id bigint NOT NULL,
  cosce_parent_id bigint NULL,
  cosce_code nvarchar(255) COLLATE Modern_Spanish_CI_AS NOT NULL,
  cosce_name nvarchar(255) COLLATE Modern_Spanish_CI_AS NOT NULL,
  cosce_description nvarchar(max) COLLATE Modern_Spanish_CI_AS NULL,
  cosce_budget decimal(15, 2) DEFAULT 0 NOT NULL,
  cosce_level smallint DEFAULT 1 NOT NULL,
  cosce_active bit DEFAULT 1 NOT NULL,
  PRIMARY KEY CLUSTERED (id_cosce)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON),
  CONSTRAINT UQ_Company_CostCenterCode UNIQUE (company_id, cosce_code)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON),
  CONSTRAINT CK_CostCenter_Level CHECK ([cosce_level]>(0)),
  CONSTRAINT FK_CostCenter_Company FOREIGN KEY (company_id) 
  REFERENCES dbo.Company (id_compa) 
  ON UPDATE CASCADE
  ON DELETE NO ACTION,
  CONSTRAINT FK_CostCenter_Parent FOREIGN KEY (cosce_parent_id) 
  REFERENCES dbo.CostCenter (id_cosce) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
)
ON [PRIMARY]
GO

EXEC sp_addextendedproperty 'MS_Description', N'Representa una unidad organizacional dentro de una empresa
que permite agrupar y controlar costos específicos.

Funcion:
1. Gestión y control de costos por unidad organizativa.
2. Seguimiento detallado de gastos y presupuestos por área.
3. Análisis de rentabilidad por centro de responsabilidad.
4. Facilitación de la toma de decisiones basada en costos.
5. Implementación de estructuras jerárquicas para el control de costos.

Creado por: @RJimenez
Fecha: 08/01/2025', N'schema', N'dbo', N'table', N'CostCenter'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Identificador único para el centro de costo', N'schema', N'dbo', N'table', N'CostCenter', N'column', N'id_cosce'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Compañía a la que pertenece este centro de costo', N'schema', N'dbo', N'table', N'CostCenter', N'column', N'company_id'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Centro de costo superior en la jerarquía organizacional', N'schema', N'dbo', N'table', N'CostCenter', N'column', N'cosce_parent_id'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Código único que identifica el centro de costo', N'schema', N'dbo', N'table', N'CostCenter', N'column', N'cosce_code'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Nombre descriptivo del centro de costo', N'schema', N'dbo', N'table', N'CostCenter', N'column', N'cosce_name'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Descripción detallada del centro de costo y su propósito', N'schema', N'dbo', N'table', N'CostCenter', N'column', N'cosce_description'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Presupuesto asignado al centro de costo', N'schema', N'dbo', N'table', N'CostCenter', N'column', N'cosce_budget'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Nivel en la jerarquía de centros de costo (1 para nivel superior)', N'schema', N'dbo', N'table', N'CostCenter', N'column', N'cosce_level'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Indica si el centro de costo está activo (1) o inactivo (0)', N'schema', N'dbo', N'table', N'CostCenter', N'column', N'cosce_active'
GO