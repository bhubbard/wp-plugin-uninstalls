-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('giraforms_settings', 'giraforms_version', 'giraforms_db_version', 'giraforms_webhooks', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'giraforms_stats', 'giraforms_update_check', 'giraforms_brevo_lists', 'giraforms_brevo_detected_ip', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'giraforms_success_%';
DELETE FROM wp_options WHERE option_name LIKE 'giraforms_error_%';

