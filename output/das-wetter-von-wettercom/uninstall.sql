-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wettercom_api_user', 'wettercom_api_key', 'wettercom_api_citycode', 'wettercom_data_forecast', 'wettercom_data_updatetime', 'wettercom_api_secret');

