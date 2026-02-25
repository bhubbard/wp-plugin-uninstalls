-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('logincust_setting', 'login_customizer_options', 'login_customizer_settings', 'logincustomizer_review_dismiss', 'logincustomizer_active_time', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'themeisle_sdk_active_notification', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'themeisle_sdk_feed_items', 'themeisle_sdk_products');
DELETE FROM wp_options WHERE option_name LIKE '%_review_flag';
DELETE FROM wp_options WHERE option_name LIKE '%_translate_flag';
DELETE FROM wp_options WHERE option_name LIKE '%_license_data';
DELETE FROM wp_options WHERE option_name LIKE '%_failed_checks';
DELETE FROM wp_options WHERE option_name LIKE '%_license';
DELETE FROM wp_options WHERE option_name LIKE '%_license_status';
DELETE FROM wp_options WHERE option_name LIKE '%_license_plan';
DELETE FROM wp_options WHERE option_name LIKE '%_install';
DELETE FROM wp_options WHERE option_name LIKE '%_logger_flag';
DELETE FROM wp_options WHERE option_name LIKE 'ti_sdk_pause_%';
DELETE FROM wp_options WHERE option_name LIKE '%_license_data';
DELETE FROM wp_options WHERE option_name LIKE '%versions';
DELETE FROM wp_options WHERE option_name LIKE '%_warning_rollback';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'default_password_nag');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'default_password_nag');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'default_password_nag');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'default_password_nag');

