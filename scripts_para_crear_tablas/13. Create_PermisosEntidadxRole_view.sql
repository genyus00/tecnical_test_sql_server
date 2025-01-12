SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW dbo.vw_PermisosEntidadxRol
AS
SELECT DISTINCT 
  dbo.UserCompanyRole.company_id,
  dbo.UserCompanyRole.id_useco,
  dbo.Role.role_code,
  dbo.EntityCatalog.entit_name,
  dbo.Permission.description,
  dbo.PermiRole.perol_include,
  dbo.UserCompanyRole.useco_active
    
FROM
  dbo.UserCompanyRole
  INNER JOIN dbo.Role ON (dbo.UserCompanyRole.role_id = dbo.Role.id_role)
  INNER JOIN dbo.PermiRole ON (dbo.Role.id_role = dbo.PermiRole.role_id)
  INNER JOIN dbo.Permission ON (dbo.PermiRole.permission_id = dbo.Permission.id_permi)
  INNER JOIN dbo.EntityCatalog ON (dbo.PermiRole.entitycatalog_id = dbo.EntityCatalog.id_entit)
GO