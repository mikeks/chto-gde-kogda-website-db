CREATE TABLE [dbo].[TeamPhotoGallery] (
    [Id]          INT             IDENTITY (1, 1) NOT NULL,
    [TeamId]      INT             NOT NULL,
    [Description] NVARCHAR (1000) CONSTRAINT [DF_TeamPhotoGallery_Description] DEFAULT ('') NOT NULL
);

