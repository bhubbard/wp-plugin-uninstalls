-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_inxpress_shipping_settings', 'woocommerce_default_country', 'woocommerce_store_address', 'woocommerce_store_address2', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'woo_inxpress_store_id');

