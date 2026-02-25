-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cinemabase_players', 'cinemabase_token', 'cinemabase_excerpt', 'cinemabase_welcome_notice');

