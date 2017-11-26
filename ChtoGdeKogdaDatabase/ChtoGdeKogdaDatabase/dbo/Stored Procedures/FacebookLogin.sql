-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[FacebookLogin]
	@facebookId varchar(500),
	@name nvarchar(200),
	@email varchar(250) = null
AS
BEGIN
	SET NOCOUNT ON;

	declare @id int
	select @id = id from [User] where Email = @email or FacebookId = @facebookId

	if @id is null
	begin
		insert [User] (Name, Email, FacebookId) values (@name, @email, @facebookId)

		set @id = SCOPE_IDENTITY()
	end

	select * from [User] where id = @id


END