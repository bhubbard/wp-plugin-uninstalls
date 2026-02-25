-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('snow-forecast_country', 'snow-forecast_resort', 'snow-forecast_resort_encoded', 'snow-forecast_units', 'snow-forecast_size', 'snow-forecast_link');

