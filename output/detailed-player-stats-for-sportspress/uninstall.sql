-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dpsfs_player_statistics_mode', 'dpsfs_show_day', 'dpsfs_show_number', 'dpsfs_show_performances', 'dpsfs_show_minutes', 'dpsfs_show_extra_details', 'sportspress_event_minutes', 'sportspress_player_show_statistics', 'sportspress_player_show_total', 'sportspress_enable_scrollable_tables', 'sportspress_player_show_career_total', 'sportspress_player_performance_sections');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sp_day', 'sp_players', 'sp_timeline', 'sp_minutes', 'sp_sendoff', 'sp_assignments', 'sp_order');
DELETE FROM wp_usermeta WHERE meta_key IN ('sp_day', 'sp_players', 'sp_timeline', 'sp_minutes', 'sp_sendoff', 'sp_assignments', 'sp_order');
DELETE FROM wp_termmeta WHERE meta_key IN ('sp_day', 'sp_players', 'sp_timeline', 'sp_minutes', 'sp_sendoff', 'sp_assignments', 'sp_order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sp_day', 'sp_players', 'sp_timeline', 'sp_minutes', 'sp_sendoff', 'sp_assignments', 'sp_order');

