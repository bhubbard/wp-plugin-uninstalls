-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trp_settings', 'natuteto_errors', 'natuteto_do_activation_redirect', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'natuteto_cleanup_running', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

