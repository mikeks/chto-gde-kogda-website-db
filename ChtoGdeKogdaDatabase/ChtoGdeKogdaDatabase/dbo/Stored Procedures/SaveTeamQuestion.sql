-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SaveTeamQuestion]
	@gameNum int,
	@teamId int,
	@questionText nvarchar(700),
    @answer nvarchar(200),
    @comments nvarchar(1300),
    @sources nvarchar(1300),
    @author nvarchar(100),
    @isBlackBox bit,
	@isReady bit = 0,
	@imageData varbinary(max) = null

AS
BEGIN
	SET NOCOUNT ON;

	update TeamQuestion
	set 
		QuestionText = @questionText,
		Answer = @answer,
		Comments = @comments,
		Sources = @sources,
		Author = @author,
		IsBlackBox = @isBlackBox,
		IsReady = @isReady,
		ImageData = ISNULL(@imageData, ImageData)
	where 
		GameNum = @gameNum and TeamId = @teamId

	if @@ROWCOUNT = 0
		INSERT INTO [dbo].[TeamQuestion]
				   (GameNum,
				   [TeamId]
				   ,[QuestionText]
				   ,[Answer]
				   ,[Comments]
				   ,[Sources]
				   ,[Author]
				   ,[IsBlackBox],
				   ImageData,
				   IsReady
				   )
			 VALUES
			  (
				@gameNum,
				   @teamId,
				   @questionText,
				   @answer,
				   @comments,
				   @sources,
				   @author,
				   @isBlackBox,
				   @imageData,
				   @isReady
				)
		   
END