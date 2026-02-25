-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_zoom_position';
DELETE FROM wp_options WHERE option_name LIKE '%_lat_position';
DELETE FROM wp_options WHERE option_name LIKE '%_lng_position';

