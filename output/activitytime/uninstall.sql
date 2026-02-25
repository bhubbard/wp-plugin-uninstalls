-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('actt_checkbox_enable_winterlock_dash_styles', 'activitytime-menuitems', 'activitytime-submenuitems', 'actt_allowed_admins', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'actt_db_version', 'actt_monitor_roles', 'actt_log_days', 'winter_mvc_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%log_days';
DELETE FROM wp_options WHERE option_name LIKE '%timeout_mins';

