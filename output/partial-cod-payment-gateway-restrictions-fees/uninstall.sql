-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_dimension_unit', 'woocommerce_weight_unit', 'woopcd_partialcod_methods', 'woocommerce_gateway_order', 'woopcd_partialcod');
DELETE FROM wp_options WHERE option_name LIKE '%_export_id';

