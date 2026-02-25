-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('freshideas_wpui_settings', 'freshideas_wpui_settings_ver', 'update_core', 'update_plugins', 'update_themes');

