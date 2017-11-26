-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SaveGameQuestionTeamsResults]
	@gameNum int,
	@questionNum int,
	@teamsAnswered varchar(100),
	@teamsPlayedCount int
AS
BEGIN
	SET NOCOUNT ON;

	update GameQuestion
	set 
		TeamsAnswered = @teamsAnswered,
		TeamsPlayedCount = @teamsPlayedCount
	where 
		GameNum = @gameNum and QuestionNum = @questionNum

		   
END