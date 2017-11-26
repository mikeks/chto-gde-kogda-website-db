CREATE TABLE [dbo].[RssFeed] (
    [Id]      INT            IDENTITY (1, 1) NOT NULL,
    [Created] SMALLDATETIME  CONSTRAINT [DF_RssFeed_Created] DEFAULT (getdate()) NOT NULL,
    [Text]    NVARCHAR (MAX) NOT NULL
);

