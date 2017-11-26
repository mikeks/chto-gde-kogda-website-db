-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SaveGameResult]
	@gameNum int,
    @teamId int,
    @points int,
    @answeredQuestions varchar(500)
AS
BEGIN
	SET NOCOUNT ON;

	
	update GameResult
	set 
		Points = @points,
		AnsweredQuestions = @answeredQuestions
	where 
		GameNum = @gameNum and TeamId = @teamId

	if @@ROWCOUNT = 0
		INSERT INTO [dbo].GameResult
				   (GameNum,
				   [TeamId],
				   [Points], 
				   AnsweredQuestions
				   )
			 VALUES
			  (
				@gameNum,
				   @teamId,
				   @points,
				   @answeredQuestions
				)

END