-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetUserById]
	@id int
AS
BEGIN
	SET NOCOUNT ON;

	SELECT * from [User] where id = @id

END