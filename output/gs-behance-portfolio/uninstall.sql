-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'GS_BEHANCE_LICENSE_STATUS', 'gsbeh_plugin_version', 'be_meta', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'gsplugins-pro-plugins', 'gsplugins_free_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

