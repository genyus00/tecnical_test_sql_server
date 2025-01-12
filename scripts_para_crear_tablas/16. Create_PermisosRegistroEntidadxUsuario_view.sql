SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW dbo.vw_PermisosRegistroEntidadxUsuario
AS
SELECT DISTINCT 
  dbo.UserCompanyRole.company_id,
  dbo.UserCompanyRole.id_useco,
  dbo.Role.role_code,
  dbo.EntityCatalog.entit_name,
  dbo.Permission.description,
  dbo.PermiUserRecord.peusr_include,
  dbo.PermiUserRecord.peusr_record,
  dbo.UserCompanyRole.useco_active
FROM
  dbo.UserCompanyRole
  INNER JOIN dbo.Role ON (dbo.UserCompanyRole.role_id = dbo.Role.id_role)
  INNER JOIN dbo.PermiUserRecord ON (dbo.UserCompanyRole.id_useco = dbo.PermiUserRecord.usercompany_id)
  INNER JOIN dbo.EntityCatalog ON (dbo.EntityCatalog.id_entit = dbo.PermiUserRecord.entitycatalog_id)
  INNER JOIN dbo.Permission ON (dbo.Permission.id_permi = dbo.PermiUserRecord.permission_id)
GO