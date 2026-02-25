-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fe_widgets_mode', 'easyerlo_debug_mode_enabled', 'easyerlo_admin_widget_enabled', 'easyerlo_fatal_error_safer_enabled', 'active_sitewide_plugins', 'easyerlo_deactivated_plugins', 'easyerlo_deactivation_log', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('locale');
DELETE FROM wp_usermeta WHERE meta_key IN ('locale');
DELETE FROM wp_termmeta WHERE meta_key IN ('locale');
DELETE FROM wp_commentmeta WHERE meta_key IN ('locale');

