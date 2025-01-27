CREATE TABLE dbo.EntityCatalog (
  id_entit int IDENTITY(1, 1) NOT NULL,
  entit_name nvarchar(255) COLLATE Modern_Spanish_CI_AS NOT NULL,
  entit_descrip nvarchar(255) COLLATE Modern_Spanish_CI_AS NOT NULL,
  entit_active bit DEFAULT 1 NOT NULL,
  entit_config nvarchar(max) COLLATE Modern_Spanish_CI_AS NULL,
  PRIMARY KEY CLUSTERED (id_entit)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON),
  UNIQUE (entit_name)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

EXEC sp_addextendedproperty 'MS_Description', N'Representa una tabla que almacena todas las entidades 
(modelos) disponibles en el sistema Django, facilitando su gestión y referencia.

Funcion:
1. Mantener un registro centralizado de todas las entidades del sistema.
2. Facilitar la gestión y el mantenimiento de la estructura de la base de datos.
3. Permitir la referencia dinámica a diferentes modelos del sistema.
4. Proveer una base para la implementación de funcionalidades genéricas.
5. Apoyar en la documentación y organización del sistema.

Creado por: @RJimenez
Fecha: 08/01/2025', N'schema', N'dbo', N'table', N'EntityCatalog'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Identificador único para el elemento del catálogo de entidades', N'schema', N'dbo', N'table', N'EntityCatalog', N'column', N'id_entit'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Nombre del modelo Django asociado', N'schema', N'dbo', N'table', N'EntityCatalog', N'column', N'entit_name'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Descripción del elemento del catálogo de entidades', N'schema', N'dbo', N'table', N'EntityCatalog', N'column', N'entit_descrip'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Indica si el elemento del catálogo está activo (1) o inactivo (0)', N'schema', N'dbo', N'table', N'EntityCatalog', N'column', N'entit_active'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Configuración adicional para el elemento del catálogo', N'schema', N'dbo', N'table', N'EntityCatalog', N'column', N'entit_config'
GO