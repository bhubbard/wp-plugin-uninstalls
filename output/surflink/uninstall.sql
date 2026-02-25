-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('surfl_module_settings', 'surfl_backup_settings', 'surfl_lh_enabled', 'active_sitewide_plugins', 'surfl_lh_custom_login_slug', 'surfl_lh_version', 'surfl_lh_login_page_id', 'surfl_lh_max_attempts', 'surfl_lh_ban_duration', 'rewrite_rules', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'fs_storage_logger', 'fs_active_plugins', 'surfl_lh_cleanup_transient', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

