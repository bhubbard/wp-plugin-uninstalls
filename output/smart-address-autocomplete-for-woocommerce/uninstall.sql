-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smart_address_enable_extension', 'smart_address_api_key', 'smart_address_country_list', 'smart_address_activation_redirect');

