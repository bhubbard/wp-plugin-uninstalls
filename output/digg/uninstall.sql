-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('digg_setting_button_style', 'digg_setting_widget_advanced', 'digg_setting_button_enabled', 'digg_setting_widget_html', 'digg_setting_button_location', 'digg_setting_button_type', 'digg_setting_button_position', 'digg_setting_button_alignment', 'digg_setting_button_topic', 'digg_setting_widget_json', 'digg_setting_widget_enabled');
DELETE FROM wp_options WHERE option_name LIKE 'digg_setting_%';

