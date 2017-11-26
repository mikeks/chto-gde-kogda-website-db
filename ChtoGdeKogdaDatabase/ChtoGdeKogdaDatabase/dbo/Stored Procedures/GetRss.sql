
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetRss]
(
	@gameNum int
)
AS
BEGIN
	SET NOCOUNT ON;

	declare @created smalldatetime
	select top (1) @created = Created 
	from RssFeed
	order by Created desc

	if @created is null or DATEDIFF(hour, @created, getdate()) > 27
	begin

		declare @qnum int, @tx nvarchar(700), @author nvarchar(100)
	
		select 
			@tx = QuestionText, 
			@qnum = QuestionNum,
			@author = Author
		from GameQuestion
		where RssFeedId is null 
			and GameNum = @gameNum
		order by QuestionNum desc

		declare @text nvarchar(1000)

		if @author > '' set @author = N'<br><br>Автор: ' + @author

		set @text = N'Вопрос №' + cast(@qnum as varchar(2)) + ' (' + cast(@gameNum as varchar(2)) + N' игра Филадельфийского клуба ЧГК)<br><br>' +
			@tx + @author +
			 N'<br><br>Постарайтесь ответить на этот вопрос сами. Но если не можете, ответ есть на сайте chtogdekogda.org. Там же есть статистика по взятию вопроса на игре, комментарии и кое-что еще.'

		declare @rssId int

		insert into RssFeed ([Text]) 
		values (@text)

		set @rssId = SCOPE_IDENTITY()

		update GameQuestion 
		set RssFeedId = @rssId
		where GameNum = @gameNum and QuestionNum = @qnum


	end

	select top (1) Id, [text]
	from RssFeed
	order by Created desc


END