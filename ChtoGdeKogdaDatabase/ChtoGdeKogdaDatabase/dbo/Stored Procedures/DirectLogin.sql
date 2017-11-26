
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DirectLogin]
	@email varchar(250),
	@password varchar(20)
AS
BEGIN
	SET NOCOUNT ON;

	select * from [User] where Email = @email and [Password] = @password

END