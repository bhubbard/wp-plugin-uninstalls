-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('custweather_api_key', 'custweather_city', 'custweather_country_code', 'custweather_default_unit', 'clw_api_key');

