CREATE TABLE [dbo].[TeamQuestion] (
    [GameNum]      INT             NOT NULL,
    [TeamId]       INT             NOT NULL,
    [QuestionText] NVARCHAR (700)  NOT NULL,
    [Answer]       NVARCHAR (200)  NOT NULL,
    [Comments]     NVARCHAR (1300) NOT NULL,
    [Sources]      NVARCHAR (1300) NOT NULL,
    [Author]       NVARCHAR (100)  NOT NULL,
    [IsBlackBox]   BIT             NOT NULL,
    [ImageData]    VARBINARY (MAX) NULL,
    [IsReady]      BIT             DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_Question_1] PRIMARY KEY CLUSTERED ([GameNum] ASC, [TeamId] ASC)
);

