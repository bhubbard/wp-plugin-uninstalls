-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_data';
DELETE FROM wp_options WHERE option_name LIKE '%plugins_data';

