-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_shipper_settings', 'woocommerce_dimension_unit', 'woocommerce_weight_unit');

