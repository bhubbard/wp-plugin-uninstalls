-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'wc_disable_zoom', 'wc_disable_lightbox', 'wc_disable_both', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

