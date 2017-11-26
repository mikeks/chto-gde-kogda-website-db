-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddPlayerToTeam]
	@userId int,
	@teamId int
AS
BEGIN
	SET NOCOUNT ON;

	update [User] set TeamId = @teamId where Id = @userId

END