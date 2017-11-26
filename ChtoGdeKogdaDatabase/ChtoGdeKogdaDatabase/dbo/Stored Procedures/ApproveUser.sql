-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ApproveUser]
	@userId int,
	@approvedById int
AS
BEGIN
	SET NOCOUNT ON;

	update [User] set ApprovedBy = @approvedById where Id = @userId

END