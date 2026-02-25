-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shippingeasy_rate_settings_errors', 'base_country', 'base_city', 'base_zipcode', 'shippingeasy_rate_settings', 'shippingeasy_main_settings', 'shippingeasy_generated_apikey', 'shippingeasy_available_services', 'currency_type');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpsc_product_metadata');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpsc_product_metadata');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpsc_product_metadata');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpsc_product_metadata');

