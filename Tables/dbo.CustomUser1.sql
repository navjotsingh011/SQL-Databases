CREATE TABLE [dbo].[CustomUser1]
(
[UserId] [bigint] NOT NULL IDENTITY(1, 1),
[Username] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
[FirstName] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AI NULL,
[LastName] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AI NULL,
[PasswordSalt] [nvarchar] (1000) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
[PasswordHash] [nvarchar] (1000) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
[Status] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AI NULL,
[CreatedOn] [datetime] NOT NULL CONSTRAINT [DK_CustomUser1_CreatedOn] DEFAULT (getutcdate()),
[CreatedBy] [bigint] NULL,
[ModifiedOn] [datetime] NOT NULL CONSTRAINT [DK_CustomUser1_ModifiedOn] DEFAULT (getutcdate()),
[ModifiedBy] [bigint] NULL,
[IsActive] [bit] NOT NULL CONSTRAINT [DK_User1_IsActive] DEFAULT ((1)),
[IsDeleted] [bit] NOT NULL CONSTRAINT [CustomCustom] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CustomUser1] ADD CONSTRAINT [PK_CustomUser1_UserId] PRIMARY KEY CLUSTERED ([UserId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CustomUser1] ADD CONSTRAINT [UK_CustomUser1_Username] UNIQUE NONCLUSTERED ([Username]) ON [PRIMARY]
GO
