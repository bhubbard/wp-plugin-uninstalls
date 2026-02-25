-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('protected_video_player_theme_color', 'protected_video_disable_right_click');

