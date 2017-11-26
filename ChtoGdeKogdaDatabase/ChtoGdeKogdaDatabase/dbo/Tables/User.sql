CREATE TABLE [dbo].[User] (
    [Id]           INT            IDENTITY (1, 1) NOT NULL,
    [Name]         NVARCHAR (200) NOT NULL,
    [Password]     VARCHAR (100)  NULL,
    [FacebookId]   VARCHAR (500)  NULL,
    [Email]        VARCHAR (250)  NOT NULL,
    [TeamId]       INT            NULL,
    [IsTeamLeader] BIT            CONSTRAINT [DF_User_IsTeamLeader] DEFAULT ((0)) NOT NULL,
    [ApprovedBy]   INT            NULL,
    [UserType]     TINYINT        CONSTRAINT [DF_User_UserType] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_User_Team] FOREIGN KEY ([TeamId]) REFERENCES [dbo].[Team] ([Id])
);

