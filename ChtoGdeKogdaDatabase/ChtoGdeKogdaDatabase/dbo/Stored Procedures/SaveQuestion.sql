-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SaveQuestion]
	@teamId int,
	@questionText nvarchar(700),
    @answer nvarchar(200),
    @comments nvarchar(1300),
    @sources nvarchar(1300),
    @author nvarchar(100),
    @isBlackBox bit

AS
BEGIN
	SET NOCOUNT ON;

INSERT INTO [dbo].[Question]
           ([TeamId]
           ,[QuestionText]
           ,[Answer]
           ,[Comments]
           ,[Sources]
           ,[Author]
           ,[IsBlackBox])
     VALUES
	  (
           @teamId,
		   @questionText,
		   @answer,
		   @comments,
		   @sources,
		   @author,
		   @isBlackBox
		)
		   
END