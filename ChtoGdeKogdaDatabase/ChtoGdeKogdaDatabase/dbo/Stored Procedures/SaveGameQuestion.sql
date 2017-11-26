-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SaveGameQuestion]
	@gameNum int,
	@questionNum int,
	@teamId int = null,
	@questionText nvarchar(700),
    @answer nvarchar(200),
	@acceptedAnswers  nvarchar(700),
    @comments nvarchar(1300),
    @sources nvarchar(1300),
    @author nvarchar(100),
    @isBlackBox bit,
	@editorComments nvarchar(1300),
	@editorMark tinyint,
	@imageData varbinary(max) = null,
	@isBestOfTheGame bit 

AS
BEGIN
	SET NOCOUNT ON;

	update GameQuestion
	set 
		TeamId = @teamId,
		QuestionText = @questionText,
		Answer = @answer,
		AcceptedAnswers = @acceptedAnswers,
		Comments = @comments,
		Sources = @sources,
		Author = @author,
		IsBlackBox = @isBlackBox,
		EditorComments = @editorComments,
		EditorMark = @editorMark,
		IsBestOfTheGame = @isBestOfTheGame,
		ImageData = ISNULL(@imageData, ImageData)
	where 
		GameNum = @gameNum and QuestionNum = @questionNum

	if @@ROWCOUNT = 0
		INSERT INTO [dbo].GameQuestion
				   (GameNum,
				   QuestionNum,
				   [TeamId]
				   ,[QuestionText]
				   ,[Answer]
				   ,AcceptedAnswers
				   ,[Comments]
				   ,[Sources]
				   ,[Author]
				   ,[IsBlackBox],
				   EditorComments,
				   EditorMark,
				   ImageData,
				   IsBestOfTheGame
				   )
			 VALUES
			  (
				@gameNum,
				@questionNum,
				   @teamId,
				   @questionText,
				   @answer,
				   @acceptedAnswers,
				   @comments,
				   @sources,
				   @author,
				   @isBlackBox,
				   @editorComments,
				   @editorMark,
				   @imageData,
				   @isBestOfTheGame
				)
		   
END