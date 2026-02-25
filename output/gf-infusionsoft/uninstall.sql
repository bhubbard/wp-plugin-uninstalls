-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('recently_activated');
DELETE FROM wp_options WHERE option_name LIKE '%_debug';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_lists';
DELETE FROM wp_options WHERE option_name LIKE '%_updates';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_crm';
DELETE FROM wp_options WHERE option_name LIKE '%_meta';
DELETE FROM wp_options WHERE option_name LIKE '%_msg';
DELETE FROM wp_options WHERE option_name LIKE '%_install_data';

