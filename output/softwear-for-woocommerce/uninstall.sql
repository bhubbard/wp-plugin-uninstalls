-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('softwearwc_settings', 'softwearwc_settings_error');
DELETE FROM wp_options WHERE option_name LIKE '%settings_error';
DELETE FROM wp_options WHERE option_name LIKE '%settings_retail_error';
DELETE FROM wp_options WHERE option_name LIKE '%settings_latest_collection_error';
DELETE FROM wp_options WHERE option_name LIKE '%check_connection';

