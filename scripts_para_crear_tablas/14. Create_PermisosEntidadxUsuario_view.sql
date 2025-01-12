SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW dbo.vw_PermisosEntidadxUsuario
AS
SELECT DISTINCT 
  dbo.UserCompanyRole.company_id,
  dbo.UserCompanyRole.id_useco,
  dbo.Role.role_code,
  dbo.EntityCatalog.entit_name,
  dbo.Permission.description,
  dbo.PermiUser.peusr_include,
  dbo.UserCompanyRole.useco_active
FROM
  dbo.Permission
  INNER JOIN dbo.PermiUser ON (dbo.Permission.id_permi = dbo.PermiUser.permission_id)
  INNER JOIN dbo.UserCompanyRole ON (dbo.UserCompanyRole.id_useco = dbo.PermiUser.usercompany_id)
  INNER JOIN dbo.EntityCatalog ON (dbo.PermiUser.entitycatalog_id = dbo.EntityCatalog.id_entit)
  INNER JOIN dbo.Role ON (dbo.UserCompanyRole.role_id = dbo.Role.id_role)
GO