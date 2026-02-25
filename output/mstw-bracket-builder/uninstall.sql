-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bb-current-tourney');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rounds', 'dtg', 'time_is_tba', 'location', 'location_text', 'period', 'time_remaining', 'is_final', 'game_nbr', 'round_nbr', 'tournament', 'bracket', 'has_consolation', 'league', 'elimination', 'scheduling_method', 'round_names', 'home_score', 'away_score', 'home_text', 'team_name', 'team_short_name', 'team_mascot', 'team_logo', 'home', 'away', 'away_text', 'venue_city', 'venue_state');
DELETE FROM wp_usermeta WHERE meta_key IN ('rounds', 'dtg', 'time_is_tba', 'location', 'location_text', 'period', 'time_remaining', 'is_final', 'game_nbr', 'round_nbr', 'tournament', 'bracket', 'has_consolation', 'league', 'elimination', 'scheduling_method', 'round_names', 'home_score', 'away_score', 'home_text', 'team_name', 'team_short_name', 'team_mascot', 'team_logo', 'home', 'away', 'away_text', 'venue_city', 'venue_state');
DELETE FROM wp_termmeta WHERE meta_key IN ('rounds', 'dtg', 'time_is_tba', 'location', 'location_text', 'period', 'time_remaining', 'is_final', 'game_nbr', 'round_nbr', 'tournament', 'bracket', 'has_consolation', 'league', 'elimination', 'scheduling_method', 'round_names', 'home_score', 'away_score', 'home_text', 'team_name', 'team_short_name', 'team_mascot', 'team_logo', 'home', 'away', 'away_text', 'venue_city', 'venue_state');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rounds', 'dtg', 'time_is_tba', 'location', 'location_text', 'period', 'time_remaining', 'is_final', 'game_nbr', 'round_nbr', 'tournament', 'bracket', 'has_consolation', 'league', 'elimination', 'scheduling_method', 'round_names', 'home_score', 'away_score', 'home_text', 'team_name', 'team_short_name', 'team_mascot', 'team_logo', 'home', 'away', 'away_text', 'venue_city', 'venue_state');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_text';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_text';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_text';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_text';

