
CREATE proc [dbo].[CalculateRanks] as

update r
set Position = rnk
FROM (
	select *, RANK() over( partition by GameNum order by Points desc) rnk
	from [chgk].[dbo].[GameResult]
	where Points is not null
) r

update r
set [Rank] = cast(Position + ( cast(cnt as decimal(2,1)) - 1 ) / 2 as decimal(3,1))
FROM (
	select *, count(1) over(partition by GameNum, Position) cnt
	from [chgk].[dbo].[GameResult]
) r