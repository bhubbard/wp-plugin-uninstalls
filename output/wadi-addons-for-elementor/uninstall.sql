-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementor_allow_tracking', 'wadi_save_settings', 'wadi_elements_btn_value', 'wadi_integration_settings_options', 'fs_debug_mode', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'templates_count', 'temp_count', 'update_plugins', 'update_themes');

