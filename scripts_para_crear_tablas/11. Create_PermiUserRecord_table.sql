CREATE TABLE dbo.PermiUserRecord (
  id_peusr bigint IDENTITY(1, 1) NOT NULL,
  usercompany_id bigint NOT NULL,
  permission_id bigint NOT NULL,
  entitycatalog_id int NOT NULL,
  peusr_record bigint NOT NULL,
  peusr_include bit DEFAULT 1 NOT NULL,
  PRIMARY KEY CLUSTERED (id_peusr)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON),
  CONSTRAINT PermiUserRecord_uq UNIQUE (usercompany_id, entitycatalog_id, peusr_record)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON),
  CONSTRAINT UQ_UserCompany_Permission_Entity_Record UNIQUE (usercompany_id, entitycatalog_id, peusr_record)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON),
  CONSTRAINT FK_PermiUserRecord_EntityCatalog FOREIGN KEY (entitycatalog_id) 
  REFERENCES dbo.EntityCatalog (id_entit) 
  ON UPDATE CASCADE
  ON DELETE CASCADE,
  CONSTRAINT FK_PermiUserRecord_Permission FOREIGN KEY (permission_id) 
  REFERENCES dbo.Permission (id_permi) 
  ON UPDATE CASCADE
  ON DELETE CASCADE,
  CONSTRAINT FK_PermiUserRecord_UserCompany FOREIGN KEY (usercompany_id) 
  REFERENCES dbo.UserCompanyRole (id_useco) 
  ON UPDATE CASCADE
  ON DELETE CASCADE
)
ON [PRIMARY]
GO

EXEC sp_addextendedproperty 'MS_Description', N'Representa los permisos específicos asignados a un usuario para una
entidad particular y un registro específico dentro de una compañía.

Funcion:
1. Asignación de permisos específicos por usuario y entidad a nivel de registro.
2. Control granular de accesos a nivel de usuario-compañía y registro.
3. Personalización de capacidades por entidad y registro del sistema.
4. Gestión detallada de privilegios por usuario a nivel de registro.
5. Implementación de políticas de seguridad específicas por entidad y registro.

Creado por: @RJimenez
Fecha: 08/01/2025', N'schema', N'dbo', N'table', N'PermiUserRecord'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Identificador único para el permiso de usuario', N'schema', N'dbo', N'table', N'PermiUserRecord', N'column', N'id_peusr'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Relación usuario-compañía a la que se asigna el permiso', N'schema', N'dbo', N'table', N'PermiUserRecord', N'column', N'usercompany_id'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Permiso asignado al usuario', N'schema', N'dbo', N'table', N'PermiUserRecord', N'column', N'permission_id'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Entidad sobre la que se aplica el permiso', N'schema', N'dbo', N'table', N'PermiUserRecord', N'column', N'entitycatalog_id'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Identificador del registro específico de la entidad al que aplica el permiso', N'schema', N'dbo', N'table', N'PermiUserRecord', N'column', N'peusr_record'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Indica si el permiso se incluye (1) o se excluye (0) para el usuario', N'schema', N'dbo', N'table', N'PermiUserRecord', N'column', N'peusr_include'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Unique constraint for user-company, permission, entity catalog and record combination', N'schema', N'dbo', N'table', N'PermiUserRecord', N'constraint', N'UQ_UserCompany_Permission_Entity_Record'
GO