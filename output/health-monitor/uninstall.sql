-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('health_monitor_options', 'health_monitor_account_settings', 'health_monitor_last_email_sent_time', 'woocommerce_db_version', 'auto_update_plugins', 'health_monitor_version', 'health_monitor_latest_wp_version', 'update_themes', 'health_monitor_latest_curl_version', 'health_monitor_latest_mysql_version', 'health_monitor_latest_php_version', 'health_monitor_db_data_size', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'health_monitor_latest_plugin_version_%';

