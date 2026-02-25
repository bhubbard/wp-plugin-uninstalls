-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit', 'woocommerce_dimension_unit', 'woocommerce_currency', 'woocommerce_default_country', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_postcode', 'woocommerce_store_city');
DELETE FROM wp_options WHERE option_name LIKE '%_plugins';

