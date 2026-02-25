-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('publitio_default_player_id', 'publitio_key', 'publitio_secret', 'publitio_wordpress_data', 'publitio_players');

