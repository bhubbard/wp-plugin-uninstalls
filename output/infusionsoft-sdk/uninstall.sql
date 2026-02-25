-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('infusionsoft_sdk_app_name', 'infusionsoft_sdk_api_key');

