CREATE TABLE dbo.PermiRoleRecord (
  id_perrc bigint IDENTITY(1, 1) NOT NULL,
  role_id bigint NOT NULL,
  entitycatalog_id int NOT NULL,
  perrc_record bigint NOT NULL,
  permission_id bigint NOT NULL,
  perol_include bit DEFAULT 1 NOT NULL,
  PRIMARY KEY CLUSTERED (id_perrc)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON),
  CONSTRAINT UQ_Role_Permission_Entity_Recordrc UNIQUE (role_id, entitycatalog_id, perrc_record)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON),
  CONSTRAINT FK_PermiRoleRecord_EntityCatalog FOREIGN KEY (entitycatalog_id) 
  REFERENCES dbo.EntityCatalog (id_entit) 
  ON UPDATE CASCADE
  ON DELETE CASCADE,
  CONSTRAINT FK_PermiRoleRecord_Permission FOREIGN KEY (permission_id) 
  REFERENCES dbo.Permission (id_permi) 
  ON UPDATE CASCADE
  ON DELETE CASCADE,
  CONSTRAINT FK_PermiRoleRecord_Role FOREIGN KEY (role_id) 
  REFERENCES dbo.Role (id_role) 
  ON UPDATE CASCADE
  ON DELETE CASCADE
)
ON [PRIMARY]
GO

EXEC sp_addextendedproperty 'MS_Description', N'Representa los permisos específicos asignados a un rol para una
entidad y registro particular dentro del sistema.

Funcion:
1. Asignación de permisos específicos por rol, entidad y registro.
2. Control granular de accesos a nivel de rol y registro.
3. Personalización de capacidades por entidad y registro del sistema.
4. Gestión detallada de privilegios por rol y registro específico.
5. Implementación de políticas de seguridad específicas por rol, entidad y registro.

Creado por: @RJimenez
Fecha: 08/01/2025', N'schema', N'dbo', N'table', N'PermiRoleRecord'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Identificador único para el permiso de rol por registro', N'schema', N'dbo', N'table', N'PermiRoleRecord', N'column', N'id_perrc'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Rol al que se asigna el permiso', N'schema', N'dbo', N'table', N'PermiRoleRecord', N'column', N'role_id'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Entidad sobre la que se aplica el permiso', N'schema', N'dbo', N'table', N'PermiRoleRecord', N'column', N'entitycatalog_id'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Identificador del registro específico al que se aplica el permiso', N'schema', N'dbo', N'table', N'PermiRoleRecord', N'column', N'perrc_record'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Permiso asignado al rol', N'schema', N'dbo', N'table', N'PermiRoleRecord', N'column', N'permission_id'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Indica si el permiso se incluye (1) o se excluye (0) para el rol y registro', N'schema', N'dbo', N'table', N'PermiRoleRecord', N'column', N'perol_include'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Unique constraint for role, permission, entity catalog and record combination', N'schema', N'dbo', N'table', N'PermiRoleRecord', N'constraint', N'UQ_Role_Permission_Entity_Recordrc'
GO