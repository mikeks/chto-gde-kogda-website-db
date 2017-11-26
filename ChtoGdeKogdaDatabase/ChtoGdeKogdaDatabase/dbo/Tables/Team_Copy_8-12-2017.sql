CREATE TABLE [dbo].[Team_Copy_8-12-2017] (
    [Id]         INT             IDENTITY (1, 1) NOT NULL,
    [Name]       NVARCHAR (100)  NOT NULL,
    [UrlName]    VARCHAR (50)    NOT NULL,
    [AboutText]  NVARCHAR (MAX)  NULL,
    [TeamImage]  VARBINARY (MAX) NULL,
    [IsInLeague] BIT             NOT NULL
);

