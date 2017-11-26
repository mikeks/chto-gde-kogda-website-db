CREATE TABLE [dbo].[GameQuestion] (
    [GameNum]          INT             NOT NULL,
    [QuestionNum]      INT             NOT NULL,
    [TeamId]           INT             NULL,
    [QuestionText]     NVARCHAR (700)  NOT NULL,
    [Answer]           NVARCHAR (200)  NOT NULL,
    [AcceptedAnswers]  NVARCHAR (700)  CONSTRAINT [DF_GameQuestion_AcceptedAnswers] DEFAULT ('') NOT NULL,
    [Comments]         NVARCHAR (1300) NOT NULL,
    [Sources]          NVARCHAR (1300) NOT NULL,
    [Author]           NVARCHAR (100)  NOT NULL,
    [IsBlackBox]       BIT             NOT NULL,
    [EditorComments]   NVARCHAR (1300) CONSTRAINT [DF_GameQuestion_EditorComments] DEFAULT ('') NOT NULL,
    [EditorMark]       TINYINT         CONSTRAINT [DF_GameQuestion_EditorMark] DEFAULT ((0)) NOT NULL,
    [ImageData]        VARBINARY (MAX) NULL,
    [IsBestOfTheGame]  BIT             CONSTRAINT [DF_GameQuestion_IsBestOfTheGame] DEFAULT ((0)) NOT NULL,
    [TeamsAnswered]    VARCHAR (100)   NULL,
    [TeamsPlayedCount] TINYINT         NULL,
    [IsClubQuestion]   BIT             CONSTRAINT [DF_GameQuestion_IsClubQuestion] DEFAULT ((0)) NOT NULL,
    [RssFeedId]        INT             NULL,
    CONSTRAINT [PK_GameQuestion] PRIMARY KEY CLUSTERED ([GameNum] ASC, [QuestionNum] ASC)
);

