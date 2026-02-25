-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_shipping_debug_mode', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'woocommerce_store_postcode');

