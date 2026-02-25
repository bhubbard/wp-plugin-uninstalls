-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vsz_cf7_db_version', 'vsz_cf7_capability', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'vsz_cf7_settings_field_%';
DELETE FROM wp_options WHERE option_name LIKE 'vsz_cf7_settings_show_record_%';
DELETE FROM wp_options WHERE option_name LIKE 'import_sheet_form_key_%';

