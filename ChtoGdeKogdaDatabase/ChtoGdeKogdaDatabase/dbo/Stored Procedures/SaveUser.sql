-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SaveUser]
	@id int,
    @name nvarchar(200),
	@teamId int = null,
    @isTeamLeader bit,
    @userType tinyint
AS
BEGIN
	SET NOCOUNT ON;

	if @isTeamLeader = 1 
	begin
		if 0 <> (select count(1) from [User] where TeamId = @teamId and IsTeamLeader = 1)
		begin
		  RAISERROR(N'О боже! Это дуаль! В этой команде уже есть капитан!', 18, 1)
		  return
		end
	end

	update [User] 
	set Name = @name,
		TeamId = @teamId,
		IsTeamLeader = @isTeamLeader,
		UserType = @userType
	where id = @id

END