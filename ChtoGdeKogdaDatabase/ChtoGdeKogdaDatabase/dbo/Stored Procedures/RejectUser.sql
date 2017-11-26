-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[RejectUser]
	@userId int
AS
BEGIN
	SET NOCOUNT ON;

	update [User] set ApprovedBy = NULL, TeamId = NULL, IsTeamLeader = 0, UserType = 0 where Id = @userId

END