-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bic_admin_bar_status', 'bic_disable_google_fonts', 'bic_cron_schedule', 'bic_cron_on', 'bic_manual_api_run', 'bic_manual_api_run_last', 'bic_current_plan', 'bic_last_action', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

