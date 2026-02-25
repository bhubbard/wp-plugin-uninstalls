-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wd_api_key', 'wd_data_server_key', 'wd_data_server', 'wd_custom_js', 'wd_is_test_mode');

