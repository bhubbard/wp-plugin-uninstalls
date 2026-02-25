-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('m1_miniweather_renew_last', 'm1_miniweather_openweathermap');

