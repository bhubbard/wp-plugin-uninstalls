-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('forexrateapi_api_key', 'forexrateapi_data_success', 'forexrateapi_data_none', 'forexrateapi_data_error');

