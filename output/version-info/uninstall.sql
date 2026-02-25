-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('version_info_show_admin_bar', 'version_info_show_dashboard_widget', 'version_info_allowed_roles', 'version_info_show_footer', 'version_info_show_env_badge', 'version_info_env_admin_bar_highlight', 'version_info_wl_plugin_name', 'version_info_wl_author_name', 'version_info_wl_hide_branding', 'version_info_alert_enabled', 'version_info_alert_recipients', 'version_info_alert_types', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

