-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('weather_widget_wp_options');
DELETE FROM wp_options WHERE option_name LIKE 'weather_widget_wp_data_%';

