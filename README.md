# Prueba Técnica: Sistema de Permisos

### Requisitos Técnicos:
Base de Datos: SQL Server.

### Objetivo
Desarrollar un sistema de permisos en SQL Server que permita asignar privilegios a usuarios, ya sea a nivel de entidad o por registro individual. Este sistema gestionará los permisos de manera flexible, permitiendo asociarlos tanto a roles como a usuarios específicos.

### Modelos Implementados (Tablas en SQL Server)
Para implementar la funcionalidad de permisos en SQL Server, se utilizaron las siguientes tablas dentro de la base de datos:

- **PermiUser:** Esta tabla gestionará los permisos asignados a un usuario.
  
- **PermiRole:** Esta tabla gestionará los permisos asignados a un rol. 
  
- **PermiUserRecord:** Esta tabla se encargará de asignar permisos a usuarios sobre registros específicos de una entidad. 
  
- **PermiRoleRecord:** Similar a `PermiUserRecord`, esta tabla asigna permisos a roles sobre registros específicos. 

- **Permission:** Define la combinatoria de permisos que pueden ser otorgados a usuarios o roles. 
