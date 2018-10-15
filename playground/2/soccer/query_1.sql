select 
M.id as match_id
,L.name as league_name
,C.name as country_name
,HT.team_long_name as home_team_long_name
,HT.team_short_name as home_team_short_name
,AT.team_long_name as away_team_long_name
,AT.team_short_name as away_team_short_name
,M.home_team_goal as home_team_goals
,M.away_team_goal as away_team_goals
,M.home_player_1
,M.home_player_2
,M.home_player_3
,M.home_player_4
,M.home_player_5
,M.home_player_6
,M.home_player_7
,M.home_player_8
,M.home_player_9
,M.home_player_10
,M.home_player_11
,M.away_player_1
,M.away_player_2
,M.away_player_3
,M.away_player_4
,M.away_player_5
,M.away_player_6
,M.away_player_7
,M.away_player_8
,M.away_player_9
,M.away_player_10
,M.away_player_11
,M.goal
,M.shoton
,M.shotoff
,M.corner
,M.foulcommit
,M.card
,M.cross
,M.possession
from [Match] as M
join League as L on M.league_id = L.id
join Country as C on C.id = L.country_id
join Team as HT on HT.team_api_id = M.home_team_api_id
join Team as AT on AT.team_api_id = M.away_team_api_id

