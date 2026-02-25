-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('locatoraid_share_database', 'locatoraid-rest_auth_code', 'locatoraid-rest_enabled');
DELETE FROM wp_options WHERE option_name LIKE '%_menu_title';
DELETE FROM wp_options WHERE option_name LIKE '%_auth_code';
DELETE FROM wp_options WHERE option_name LIKE '%_enabled';

