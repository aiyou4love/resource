USE [accountDb]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_accountTb](
	[accountId] [bigint] IDENTITY(1,1) NOT NULL,
	[accountType] [smallint] NOT NULL,
	[accountName] [char](20) NOT NULL,
	[accountPassword] [char](20) NOT NULL,
	[accountAuthority] [smallint] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_agentList](
	[gameName] [char](10) NOT NULL,
	[agentId] [int] NOT NULL,
	[classify] [smallint] NOT NULL,
	[agentIp] [varchar](50) NOT NULL,
	[agentPort] [char](10) NOT NULL,
	[playerMax] [int] NOT NULL,
	[playerCount] [int] NOT NULL,
	[serialNo] [char](10) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_lastUpdate](
	[operatorName] [char](10) NOT NULL,
	[updateName] [char](10) NOT NULL,
	[updateNo] [int] NOT NULL,
	[packetName] [varchar](50) NULL,
	[downloadUrl] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_operatorName](
	[operatorKey] [char](10) NOT NULL,
	[versionNo] [int] NOT NULL,
	[operatorName] [char](10) NOT NULL,
	[gameName] [char](10) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_roleList](
	[gameName] [char](10) NOT NULL,
	[accountId] [bigint] NOT NULL,
	[serverId] [int] NOT NULL,
	[roleId] [int] NOT NULL,
	[roleType] [smallint] NOT NULL,
	[roleName] [nvarchar](50) NOT NULL,
	[roleRace] [smallint] NOT NULL,
	[roleStep] [smallint] NOT NULL,
	[roleLevel] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_roleStart](
	[gameName] [char](10) NOT NULL,
	[accountId] [bigint] NOT NULL,
	[serverId] [int] NOT NULL,
	[roleId] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_serverInfo](
	[gameName] [char](10) NOT NULL,
	[serverNo] [int] NOT NULL,
	[serverStart] [datetime] NOT NULL,
	[classify] [smallint] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_serverList](
	[gameName] [char](10) NOT NULL,
	[serverId] [int] NOT NULL,
	[serverName] [nchar](10) NOT NULL,
	[serverNo] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_socialList](
	[gameName] [char](10) NOT NULL,
	[classify] [smallint] NOT NULL,
	[socialId] [int] NOT NULL,
	[socialIp] [varchar](50) NOT NULL,
	[socialPort] [char](10) NOT NULL,
	[serialNo] [char](10) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_upint](
	[gameName] [char](10) NOT NULL,
	[updateName] [char](10) NOT NULL,
	[updateNo] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[t_accountTb] ON 

INSERT [dbo].[t_accountTb] ([accountId], [accountType], [accountName], [accountPassword], [accountAuthority]) VALUES (1, 1, N'zyh                 ', N'123456              ', 5)
INSERT [dbo].[t_accountTb] ([accountId], [accountType], [accountName], [accountPassword], [accountAuthority]) VALUES (10001, 1, N'zyh00               ', N'123456              ', 1)
INSERT [dbo].[t_accountTb] ([accountId], [accountType], [accountName], [accountPassword], [accountAuthority]) VALUES (10002, 1, N'zyh11               ', N'123456              ', 1)
INSERT [dbo].[t_accountTb] ([accountId], [accountType], [accountName], [accountPassword], [accountAuthority]) VALUES (10003, 1, N'zyh33               ', N'123456              ', 1)
INSERT [dbo].[t_accountTb] ([accountId], [accountType], [accountName], [accountPassword], [accountAuthority]) VALUES (10004, 1, N'zyh88               ', N'123456              ', 1)
INSERT [dbo].[t_accountTb] ([accountId], [accountType], [accountName], [accountPassword], [accountAuthority]) VALUES (10005, 1, N'zyh55               ', N'123456              ', 1)
SET IDENTITY_INSERT [dbo].[t_accountTb] OFF
INSERT [dbo].[t_agentList] ([gameName], [agentId], [classify], [agentIp], [agentPort], [playerMax], [playerCount], [serialNo]) VALUES (N'figus     ', 1, 1, N'127.0.0.1', N'8888      ', 6000, 0, N'YWdlbnQ=  ')
INSERT [dbo].[t_lastUpdate] ([operatorName], [updateName], [updateNo], [packetName], [downloadUrl]) VALUES (N'iosfigus  ', N'versionNo ', 1, NULL, NULL)
INSERT [dbo].[t_lastUpdate] ([operatorName], [updateName], [updateNo], [packetName], [downloadUrl]) VALUES (N'iosagent  ', N'versionNo ', 1, NULL, NULL)
INSERT [dbo].[t_lastUpdate] ([operatorName], [updateName], [updateNo], [packetName], [downloadUrl]) VALUES (N'iossocial ', N'versionNo ', 1, NULL, NULL)
INSERT [dbo].[t_lastUpdate] ([operatorName], [updateName], [updateNo], [packetName], [downloadUrl]) VALUES (N'iosgame   ', N'versionNo ', 1, NULL, NULL)
INSERT [dbo].[t_lastUpdate] ([operatorName], [updateName], [updateNo], [packetName], [downloadUrl]) VALUES (N'ioscenter ', N'versionNO ', 1, NULL, NULL)
INSERT [dbo].[t_operatorName] ([operatorKey], [versionNo], [operatorName], [gameName]) VALUES (N'iosfigus  ', 1, N'iosfigus  ', N'figus     ')
INSERT [dbo].[t_operatorName] ([operatorKey], [versionNo], [operatorName], [gameName]) VALUES (N'iosagent  ', 1, N'iosagent  ', N'figus     ')
INSERT [dbo].[t_operatorName] ([operatorKey], [versionNo], [operatorName], [gameName]) VALUES (N'iossocial ', 1, N'iossocial ', N'figus     ')
INSERT [dbo].[t_operatorName] ([operatorKey], [versionNo], [operatorName], [gameName]) VALUES (N'iosgame   ', 1, N'iosgame   ', N'figus     ')
INSERT [dbo].[t_roleList] ([gameName], [accountId], [serverId], [roleId], [roleType], [roleName], [roleRace], [roleStep], [roleLevel]) VALUES (N'figus     ', 1, 1, 1, 1, N'谟', 1, 1, 1)
INSERT [dbo].[t_roleStart] ([gameName], [accountId], [serverId], [roleId]) VALUES (N'figus     ', 1, 1, 1)
INSERT [dbo].[t_serverInfo] ([gameName], [serverNo], [serverStart], [classify]) VALUES (N'figus     ', 1, CAST(N'2016-07-01 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[t_serverList] ([gameName], [serverId], [serverName], [serverNo]) VALUES (N'figus     ', 1, N'热血江湖      ', 1)
INSERT [dbo].[t_socialList] ([gameName], [classify], [socialId], [socialIp], [socialPort], [serialNo]) VALUES (N'figus     ', 1, 1, N'127.0.0.1', N'8889      ', N'c29jaWFs  ')
INSERT [dbo].[t_upint] ([gameName], [updateName], [updateNo]) VALUES (N'figus     ', N'serverList', 1)
