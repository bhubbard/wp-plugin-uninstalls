-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('happyfenceng_already_initialized', 'happyfenceng_options', 'happyfenceng_purge_on_uninstall', 'happyfenceng_log_type', 'happyfenceng_siem_endpoint', 'happyfenceng_encryption_fingerprint', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'happyfenceng_last_error', 'happyfenceng_cf_guard_detector', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

