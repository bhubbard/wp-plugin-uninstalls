-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elegant_global_settings', 'elegant-calendar-license-activated', 'elegant-calendar-license-key', 'elegant_calendar_activation_hook', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', '_elegant_calendar_activation_redirect', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

