-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('weather_atlas_version', 'weather_atlas_conversion_done', 'widget_weather_atlas', 'weather_atlas_settings');
DELETE FROM wp_options WHERE option_name LIKE 'weather_atlas_widget_%';

