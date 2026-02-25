-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uncopy_settings_html_disabled_js_msg', 'uncopy_settings_anti_adblocker_urls', 'uncopy_settings_anti_adblocker_anti_adblocker_msg', 'uncopy_settings_general_backend', 'uncopy_settings_backend_backend_type', 'uncopy_settings_backend_backend_urls');
DELETE FROM wp_options WHERE option_name LIKE '%right_click';
DELETE FROM wp_options WHERE option_name LIKE '%disable_keys';
DELETE FROM wp_options WHERE option_name LIKE '%text_selection';
DELETE FROM wp_options WHERE option_name LIKE '%image_text_dragging';
DELETE FROM wp_options WHERE option_name LIKE 'uncopy_settings_anti_adblocker_%';
DELETE FROM wp_options WHERE option_name LIKE 'uncopy_settings_backend_%';

