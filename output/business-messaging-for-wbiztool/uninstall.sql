-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wbiztool_messaging_settings', 'woocommerce_store_phone', 'wbiztool_messaging_version', 'wbiztool_messaging_network_settings', 'wbiztool_test_setting', 'wbiztool_messaging_connection_test', 'wbiztool_messaging_api_status', 'wbiztool_messaging_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wbiztool_messaging_preferences', 'wbiztool_messaging_last_test');
DELETE FROM wp_usermeta WHERE meta_key IN ('wbiztool_messaging_preferences', 'wbiztool_messaging_last_test');
DELETE FROM wp_termmeta WHERE meta_key IN ('wbiztool_messaging_preferences', 'wbiztool_messaging_last_test');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wbiztool_messaging_preferences', 'wbiztool_messaging_last_test');

