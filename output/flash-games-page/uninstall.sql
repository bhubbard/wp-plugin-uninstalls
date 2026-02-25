-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flash_games_top_games', 'flash_games_top_num', 'flash_games_new_games', 'flash_games_link', 'flash_games_new_num');

