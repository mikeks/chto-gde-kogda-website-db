CREATE TABLE [dbo].[Team] (
    [Id]         INT             IDENTITY (1, 1) NOT NULL,
    [Name]       NVARCHAR (100)  NOT NULL,
    [UrlName]    VARCHAR (50)    NOT NULL,
    [AboutText]  NVARCHAR (MAX)  NULL,
    [TeamImage]  VARBINARY (MAX) NULL,
    [IsInLeague] BIT             CONSTRAINT [DF_Team_IsInLeague] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_Team] PRIMARY KEY CLUSTERED ([Id] ASC)
);

