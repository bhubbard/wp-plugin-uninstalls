-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pretty_global_settings', 'pretty_predefine_terms', 'pretty_predefine_privacy', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'pretty_opt_in_addons', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

