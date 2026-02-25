-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('module_positions_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_positions';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

