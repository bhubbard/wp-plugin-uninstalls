-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jltels_activation_time', 'eleshop_addons_settings', 'jltels_extensions_save_settings', 'eleshop_third_party_plugins_save_settings', 'jltels_update_redirect', 'eleshop_settings_firstname', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'jltels_update_redirect', 'fs_snooze_period', 'update_plugins', 'update_themes', '_fs_api_connection_retry_counter');

