-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aqi_api_key', 'aqi_api_zip', 'aqi_widget_show_forecast', 'aqi_widget_show_legend', 'aqi_widget_theme');

