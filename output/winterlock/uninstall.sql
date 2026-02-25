-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wal_checkbox_enable_winterlock_dash_styles', 'wal_allowed_admins', 'wal_allowed_roles', 'sw_wal_log_events_options', 'wal_log_hide_columns', 'winter-activity-log-menuitems', 'winter-activity-log-submenuitems', 'wal_checkbox_disable_hints', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'wal_db_version', 'wal_checkbox_disable_multilogin', 'wal_log_only_roles', 'wal_checkbox_failed_login_block', 'wal_checkbox_log_level_1_disable', 'wal_checkbox_log_level_2_disable', 'wal_checkbox_log_level_3_disable', 'wal_checkbox_log_plugin_disable', 'wal_checkbox_log_cron_disable', 'wal_log_days', 'wal_checkbox_hide_ip', 'winterlock_reviews_installed_on', 'winterlock_total_open_count', 'wal_checkbox_disable_dashwidgets', 'dashboard_widget_options', 'wal_clickatell_one_api_key', 'wal_clickatell_http_api_key', 'wal_smsapicom_http_api_key', 'wal_smsto_api_key', 'winter_mvc_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%log_days';
DELETE FROM wp_options WHERE option_name LIKE '%checkbox_failed_login_block';
DELETE FROM wp_options WHERE option_name LIKE '%checkbox_log_plugin_disable';
DELETE FROM wp_options WHERE option_name LIKE '%checkbox_log_cron_disable';
DELETE FROM wp_options WHERE option_name LIKE '%checkbox_log_level_1_disable';
DELETE FROM wp_options WHERE option_name LIKE '%checkbox_log_level_2_disable';
DELETE FROM wp_options WHERE option_name LIKE '%checkbox_log_level_3_disable';
DELETE FROM wp_options WHERE option_name LIKE '%checkbox_disable_multilogin';
DELETE FROM wp_options WHERE option_name LIKE '%checkbox_hide_ip';
DELETE FROM wp_options WHERE option_name LIKE '%checkbox_enable_winterlock_dash_styles';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('session_tokens', '_winterlock_reviews_dismissed_triggers', '_winterlock_reviews_last_dismissed', '_winterlock_reviews_already_did');
DELETE FROM wp_usermeta WHERE meta_key IN ('session_tokens', '_winterlock_reviews_dismissed_triggers', '_winterlock_reviews_last_dismissed', '_winterlock_reviews_already_did');
DELETE FROM wp_termmeta WHERE meta_key IN ('session_tokens', '_winterlock_reviews_dismissed_triggers', '_winterlock_reviews_last_dismissed', '_winterlock_reviews_already_did');
DELETE FROM wp_commentmeta WHERE meta_key IN ('session_tokens', '_winterlock_reviews_dismissed_triggers', '_winterlock_reviews_last_dismissed', '_winterlock_reviews_already_did');

