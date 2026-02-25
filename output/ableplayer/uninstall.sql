-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('able_player_count', 'able_show_playground_intro', 'ableplayer_settings');

