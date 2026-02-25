-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('criczumo_away_team_color', 'criczumo_home_team_color', 'criczumo_live_team_color', 'criczumo_ended_team_color', 'criczumo_upcoming_team_color', 'live_team_color');

