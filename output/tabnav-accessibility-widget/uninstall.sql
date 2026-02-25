-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tabnav_widget_enabled', 'tabnav_widget_language', 'tabnav_widget_color', 'tabnav_button_color', 'tabnav_button_size', 'tabnav_widget_size', 'tabnav_widget_location', 'tabnav_widget_color_enabled', 'tabnav_button_color_enabled');

