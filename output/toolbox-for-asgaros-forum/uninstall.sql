-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tfaf_custom_menu_settings', 'tfaf_custom_menu', 'tfaf_image_upload', 'tfaf_plugin_settings', 'tfaf_custom_url');

