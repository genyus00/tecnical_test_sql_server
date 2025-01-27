SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

/*
================================================================================
Procedimiento almacenado: dbo.GetPermissionsByUserAndEntity
--------------------------------------------------------------------------------
Descripción:
Este procedimiento recupera los permisos asignados a un usuario en una compañía 
para una entidad específica, considerando diferentes niveles de asignación de 
permisos en orden de prioridad.

Niveles de permisos:
1. Permisos específicos por usuario y registro (Prioridad 1).
2. Permisos específicos por rol y registro (Prioridad 2).
3. Permisos a nivel de usuario para la entidad (Prioridad 3).
4. Permisos a nivel de rol para la entidad (Prioridad 4).

Características principales:
- Los permisos se obtienen de las tablas correspondientes a cada nivel 
  (`PermiUserRecord`, `PermiRoleRecord`, `PermiUser`, `PermiRole`).
- Se calcula una prioridad para cada permiso, donde 1 representa la mayor 
  especificidad y prioridad, y 4 representa la menor prioridad.
- Solo se selecciona el permiso con la menor prioridad disponible para cada 
  combinación de usuario y registro (`peusr_record`).

Parámetros:
- @id_useco (INT): Identificador del usuario en la compañía.
- @id_entit (INT): Identificador de la entidad para la cual se están consultando 
  los permisos.

Resultado:
- Lista de permisos con el nivel de acción permitido (crear, leer, actualizar, 
  eliminar, importar, exportar).
- Información sobre el origen del permiso (e.g., `PermiUserRecord`, 
  `PermiRoleRecord`).

Consideraciones:
- Si no existen permisos específicos en un nivel superior (prioridad más baja),
  el procedimiento seleccionará permisos de un nivel inferior, garantizando 
  que siempre se retorna el permiso más relevante.

Estructura del resultado:
- role_id: ID del rol asociado.
- company_id: ID de la compañía asociada.
- permission_id: ID del permiso.
- peusr_include: Indicador de inclusión del permiso.
- peusr_record: Identificador del registro específico (puede ser NULL).
- Acciones permitidas: can_create, can_read, can_update, can_delete, 
  can_import, can_export.
- type_origin: Origen del permiso basado en la prioridad asignada.

Creado por: Ing. Rodolfo Jimenez
Fecha: 10/01/2025
================================================================================
*/

CREATE PROCEDURE dbo.GetPermissionsByUserAndEntity
    @id_useco INT,    -- Identificador del usuario en la compañía
    @id_entit INT    -- Identificador de la entidad
AS
BEGIN
    -- CTE que agrega los permisos de diferentes niveles
    WITH Permissions_CTE AS (
        -- Nivel 1: Permisos específicos por usuario y registro
        SELECT 
            ucr.role_id,
            ucr.company_id,
            pu.permission_id,
            pu.peusr_include,
            pu.peusr_record,
            p.can_create,
            p.can_read,
            p.can_update,
            p.can_delete,
            p.can_import,
            p.can_export,
            1 AS Priority, -- Mayor prioridad
            'XREG' AS type_reg
        FROM dbo.PermiUserRecord pu
        JOIN dbo.UserCompanyRole ucr ON pu.usercompany_id = ucr.id_useco
        JOIN dbo.Permission p ON pu.permission_id = p.id_permi
        WHERE ucr.id_useco = @id_useco
          AND pu.entitycatalog_id = @id_entit

        UNION ALL

        -- Nivel 2: Permisos específicos por rol y registro
        SELECT 
            pr.role_id,
            ucr.company_id,
            pr.permission_id,
            pr.perol_include AS peusr_include,
            pr.perrc_record AS peusr_record,
            p.can_create,
            p.can_read,
            p.can_update,
            p.can_delete,
            p.can_import,
            p.can_export,
            2 AS Priority, -- Menor prioridad que los permisos específicos de usuario
            'XREG' AS type_reg
        FROM dbo.PermiRoleRecord pr
        JOIN dbo.UserCompanyRole ucr ON pr.role_id = ucr.role_id
        JOIN dbo.Permission p ON pr.permission_id = p.id_permi
        WHERE ucr.id_useco = @id_useco
          AND pr.entitycatalog_id = @id_entit

        UNION ALL

        -- Nivel 3: Permisos a nivel de usuario para la entidad
        SELECT
            ucr.role_id,
            ucr.company_id,
            pu.permission_id,
            pu.peusr_include,
            NULL AS peusr_record, -- No aplicamos un registro específico en este caso
            p.can_create,
            p.can_read,
            p.can_update,
            p.can_delete,
            p.can_import,
            p.can_export,
            3 AS Priority, -- Menor prioridad que los permisos específicos por rol
            'XENT' AS type_reg            
        FROM dbo.PermiUser pu
        JOIN dbo.UserCompanyRole ucr ON pu.usercompany_id = ucr.id_useco
        JOIN dbo.Permission p ON pu.permission_id = p.id_permi
        WHERE ucr.id_useco = @id_useco
          AND pu.entitycatalog_id = @id_entit

        UNION ALL

        -- Nivel 4: Permisos a nivel de rol para la entidad
        SELECT 
            pr.role_id,
            ucr.company_id,
            pr.permission_id,
            pr.perol_include AS peusr_include,
            NULL AS peusr_record, -- No aplicamos un registro específico en este caso
            p.can_create,
            p.can_read,
            p.can_update,
            p.can_delete,
            p.can_import,
            p.can_export,
            4 AS Priority, -- Menor prioridad que los permisos a nivel de usuario
            'XENT' AS type_reg                         
        FROM dbo.PermiRole pr
        JOIN dbo.UserCompanyRole ucr ON pr.role_id = ucr.role_id
        JOIN dbo.Permission p ON pr.permission_id = p.id_permi
        WHERE ucr.id_useco = @id_useco
          AND pr.entitycatalog_id = @id_entit
    ),
    
    -- Asignamos un número de fila basado en la prioridad más baja para cada grupo
    RankedPermissions AS (
        SELECT 
            role_id,
            company_id,
            permission_id,
            peusr_include,
            peusr_record,
            can_create,
            can_read,
            can_update,
            can_delete,
            can_import,
            can_export,
            Priority,
            type_reg,
            ROW_NUMBER() OVER (PARTITION BY company_id, peusr_record ORDER BY Priority ASC) AS RowNum
        FROM Permissions_CTE
    )

    -- Seleccionamos solo los permisos con la menor prioridad (RowNum = 1)
    SELECT 
        role_id,
        company_id,
        permission_id,
        peusr_include,
        peusr_record,
        can_create,
        can_read,
        can_update,
        can_delete,
        can_import,
        can_export,
        -- Identificación del origen según la prioridad
        CASE WHEN Priority = 1 THEN 'PermiUserRecord'
             WHEN Priority = 2 THEN 'PermiRoleRecord'    
             WHEN Priority = 3 THEN 'PermiUser'     
             WHEN Priority = 4 THEN 'PermiRole'           
        ELSE 'UNDEF' END AS type_origin
    FROM RankedPermissions
    WHERE RowNum = 1
    ORDER BY Priority ASC; -- Priorizamos de mayor a menor (con prioridad 1 siendo la más alta)
END
GO