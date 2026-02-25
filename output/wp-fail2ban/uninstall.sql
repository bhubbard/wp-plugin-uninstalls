-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp-fail2ban-messages', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'settings_errors', 'wp_fail2ban_extra_about', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

