CREATE TABLE [dbo].[QuestionEdition] (
    [QuestionId] INT            NOT NULL,
    [EditorId]   INT            NOT NULL,
    [Comments]   NVARCHAR (500) NOT NULL,
    [Decision]   TINYINT        NOT NULL,
    CONSTRAINT [PK_QuestionEdition] PRIMARY KEY CLUSTERED ([QuestionId] ASC, [EditorId] ASC),
    CONSTRAINT [FK_QuestionEdition_User] FOREIGN KEY ([EditorId]) REFERENCES [dbo].[User] ([Id])
);

