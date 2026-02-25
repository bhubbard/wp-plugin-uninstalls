-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('snowflurry_snow_color', 'snowflurry_always_show_snow', 'snowflurry_weather_country_codes', 'snowflurry_weather_api_key', 'snowflurry_enqueue_snowstorm_script');

