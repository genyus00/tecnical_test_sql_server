# Prueba Técnica: Sistema de Permisos

### Requisitos Técnicos:
Base de Datos: SQL Server.

### Objetivo
Desarrollar un sistema de permisos en SQL Server que permitiera asignar privilegios a usuarios, ya sea a nivel de entidad o por registro individual. Este sistema gestiona los permisos de manera flexible, permitiendo asociarlos tanto a roles como a usuarios específicos.

### Modelos Implementados (Tablas en SQL Server)
Para implementar la funcionalidad de permisos en SQL Server, se utilizaron las siguientes tablas dentro de la base de datos:

- **PermiUser:** Esta tabla gestiona los permisos asignados a un usuario por entidad.
  
- **PermiRole:** Esta tabla gestiona los permisos asignados a un rol por entidad. 
  
- **PermiUserRecord:** Esta tabla se encarga de asignar permisos a usuarios sobre registros específicos de una entidad. 
  
- **PermiRoleRecord:** Similar a `PermiUserRecord`, esta tabla asigna permisos a roles sobre registros específicos. 

- **Permission:** Define la combinatoria de permisos que pueden ser otorgados a usuarios o roles.

### Funcionalidad del Sistema de Permisos
El sistema permite:

- **Asignar permisos a nivel de entidad:** Se pueden asignar permisos a usuarios o roles sobre entidades completas, como una sucursal o un centro de costos. Esto proporciona acceso general a la entidad sin especificar registros individuales.
  
- **Asignar permisos a nivel de registro individual:** Se permite asignar permisos más específicos a nivel de registros individuales dentro de una entidad. Esto permite un control más detallado, de modo que un usuario o rol solo puede acceder a ciertos registros (por ejemplo, una sucursal específica o un centro de costos particular).

Este enfoque proporciona una mayor granularidad en el control de acceso, ya que es posible combinar permisos según las necesidades del usuario o del rol.

### Entidades Para Pruebas
Para las pruebas de este sistema de permisos, se utilizaron las siguientes entidades principales dentro de la aplicación:

- **Sucursal (Branch Office):** Esta entidad representa una oficina de la empresa. Los permisos pueden ser asignados a nivel de sucursal completa o a nivel de registros específicos dentro de la sucursal.

- **Centro de Costos (Cost Center):** Esta entidad representa una unidad dentro de la empresa a la que se le asignan costos. Los permisos también pueden asignarse tanto a nivel de entidad completa como a nivel de registros individuales dentro del centro de costos.

Cada una de estas entidades puede tener permisos específicos asociados, tanto a nivel de entidad como de registros individuales dentro de ellas, gestionados a través de las tablas mencionadas anteriormente.

---

### Entregables

**Procedimiento Principal (GetUserPermissions):** Este procedimiento recibe dos parámetros: el ID del entitycatal y el ID del usuario en la compañia. Su propósito es devolver los permisos asignados al usuario, tanto a nivel de entidad como a nivel de registros dentro de la entidad. Los permisos siguen la jerarquía lógica de permisos: (1) Por Rol, (2) Por Usuario , (3) Por Registro. (determinado asi de acuerdo a video explicativo del objetivo final)

1. **Insert**: Script pertinentes que evidencian la ejecución de los procedimientos realizados, ubicados en la carpeta **`scripts_para_cargar_tablas`**.

2. **Scripts para Creación de Tablas:**
   - Scripts de creación de tablas: Se encuentra ubicados en la carpeta **`scripts_para_crear_tablas`**, estos contienen las sentencias `CREATE TABLE`.
   - Procedimientos almacenados: Se encuentran ubicados en la carpeta **`scripts_procedimientos_almacenados`**, esta carpeta contine el procedimiento principal (GetUserPermissions).

3. **Video Explicativo:**
   - Se proporciona un **video explicativo** en el que se detalla:
     - La lógica detrás de los procedimientos almacenados y su implementación.
     - La estrategia utilizada para resolver el problema de permisos.
     - Cómo los scripts para la creación de tablas generan la estructura de la base de datos en SQL Server.  



