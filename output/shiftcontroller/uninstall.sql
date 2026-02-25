-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sh4-rest_auth_code', 'sh4-rest_enabled');
DELETE FROM wp_options WHERE option_name LIKE '%_menu_title';
DELETE FROM wp_options WHERE option_name LIKE '%_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%_auth_code';

