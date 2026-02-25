-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('emtr_db_version', 'emtr_version', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'emtr_success_msg', 'emtr_error_msg', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

