-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpxapi_settings', 'json_api_base', 'wpxapi_network_settings');

