-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('station_id', 'autoplay', 'player', 'default_image', 'navigation', 'container');

