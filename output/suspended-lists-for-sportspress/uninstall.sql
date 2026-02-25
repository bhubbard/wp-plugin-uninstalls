-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sportspress_player_statistics_mode', 'sportspress_event_minutes', 'sportspress_list_show_title', 'sportspress_list_show_photos', 'sportspress_list_show_flags', 'sportspress_link_players', 'sportspress_link_teams', 'sportspress_enable_responsive_tables', 'sportspress_enable_sortable_tables', 'sportspress_enable_scrollable_tables', 'sportspress_list_paginated', 'sportspress_list_rows');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sp_caption', 'sp_team', 'sp_orderby', 'sp_order', 'sp_number', 'sp_column', 'sp_columns', 'sp_main_league', 'sp_current_season', 'sp_format', 'sp_adjustments', 'sp_crop', 'sp_sendoff', 'sp_metrics', 'sp_statistics', 'sp_results', 'sp_players', 'sp_timeline', 'sp_minutes', 'sp_status', 'sp_current_team');
DELETE FROM wp_usermeta WHERE meta_key IN ('sp_caption', 'sp_team', 'sp_orderby', 'sp_order', 'sp_number', 'sp_column', 'sp_columns', 'sp_main_league', 'sp_current_season', 'sp_format', 'sp_adjustments', 'sp_crop', 'sp_sendoff', 'sp_metrics', 'sp_statistics', 'sp_results', 'sp_players', 'sp_timeline', 'sp_minutes', 'sp_status', 'sp_current_team');
DELETE FROM wp_termmeta WHERE meta_key IN ('sp_caption', 'sp_team', 'sp_orderby', 'sp_order', 'sp_number', 'sp_column', 'sp_columns', 'sp_main_league', 'sp_current_season', 'sp_format', 'sp_adjustments', 'sp_crop', 'sp_sendoff', 'sp_metrics', 'sp_statistics', 'sp_results', 'sp_players', 'sp_timeline', 'sp_minutes', 'sp_status', 'sp_current_team');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sp_caption', 'sp_team', 'sp_orderby', 'sp_order', 'sp_number', 'sp_column', 'sp_columns', 'sp_main_league', 'sp_current_season', 'sp_format', 'sp_adjustments', 'sp_crop', 'sp_sendoff', 'sp_metrics', 'sp_statistics', 'sp_results', 'sp_players', 'sp_timeline', 'sp_minutes', 'sp_status', 'sp_current_team');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'sp_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'sp_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'sp_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'sp_%';

