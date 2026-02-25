-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%key';
DELETE FROM wp_options WHERE option_name LIKE '%login';
DELETE FROM wp_options WHERE option_name LIKE '%searchId';
DELETE FROM wp_options WHERE option_name LIKE '%pluginId';
DELETE FROM wp_options WHERE option_name LIKE '%message';

