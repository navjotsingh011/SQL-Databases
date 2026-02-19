CREATE TABLE [dbo].[User]
(
[UserId] [bigint] NOT NULL IDENTITY(1, 1),
[Username] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
[FirstName] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AI NULL,
[LastName] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AI NULL,
[PasswordSalt] [nvarchar] (1000) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
[PasswordHash] [nvarchar] (1000) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
[Status] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AI NULL,
[CreatedOn] [datetime] NOT NULL CONSTRAINT [DK_User_CreatedOn] DEFAULT (getutcdate()),
[CreatedBy] [bigint] NULL,
[ModifiedOn] [datetime] NOT NULL CONSTRAINT [DK_User_ModifiedOn] DEFAULT (getutcdate()),
[ModifiedBy] [bigint] NULL,
[IsActive] [bit] NOT NULL CONSTRAINT [DK_User_IsActive] DEFAULT ((1)),
[IsDeleted] [bit] NOT NULL CONSTRAINT [DK_User_IsDeleted] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[User] ADD CONSTRAINT [PK_User_UserId] PRIMARY KEY CLUSTERED ([UserId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[User] ADD CONSTRAINT [UK_User_Username] UNIQUE NONCLUSTERED ([Username]) ON [PRIMARY]
GO
