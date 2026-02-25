-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('addtohos_float_button_enabled', 'addtohos_web_app_float_text', 'addtohos_activate', 'addtohos_menifest_version', 'addtohos_web_app_title', 'addtohos_web_start_page', 'addtohos_web_app_color', 'addtohos_web_app_background_color', 'addtohos_manifest_screenshots', 'addtohos_manifest_shortcuts', 'addtohos_manifest_icons', 'addtohos_web_app_button_color', 'winter_mvc_active_plugins');

