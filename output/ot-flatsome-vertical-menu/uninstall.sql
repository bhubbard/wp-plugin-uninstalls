-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ot_vm', 'menu-icons', 'themeisle_sdk_notifications', 'themeisle_sdk_cache_token', 'themeisle_sdk_feed_items', 'themeisle_sdk_products', 'update_plugins', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_license_data';
DELETE FROM wp_options WHERE option_name LIKE '%_license_status';
DELETE FROM wp_options WHERE option_name LIKE '%_failed_checks';
DELETE FROM wp_options WHERE option_name LIKE '%_license_plan';
DELETE FROM wp_options WHERE option_name LIKE '%_logger_flag';
DELETE FROM wp_options WHERE option_name LIKE '%_install';
DELETE FROM wp_options WHERE option_name LIKE '%_license';
DELETE FROM wp_options WHERE option_name LIKE '%_license_data';
DELETE FROM wp_options WHERE option_name LIKE '%act_err';
DELETE FROM wp_options WHERE option_name LIKE 'ti_theme_info_%';
DELETE FROM wp_options WHERE option_name LIKE 'ti_plugin_info_%';
DELETE FROM wp_options WHERE option_name LIKE '%_warning_rollback';
DELETE FROM wp_options WHERE option_name LIKE 'ti_sdk_pause_%';

