-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_city';
DELETE FROM wp_options WHERE option_name LIKE '%_zone';
DELETE FROM wp_options WHERE option_name LIKE '%_date';
DELETE FROM wp_options WHERE option_name LIKE '%_time';
DELETE FROM wp_options WHERE option_name LIKE '%_icon';
DELETE FROM wp_options WHERE option_name LIKE '%_condition';
DELETE FROM wp_options WHERE option_name LIKE '%_unit';
DELETE FROM wp_options WHERE option_name LIKE '%_humidity';
DELETE FROM wp_options WHERE option_name LIKE '%_wind';
DELETE FROM wp_options WHERE option_name LIKE '%_forecast_info';
DELETE FROM wp_options WHERE option_name LIKE '%_forecast';
DELETE FROM wp_options WHERE option_name LIKE '%_lah';

