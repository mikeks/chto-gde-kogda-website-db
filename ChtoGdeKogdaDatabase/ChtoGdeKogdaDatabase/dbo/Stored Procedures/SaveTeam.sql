-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SaveTeam]
	@id int,
	@aboutText nvarchar(max),
	@teamImage varbinary(max) = null

AS
BEGIN
	SET NOCOUNT ON;

	update Team
	set 
		AboutText = @aboutText,
		TeamImage = isnull(@teamImage, TeamImage)
	where 
		Id = @id

		   
END