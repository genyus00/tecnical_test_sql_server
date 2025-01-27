CREATE TABLE dbo.PermiRole (
  id_perol bigint IDENTITY(1, 1) NOT NULL,
  role_id bigint NOT NULL,
  entitycatalog_id int NOT NULL,
  permission_id bigint NOT NULL,
  perol_include bit DEFAULT 1 NOT NULL,
  PRIMARY KEY CLUSTERED (id_perol)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON),
  CONSTRAINT UQ_Role_Permission_Entity_Record UNIQUE (role_id, entitycatalog_id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON),
  CONSTRAINT FK_PermiRole_EntityCatalog FOREIGN KEY (entitycatalog_id) 
  REFERENCES dbo.EntityCatalog (id_entit) 
  ON UPDATE CASCADE
  ON DELETE CASCADE,
  CONSTRAINT FK_PermiRole_Permission FOREIGN KEY (permission_id) 
  REFERENCES dbo.Permission (id_permi) 
  ON UPDATE CASCADE
  ON DELETE CASCADE,
  CONSTRAINT FK_PermiRole_Role FOREIGN KEY (role_id) 
  REFERENCES dbo.Role (id_role) 
  ON UPDATE CASCADE
  ON DELETE CASCADE
)
ON [PRIMARY]
GO

EXEC sp_addextendedproperty 'MS_Description', N'Representa los permisos específicos asignados a un rol para una
entidad particular dentro del sistema.

Funcion:
1. Asignación de permisos específicos por rol y entidad.
2. Control granular de accesos a nivel de rol.
3. Personalización de capacidades por entidad del sistema.
4. Gestión detallada de privilegios por rol.
5. Implementación de políticas de seguridad específicas por rol y entidad.

Creado por: @RJimenez
Fecha: 08/01/2025', N'schema', N'dbo', N'table', N'PermiRole'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Identificador único para el permiso de rol', N'schema', N'dbo', N'table', N'PermiRole', N'column', N'id_perol'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Rol al que se asigna el permiso', N'schema', N'dbo', N'table', N'PermiRole', N'column', N'role_id'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Entidad sobre la que se aplica el permiso', N'schema', N'dbo', N'table', N'PermiRole', N'column', N'entitycatalog_id'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Permiso asignado al rol', N'schema', N'dbo', N'table', N'PermiRole', N'column', N'permission_id'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Indica si el permiso se incluye (1) o se excluye (0) para el rol', N'schema', N'dbo', N'table', N'PermiRole', N'column', N'perol_include'
GO

CREATE NONCLUSTERED INDEX PermiRole_idx ON dbo.PermiRole
  (role_id, entitycatalog_id)
WITH (
  PAD_INDEX = OFF,
  DROP_EXISTING = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  SORT_IN_TEMPDB = OFF,
  ONLINE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO