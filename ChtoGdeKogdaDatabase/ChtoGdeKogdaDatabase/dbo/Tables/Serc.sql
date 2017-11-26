CREATE TABLE [dbo].[Serc] (
    [ID]       INT           IDENTITY (1, 1) NOT NULL,
    [Question] VARCHAR (MAX) NULL,
    [Answer]   VARCHAR (MAX) NULL,
    [Picture]  BINARY (50)   NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

