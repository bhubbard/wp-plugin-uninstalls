-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stormpath_client_apikey_properties', 'stormpath_client_apikey_id', 'stormpath_client_apikey_secret', 'stormpath_application', 'stormpath_client_apikey_file');

