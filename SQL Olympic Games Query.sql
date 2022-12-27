 select id,name
	 ,case when Sex = 'M' then 'Male' else  'Female' end as Sex,
	 age,
	case
	 when [Age] < 18 then 'under 18'
	 when	Age between 18 and 25 then '18-25'
	 when	Age between 25 and 30 then '25-30'
	 when	Age > 30  then 'over 30'
	 end as [age Groups],
	 Height,
     Weight,
	 noc as 'Notion Code',
	 Year,
	 Season,
	 games,
	---left (games,CHARINDEX(' ',games)-1)  as 'year'
	---right (games,CHARINDEX(' ',REVERSE(games))-1) as 'season',
	Sport,
	Event,
	case when Medal='na' then 'Not reg' else medal end as medal

FROM [Olympic games ].[dbo].[athlete_events]
where right (games,CHARINDEX(' ',REVERSE(games))-1) = 'summer'


