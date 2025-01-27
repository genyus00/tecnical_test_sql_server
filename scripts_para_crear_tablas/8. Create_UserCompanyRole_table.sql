CREATE TABLE dbo.UserCompanyRole (
  id_useco bigint IDENTITY(1, 1) NOT NULL,
  company_id bigint NOT NULL,
  user_id bigint NOT NULL,
  role_id bigint NOT NULL,
  useco_active bit DEFAULT 1 NOT NULL,
  PRIMARY KEY CLUSTERED (id_useco)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON),
  CONSTRAINT UQ_User_Company UNIQUE (user_id, company_id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON),
  CONSTRAINT FK_UserCompany_Company FOREIGN KEY (company_id) 
  REFERENCES dbo.Company (id_compa) 
  ON UPDATE CASCADE
  ON DELETE NO ACTION,
  CONSTRAINT FK_UserCompany_User FOREIGN KEY (user_id) 
  REFERENCES dbo.[User] (id_user) 
  ON UPDATE CASCADE
  ON DELETE NO ACTION,
  CONSTRAINT UserCompany_fk FOREIGN KEY (role_id) 
  REFERENCES dbo.Role (id_role) 
  ON UPDATE CASCADE
  ON DELETE CASCADE
)
ON [PRIMARY]
GO

EXEC sp_addextendedproperty 'MS_Description', N'Representa la relación entre un usuario y una compañía, permitiendo gestionar
el acceso de usuarios a múltiples compañías en el sistema.

Funcion:
1. Gestión de permisos de usuarios por compañía.
2. Control de acceso multiempresa para cada usuario.
3. Seguimiento de actividades de usuarios por compañía.
4. Configuración de preferencias específicas por usuario y compañía.
5. Soporte para roles y responsabilidades diferentes en cada compañía.

Creado por: @RJimenez
Fecha: 08/01/2025', N'schema', N'dbo', N'table', N'UserCompanyRole'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Identificador único para la relación usuario-compañía', N'schema', N'dbo', N'table', N'UserCompanyRole', N'column', N'id_useco'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Compañía asociada al usuario', N'schema', N'dbo', N'table', N'UserCompanyRole', N'column', N'company_id'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Usuario asociado a la compañía', N'schema', N'dbo', N'table', N'UserCompanyRole', N'column', N'user_id'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Indica si la relación usuario-compañía está activa (1) o inactiva (0)', N'schema', N'dbo', N'table', N'UserCompanyRole', N'column', N'useco_active'
GO