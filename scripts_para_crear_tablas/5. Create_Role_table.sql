CREATE TABLE dbo.Role (
  id_role bigint IDENTITY(1, 1) NOT NULL,
  role_name nvarchar(255) COLLATE Modern_Spanish_CI_AS NOT NULL,
  role_code nvarchar(255) COLLATE Modern_Spanish_CI_AS NOT NULL,
  role_description nvarchar(max) COLLATE Modern_Spanish_CI_AS NULL,
  role_active bit DEFAULT 1 NOT NULL,
  PRIMARY KEY CLUSTERED (id_role)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON),
  CONSTRAINT UK_Role_idx UNIQUE (role_code)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

EXEC sp_addextendedproperty 'MS_Description', N'Representa un conjunto de permisos y responsabilidades que pueden
ser asignados a usuarios dentro de una compañía específica.

Funcion:
1. Definición de niveles de acceso y permisos por compañía.
2. Agrupación de funcionalidades y accesos para asignación eficiente.
3. Control granular de las capacidades de los usuarios en el sistema.
4. Simplificación de la gestión de permisos por grupos de usuarios.
5. Estandarización de roles y responsabilidades dentro de cada compañía.

Creado por: @RJimenez
Fecha: 08/01/2025', N'schema', N'dbo', N'table', N'Role'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Identificador único para el rol', N'schema', N'dbo', N'table', N'Role', N'column', N'id_role'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Nombre descriptivo del rol', N'schema', N'dbo', N'table', N'Role', N'column', N'role_name'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Código del rol (agregado basado en unique_together)', N'schema', N'dbo', N'table', N'Role', N'column', N'role_code'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Descripción detallada del rol y sus responsabilidades', N'schema', N'dbo', N'table', N'Role', N'column', N'role_description'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Indica si el rol está activo (1) o inactivo (0)', N'schema', N'dbo', N'table', N'Role', N'column', N'role_active'
GO