SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW dbo.vw_PermisosRegistroEntidadxRol
AS
SELECT DISTINCT 
  dbo.UserCompanyRole.company_id,
  dbo.UserCompanyRole.id_useco,
  dbo.Role.role_code,
  dbo.EntityCatalog.entit_name,
  dbo.Permission.description,
  dbo.PermiRoleRecord.perrc_record,
  dbo.PermiRoleRecord.perol_include,
  dbo.UserCompanyRole.useco_active
FROM
  dbo.UserCompanyRole
  INNER JOIN dbo.Role ON (dbo.UserCompanyRole.role_id = dbo.Role.id_role)
  INNER JOIN dbo.PermiRoleRecord ON (dbo.Role.id_role = dbo.PermiRoleRecord.role_id)
  INNER JOIN dbo.EntityCatalog ON (dbo.EntityCatalog.id_entit = dbo.PermiRoleRecord.entitycatalog_id)
  INNER JOIN dbo.Permission ON (dbo.Permission.id_permi = dbo.PermiRoleRecord.permission_id)
GO