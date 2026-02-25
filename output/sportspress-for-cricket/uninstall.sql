-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('recently_activated', 'sportspress_event_show_players', 'sportspress_event_show_player_numbers', 'sportspress_event_performance_mode', 'sportspress_event_logos_results_delimiter', 'sportspress_event_logos_reverse_results_format', 'sportspress_event_show_score_status', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sp_team');
DELETE FROM wp_usermeta WHERE meta_key IN ('sp_team');
DELETE FROM wp_termmeta WHERE meta_key IN ('sp_team');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sp_team');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

