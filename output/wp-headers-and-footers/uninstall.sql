-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'wpheaderandfooter_basics', 'wpheaderandfooter_active_time', 'wpheaderandfooter_review_dismiss', 'wpheaderandfooter_basics_logger', 'wpheaderandfooter_settings', 'wpb_sdk_wp-headers-and-footers', '_wpheaderandfooter_optin', 'login_customizer_options', 'login_customizer_settings', 'wpb_sdk_module_id', 'wpb_sdk_module_slug', 'wpb_api_cache', 'update_plugins', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'wpb_sdk_%';

