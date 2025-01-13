# Descripción del Procedimiento:

### Nombre: dbo.GetPermissionsByUserAndEntity

### Parámetros:

**@id_useco INT:** Identificador del usuario en la compañía.

**@id_entit INT:** Identificador de la entidad para la cual se están consultando los permisos.

### Propósito: 
Este procedimiento tiene como objetivo recuperar los permisos asignados a un usuario dentro de una compañía para una entidad específica. Los permisos son obtenidos desde diferentes niveles, tales como permisos específicos por usuario y registro, permisos por rol y registro, permisos a nivel de usuario para la entidad y permisos a nivel de rol para la entidad.

### Descripción:

1. **Obtención de Permisos:** El procedimiento utiliza una Common Table Expression (CTE) llamada Permissions_CTE que recolecta los permisos asignados a un usuario en la entidad proporcionada. Se considera cada nivel de permisos en orden de prioridad (de 1 a 4):

    o **Nivel 1:** Permisos específicos por usuario y registro (PermiUserRecord).
    
    o **Nivel 2:** Permisos específicos por rol y registro (PermiRoleRecord).
    
    o **Nivel 3:** Permisos a nivel de usuario para la entidad (PermiUser).
    
    o **Nivel 4:** Permisos a nivel de rol para la entidad (PermiRole).

En cada nivel, se consulta la tabla correspondiente (PermiUserRecord, PermiRoleRecord, PermiUser, PermiRole) y se recuperan los permisos asociados al usuario o rol, como can_create, can_read, can_update, can_delete, can_import, can_export, entre otros.

2. **Prioridad de Permisos:** Cada conjunto de permisos es asignado a un valor de prioridad:

    o **Prioridad 1:** Los permisos más específicos (usuario y registro).
    
    o **Prioridad 2:** Permisos por rol y registro.
    
    o **Prioridad 3:** Permisos a nivel de usuario para la entidad.
    
    o **Prioridad 4:** Permisos a nivel de rol para la entidad.

3. **Selección del Permiso con Menor Prioridad:** Utilizando la función de ventana ROW_NUMBER(), el procedimiento asigna un número de fila (RowNum) a cada permiso dentro de una partición de company_id y peusr_record, ordenado por Priority ASC (de menor a mayor). El objetivo es asegurar que se seleccione el permiso con la menor prioridad disponible para cada combinación de usuario y entidad.
  
5. **Filtro y Resultado Final:** Solo se seleccionan aquellos registros con el número de fila igual a 1 (WHERE RowNum = 1), lo que garantiza que se obtiene el permiso con la menor prioridad. La salida incluye información sobre el permiso, como los tipos de acciones permitidas (crear, leer, actualizar, eliminar, importar, exportar) y el origen del permiso (type_origin), que se determina según la prioridad:

    o **'PermiUserRecord':** Para permisos con prioridad 1.
    
    o **'PermiRoleRecord':** Para permisos con prioridad 2.
    
    o **'PermiUser':** Para permisos con prioridad 3.
    
    o **'PermiRole':** Para permisos con prioridad 4.
    
    o **'UNDEF':** En caso de que no se defina un tipo de origen.

**Resultado:** El procedimiento retorna una lista de permisos para el usuario en la entidad especificada, considerando siempre el permiso con la menor prioridad disponible (según las prioridades definidas), incluyendo el detalle de las acciones permitidas y el tipo de origen de cada permiso.


--------------------------------------------------------------------------
               User       Role       Entity     Record   Include  Visible		
--------------------------------------------------------------------------
User Record : rodolfo - contador  - salarios  -  Reg10 -    Si     (S)
 Rol Record :    -      contador  - salarios  -  Reg10 -    Si     (N) 
       User : rodolfo - contador  - salarios  -    -   -    Si     (S) 
        Rol :    -      contador  - salarios  -    -   -    Si     (N) 
--------------------------------------------------------------------------
		
--------------------------------------------------------------------------
               User       Role       Entity     Record   Include  Visible		
--------------------------------------------------------------------------
User Record :
 Rol Record :    -      contador  - salarios  -  Reg10 -    Si  (S)
       User : rodolfo - contador  - salarios  -    -   -    Si  (S)
        Rol :    -      contador  - salarios  -    -   -    Si  (N)
--------------------------------------------------------------------------
		
--------------------------------------------------------------------------
               User       Role       Entity     Record   Include  Visible		
--------------------------------------------------------------------------
User Record :
 Rol Record :
       User : rodolfo - contador  - salarios  -    -   -    Si  (S)
        Rol :    -      contador  - salarios  -    -   -    Si  (N)
--------------------------------------------------------------------------
		
--------------------------------------------------------------------------
               User       Role       Entity     Record   Include		
--------------------------------------------------------------------------
User Record :
 Rol Record :
       User :
        Rol :    -      contador  - salarios  -    -   -    Si  (S)
--------------------------------------------------------------------------

