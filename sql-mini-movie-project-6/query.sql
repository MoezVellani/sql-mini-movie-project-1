SELECT player_name, team_abbreviation, ts_pct

FROM nba

WHERE season = '2022-23' and gp >= 40 

ORDER by ts_pct desc 

LIMIT 10;
