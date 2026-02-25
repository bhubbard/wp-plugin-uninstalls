-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('weather_press_lang', 'weather_press_unit', 'weather_press_mainLocation', 'weather_press_secondary_location', 'weather_press_where');
DELETE FROM wp_options WHERE option_name LIKE '%_current_transient';
DELETE FROM wp_options WHERE option_name LIKE '%_hourly_transient';
DELETE FROM wp_options WHERE option_name LIKE '%_daily_transient';

