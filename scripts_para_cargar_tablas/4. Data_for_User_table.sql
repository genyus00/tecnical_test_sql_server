-- Eliminar todos los datos de la tabla User
DELETE FROM dbo.[User];

-- Reiniciar el valor de la clave primaria (IDENTITY)
DBCC CHECKIDENT ('dbo.[User]', RESEED, 0);

/* Data for the 'dbo.User' table  (Records 1 - 8) */

INSERT INTO dbo.[User] (user_username, user_password, user_email, user_phone, user_is_admin, user_is_active)
VALUES (N'genyus00', N'pass00', N'genyus00@example.com', N'555-0101', 0, 1)
GO

INSERT INTO dbo.[User] (user_username, user_password, user_email, user_phone, user_is_admin, user_is_active)
VALUES (N'genyus01', N'pass01', N'genyus01@example.com', N'555-0102', 1, 1)
GO

INSERT INTO dbo.[User] (user_username, user_password, user_email, user_phone, user_is_admin, user_is_active)
VALUES (N'genyus02', N'pass02', N'genyus02@example.com', N'555-0103', 0, 1)
GO

INSERT INTO dbo.[User] (user_username, user_password, user_email, user_phone, user_is_admin, user_is_active)
VALUES (N'genyus03', N'pass03', N'genyus03@example.com', N'555-0104', 0, 1)
GO

INSERT INTO dbo.[User] (user_username, user_password, user_email, user_phone, user_is_admin, user_is_active)
VALUES (N'genyus04', N'pass04', N'genyus04@example.com', N'555-0105', 1, 1)
GO

INSERT INTO dbo.[User] (user_username, user_password, user_email, user_phone, user_is_admin, user_is_active)
VALUES (N'genyus05', N'pass05', N'genyus05@example.com', N'555-1000', 0, 1)
GO

INSERT INTO dbo.[User] (user_username, user_password, user_email, user_phone, user_is_admin, user_is_active)
VALUES (N'genyus06', N'pass06', N'genyus06@example.com', N'555-1001', 0, 1)
GO

INSERT INTO dbo.[User] (user_username, user_password, user_email, user_phone, user_is_admin, user_is_active)
VALUES (N'genyus07', N'pass07', N'genyus07@example.com', N'555-1002', 0, 1)
GO