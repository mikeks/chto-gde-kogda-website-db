CREATE TABLE [dbo].[GameResult] (
    [GameNum]           INT            NOT NULL,
    [TeamId]            INT            NOT NULL,
    [Points]            INT            NULL,
    [AnsweredQuestions] VARCHAR (500)  NULL,
    [Position]          INT            NULL,
    [Rank]              DECIMAL (3, 1) NULL,
    CONSTRAINT [PK_GameResult] PRIMARY KEY CLUSTERED ([GameNum] ASC, [TeamId] ASC),
    CONSTRAINT [FK_GameResults_Team] FOREIGN KEY ([TeamId]) REFERENCES [dbo].[Team] ([Id])
);

