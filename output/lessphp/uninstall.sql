-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_stylesheet_path';
DELETE FROM wp_options WHERE option_name LIKE '%_stylesheet_uri';
DELETE FROM wp_options WHERE option_name LIKE '%_stylesheet_time';

