-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('veryk_ship_settings', '_veryk_ship_supplier_list', 'woocommerce_default_country', 'woocommerce_store_address', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_store_address_2', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'method', 'tone-style');

