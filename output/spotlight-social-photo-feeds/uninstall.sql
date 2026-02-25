-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sli_plugin_conflicts', 'sli_guzzle_conflicts', 'sidebars_widgets', 'widget_sli-feed', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'sli_deactivated_plugin', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

