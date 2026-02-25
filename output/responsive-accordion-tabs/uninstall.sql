-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'ratabs_settings_defaults', 'ratabs_settings_export', 'ratabs_settings_styles', 'ratabs_settings_import', 'ratabs_version', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('accordion_tab_data', 'accordion_tab_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('accordion_tab_data', 'accordion_tab_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('accordion_tab_data', 'accordion_tab_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('accordion_tab_data', 'accordion_tab_settings');

