-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kindpdfg_galleries', 'kindpdfg_current_gallery_id', 'kindpdfg_version', 'kindpdfg_seed_rule_checked', 'kindpdfg_license_data', 'kindpdfg_license_key', 'kindpdfg_data', 'kindpdfg_gallery_settings', 'kindpdfg_settings', 'kindpdfg_galleries_backup', 'kindpdfg_analytics', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'kindpdfg_license_changed', 'update_plugins', 'kindpdfg_activation_redirect', 'fs_snooze_period', '_fs_api_connection_retry_counter', 'update_themes');

