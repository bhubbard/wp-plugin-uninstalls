-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('euphrenic_player_lite_for_youtube_options', 'euphrenic_player_lite_for_youtube_galleries', 'euphrenic_player_lite_for_youtube_version', 'euphrenic_activation_redirect');

