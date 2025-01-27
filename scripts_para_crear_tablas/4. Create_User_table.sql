CREATE TABLE dbo.[User] (
  id_user bigint NOT NULL,
  user_username nvarchar(255) COLLATE Modern_Spanish_CI_AS NOT NULL,
  user_password nvarchar(255) COLLATE Modern_Spanish_CI_AS NOT NULL,
  user_email nvarchar(255) COLLATE Modern_Spanish_CI_AS NOT NULL,
  user_phone nvarchar(255) COLLATE Modern_Spanish_CI_AS NULL,
  user_is_admin bit DEFAULT 0 NOT NULL,
  user_is_active bit DEFAULT 1 NOT NULL,
  PRIMARY KEY CLUSTERED (id_user)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON),
  CONSTRAINT UQ_User_Email UNIQUE (user_email)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON),
  CONSTRAINT UQ_User_Username UNIQUE (user_username)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

EXEC sp_addextendedproperty 'MS_Description', N'Representa una persona que interactúa con el sistema,
con sus credenciales y datos básicos de acceso.

Funcion:
1. Gestión de acceso y autenticación en el sistema.
2. Almacenamiento de información básica de los usuarios.
3. Control de estados y permisos de usuarios.
4. Seguimiento de actividad y auditoría de usuarios.
5. Base para la personalización de la experiencia de usuario.

Creado por: @RJimenez
Fecha: 08/01/2025', N'schema', N'dbo', N'table', N'User'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Identificador único para el usuario', N'schema', N'dbo', N'table', N'User', N'column', N'id_user'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Nombre de usuario para iniciar sesión', N'schema', N'dbo', N'table', N'User', N'column', N'user_username'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Contraseña encriptada del usuario', N'schema', N'dbo', N'table', N'User', N'column', N'user_password'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Dirección de correo electrónico del usuario', N'schema', N'dbo', N'table', N'User', N'column', N'user_email'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Número de teléfono del usuario', N'schema', N'dbo', N'table', N'User', N'column', N'user_phone'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Indica si el usuario es Administrador (1) o normal (0)', N'schema', N'dbo', N'table', N'User', N'column', N'user_is_admin'
GO

EXEC sp_addextendedproperty 'MS_Description', N'Indica si el usuario está activo (1) o inactivo (0)', N'schema', N'dbo', N'table', N'User', N'column', N'user_is_active'
GO