-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_tube_user', 'wp_tube_cat', 'wp_tube_lud', 'wp_tube_default_player', 'wp_tube_player_colors', 'wp_tube_player_width_x', 'wp_tube_player_width_y', 'wp_tube_bump', 'wp_tube_custom_player', 'wp_tube_dbv');

