CREATE TABLE dbo.Permission (
  id_permi bigint IDENTITY(63, 1) NOT NULL,
  name nvarchar(255) COLLATE Modern_Spanish_CI_AS NOT NULL,
  description nvarchar(max) COLLATE Modern_Spanish_CI_AS NULL,
  can_create bit DEFAULT 0 NOT NULL,
  can_read bit DEFAULT 0 NOT NULL,
  can_update bit DEFAULT 0 NOT NULL,
  can_delete bit DEFAULT 0 NOT NULL,
  can_import bit DEFAULT 0 NOT NULL,
  can_export bit DEFAULT 0 NOT NULL,
  PRIMARY KEY CLUSTERED (id_permi)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

EXEC sp_addextendedproperty 'MS_Description', N'Representa los diferentes niveles de acceso y operaciones
que pueden realizarse sobre una entidad del sistema.

Funcion:
1. Control granular de acciones sobre entidades del sistema.
2. Definición de permisos específicos para operaciones CRUD.
3. Gestión de capacidades de importación y exportación de datos.
4. Implementación de políticas de seguridad y acceso.
5. Configuración flexible de permisos por funcionalidad.

Creado por: @RJimenez
Fecha: 08/01/2025', N'schema', N'dbo', N'table', N'Permission'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Identificador único para el permiso', N'schema', N'dbo', N'table', N'Permission', N'column', N'id_permi'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Nombre descriptivo del permiso', N'schema', N'dbo', N'table', N'Permission', N'column', N'name'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Descripción detallada del permiso y su propósito', N'schema', N'dbo', N'table', N'Permission', N'column', N'description'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Permite crear nuevos registros', N'schema', N'dbo', N'table', N'Permission', N'column', N'can_create'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Permite ver registros existentes', N'schema', N'dbo', N'table', N'Permission', N'column', N'can_read'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Permite modificar registros existentes', N'schema', N'dbo', N'table', N'Permission', N'column', N'can_update'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Permite eliminar registros existentes', N'schema', N'dbo', N'table', N'Permission', N'column', N'can_delete'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Permite importar datos masivamente', N'schema', N'dbo', N'table', N'Permission', N'column', N'can_import'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Permite exportar datos del sistema', N'schema', N'dbo', N'table', N'Permission', N'column', N'can_export'
GO