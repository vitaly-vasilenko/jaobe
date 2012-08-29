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
	UserId nvarchar(100) NOT NULL,
	Announce nvarchar(max) NOT NULL,
	Title nvarchar(100) NOT NULL,
	Detail text NOT NULL,
	Time datetime NOT NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Comment](
	[ID] [int] NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
	[Time] [datetime] NOT NULL,
	[PostId] [int] NOT NULL,
	[Visible] [bit] NULL,
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




INSERT INTO [JAOBE].[dbo].[Post]
           ([ID]
           ,[UserId]
           ,[Announce]
           ,[Title]
           ,[Detail]
           ,[Time])
     VALUES
           (1
           ,'Admin'
           ,'Пол Маккартни написал письмо в поддержку арестованных участниц группы Pussy Riot. "Я надеюсь, что вы останетесь сильными и уверен, что я, так же как и многие другие люди, которые, как и я, верят в свободу слова, сделают все возможное для того, чтобы поддержать вас и принцип свободы творчества", - говорится в послании. '
           ,'Пол Маккартни написал письмо в поддержку Pussy Riot '
           ,'Пол Маккартни написал письмо в поддержку арестованных участниц группы Pussy Riot. "Я надеюсь, что вы останетесь сильными и уверен, что я, так же как и многие другие люди, которые, как и я, верят в свободу слова, сделают все возможное для того, чтобы поддержать вас и принцип свободы творчества", - говорится в послании. Письмо на своей странице в Facebook опубликовал продюсер Александр Чепарухин. В своем обращении Маккартни выразил надежду, что российские власти отпустят Надежду Толоконникову, Марию Алехину и Екатерину Самуцевич. "Я очень надеюсь, что российские власти будут соблюдать принцип свободы слова", - подчеркнул он. Участницы Pussy Riot обвиняются в хулиганстве. В феврале они выступили в Храме Христа Спасителя, где исполнили часть песни "Богородица, Путина прогони". Видеоролик был опубликован в интернете. В марте девушек арестовали. С тех пор они находятся в московском СИЗО. 17 августа Хамовнический суд вынесет участницам Pussy Riot приговор. Государственный обвинитель потребовал приговорить их к трем годам лишения свободы каждую. В поддержку панк-группы выступили многие музыкальные коллективы и исполнители, в том числе Мадонна, Стинг, Red Hot Chili Peppers, Franz Ferdinand, Бьорк, Патти Смит и другие. Группа Anti-Flag, известная своими левыми взглядами, записала кавер на песню "Богородица, Путина прогони". Свой кавер также записала российская группа "Барто" совместно с КаЧем. Кроме того, Моби выразил сожаление, что в Лос-Анджелесе не состоится акция в поддержку Pussy Riot. 17 августа акции в поддержку группы пройдут в 43 городах мира.'
           ,'9.08.12')
GO

INSERT INTO [JAOBE].[dbo].[Post]
           ([ID]
           ,[UserId]
           ,[Announce]
           ,[Title]
           ,[Detail]
           ,[Time])
     VALUES
           (2
           ,'Admin'
           ,'Президент Эквадора Рафаэль Корреа заявил в субботу, что считает преодоленным "инцидент" в связи с угрозой вторжения английской полиции в посольство этой южноамериканской страны в Лондоне.'
           ,'Глава Эквадора считает преодоленным инцидент с посольством в Лондоне'
           ,'Президент Эквадора Рафаэль Корреа заявил в субботу, что считает преодоленным "инцидент" в связи с угрозой вторжения английской полиции в посольство этой южноамериканской страны в Лондоне.В дипломатической миссии с 19 июня нынешнего года находится основатель сайта разоблачений WikiLeaks 41-летний гражданин Австралии Джулиан Ассанж, которого местные власти намерены арестовать и экстрадировать в Швецию, где он подозревается в изнасиловании и сексуальных домогательствах.16 августа Эквадор предоставил Ассанжу политическое убежище. Британский МИД направил эквадорским властям письмо с уведомлением о так называемом Законе о дипломатических и консульских помещениях от 1987 года, в соответствии с которым помещение может быть лишено дипломатического статуса, если занимающая его иностранная держава "перестанет использовать его для цели своей миссии или исключительно как консульское учреждение". В ответ Национальная ассамблея (парламент) Эквадора рекомендовала своему правительству обратиться в ООН с просьбой срочно созвать заседание Совета Безопасности в связи с угрозами Великобритании использовать силу для проникновения в эквадорское посольство в Лондоне.'
           ,'10.08.12')
GO


INSERT INTO [JAOBE].[dbo].[Post]
           ([ID]
           ,[UserId]
           ,[Announce]
           ,[Title]
           ,[Detail]
           ,[Time])
     VALUES
           (3
           ,'12'
           ,'Российско-украинское сотрудничество в рамках ВТО откроет новые возможности для двусторонней торговли. Об этом Владимир Путин заявил на встрече в Сочи с президентом Украины Виктором Януковичем. Глава российского государства напомнил, что на днях страна присоединилась к Организации, а Украина давно стала членом ВТО.'
           ,'Российско-украинское сотрудничество в рамках ВТО откроет новые возможности'
           ,'Российско-украинское сотрудничество в рамках ВТО откроет новые возможности для двусторонней торговли. Об этом Владимир Путин заявил на встрече в Сочи с президентом Украины Виктором Януковичем. Глава российского государства напомнил, что на днях страна присоединилась к Организации, а Украина давно стала членом ВТО.В свою очередь Янукович заявил, что Киев хотел бы изменить позицию по газовому вопросу в отношениях с Москвой. В чём именно может измениться позиция Украины, президент не уточнил. Кроме того украинский лидер добавил, что его страна хотела бы получить статус наблюдателя в ШОС.'
           ,'11.08.12')
GO

