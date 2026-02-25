-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('total_express_username', 'total_express_password', 'total_express_enabled_services', 'total_express_handling_fee', 'total_express_handling_fee_type', 'total_express_handling_fee_min', 'total_express_handling_fee_max', 'total_express_additional_days', 'total_express_icms_enabled', 'total_express_icms_states', 'total_express_fixed_shipping_enabled', 'total_express_fixed_shipping_value', 'total_express_fixed_shipping_min_value', 'total_express_fixed_shipping_states', 'total_express_free_shipping_enabled', 'total_express_free_shipping_min_value', 'total_express_free_shipping_states', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'total_express_additional_fee_percent', 'total_express_additional_fee_value', 'total_express_plugin_version', 'total_express_additional_time');

