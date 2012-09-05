CREATE DATABASE JAOBE
go
USE [JAOBE]
go

CREATE TABLE [dbo].[aspnet_Applications](
	ApplicationName nvarchar(256) NOT NULL,
	LoweredApplicationName nvarchar(256) NOT NULL,
	ApplicationId uniqueidentifier NOT NULL,
	[Description] nvarchar(256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[aspnet_Applications] ADD  DEFAULT (newid()) FOR [ApplicationId]
GO




CREATE TABLE [dbo].[aspnet_Users](
	ApplicationId uniqueidentifier NOT NULL,
	UserId uniqueidentifier NOT NULL,
	UserName nvarchar(256) NOT NULL,
	LoweredUserName nvarchar(256) NOT NULL,
	MobileAlias nvarchar(16) NULL,
	IsAnonymous bit NOT NULL,
	LastActivityDate datetime NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)
) ON [PRIMARY]

GO


ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO

ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (newid()) FOR [UserId]
GO

ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (NULL) FOR [MobileAlias]
GO

ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT ((0)) FOR [IsAnonymous]
GO

CREATE TABLE [dbo].[aspnet_Roles](
	ApplicationId uniqueidentifier NOT NULL,
	RoleId uniqueidentifier NOT NULL,
	RoleName nvarchar(256) NOT NULL,
	LoweredRoleName nvarchar(256) NOT NULL,
	Description nvarchar(256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO

ALTER TABLE [dbo].[aspnet_Roles] ADD  DEFAULT (newid()) FOR [RoleId]
GO

CREATE TABLE [dbo].[aspnet_UsersInRoles](
	UserId uniqueidentifier NOT NULL,
	RoleId uniqueidentifier NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO


CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	EventId char(32) NOT NULL,
	EventTimeUtc datetime NOT NULL,
	EventTime datetime NOT NULL,
	EventType nvarchar(256) NOT NULL,
	EventSequence decimal(19, 0) NOT NULL,
	EventOccurrence decimal(19, 0) NOT NULL,
	EventCode int NOT NULL,
	EventDetailCode int NOT NULL,
	Message nvarchar(1024) NULL,
	ApplicationPath nvarchar(256) NULL,
	ApplicationVirtualPath nvarchar(256) NULL,
	MachineName nvarchar(256) NOT NULL,
	RequestUrl nvarchar(1024) NULL,
	ExceptionType nvarchar(256) NULL,
	Details ntext NULL,
PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO





CREATE TABLE [dbo].[aspnet_Membership](
	ApplicationId uniqueidentifier NOT NULL,
	UserId uniqueidentifier NOT NULL,
	Password nvarchar(128) NOT NULL,
	PasswordFormat int NOT NULL,
	PasswordSalt nvarchar(128) NOT NULL,
	MobilePIN nvarchar(16) NULL,
	Email nvarchar(256) NULL,
	LoweredEmail nvarchar(256) NULL,
	PasswordQuestion nvarchar(256) NULL,
	PasswordAnswer nvarchar(128) NULL,
	IsApproved bit NOT NULL,
	IsLockedOut bit NOT NULL,
	CreateDate datetime NOT NULL,
	LastLoginDate datetime NOT NULL,
	LastPasswordChangedDate datetime NOT NULL,
	LastLockoutDate datetime NOT NULL,
	FailedPasswordAttemptCount int NOT NULL,
	FailedPasswordAttemptWindowStart datetime NOT NULL,
	FailedPasswordAnswerAttemptCount int NOT NULL,
	FailedPasswordAnswerAttemptWindowStart datetime NOT NULL,
	Comment ntext NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO


ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO


ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO

ALTER TABLE [dbo].[aspnet_Membership] ADD  DEFAULT ((0)) FOR [PasswordFormat]
GO


CREATE TABLE [dbo].[aspnet_Paths](
	ApplicationId uniqueidentifier NOT NULL,
	PathId uniqueidentifier NOT NULL,
	Path nvarchar(256) NOT NULL,
	LoweredPath nvarchar(256) NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO

ALTER TABLE [dbo].[aspnet_Paths] ADD  DEFAULT (newid()) FOR [PathId]
GO


CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	PathId uniqueidentifier NOT NULL,
	PageSettings image NOT NULL,
	LastUpdatedDate datetime NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO




CREATE TABLE [dbo].[aspnet_Profile](
	UserId uniqueidentifier NOT NULL,
	PropertyNames ntext NOT NULL,
	PropertyValuesString ntext NOT NULL,
	PropertyValuesBinary image NOT NULL,
	LastUpdatedDate datetime NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO






CREATE TABLE [dbo].[aspnet_SchemaVersions](
	Feature nvarchar(128) NOT NULL,
	CompatibleSchemaVersion nvarchar(128) NOT NULL,
	IsCurrentVersion bit NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Post](
	ID int NOT NULL,
	UserId uniqueidentifier NOT NULL,
	Announce nvarchar(100) NOT NULL,
	Title nvarchar(100) NOT NULL,
	Detail nvarchar(max) NOT NULL,
	[Time] datetime NOT NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_aspnet_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO

ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_aspnet_Users]
GO


CREATE TABLE [dbo].[Comment](
	ID int NOT NULL,
	[Text] nvarchar(max) NOT NULL,
	[Time] datetime NOT NULL,
	PostId int NOT NULL,
	Visible bit NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Post] FOREIGN KEY([PostId])
REFERENCES [dbo].[Post] ([ID])
GO

ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Post]
GO



CREATE TABLE [dbo].[Blog_Options](
	Id int NOT NULL,
	Name nvarchar(max) NOT NULL,
	Comment bit NULL,
	Logo image NOT NULL,
	UserId uniqueidentifier NOT NULL,
 CONSTRAINT [PK_Blog_Options] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[Blog_Options]  WITH CHECK ADD  CONSTRAINT [FK_Blog_Options_aspnet_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO

ALTER TABLE [dbo].[Blog_Options] CHECK CONSTRAINT [FK_Blog_Options_aspnet_Users]
GO


