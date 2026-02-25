<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('total_express_username');
delete_site_option('total_express_username');
delete_option('total_express_password');
delete_site_option('total_express_password');
delete_option('total_express_enabled_services');
delete_site_option('total_express_enabled_services');
delete_option('total_express_handling_fee');
delete_site_option('total_express_handling_fee');
delete_option('total_express_handling_fee_type');
delete_site_option('total_express_handling_fee_type');
delete_option('total_express_handling_fee_min');
delete_site_option('total_express_handling_fee_min');
delete_option('total_express_handling_fee_max');
delete_site_option('total_express_handling_fee_max');
delete_option('total_express_additional_days');
delete_site_option('total_express_additional_days');
delete_option('total_express_icms_enabled');
delete_site_option('total_express_icms_enabled');
delete_option('total_express_icms_states');
delete_site_option('total_express_icms_states');
delete_option('total_express_fixed_shipping_enabled');
delete_site_option('total_express_fixed_shipping_enabled');
delete_option('total_express_fixed_shipping_value');
delete_site_option('total_express_fixed_shipping_value');
delete_option('total_express_fixed_shipping_min_value');
delete_site_option('total_express_fixed_shipping_min_value');
delete_option('total_express_fixed_shipping_states');
delete_site_option('total_express_fixed_shipping_states');
delete_option('total_express_free_shipping_enabled');
delete_site_option('total_express_free_shipping_enabled');
delete_option('total_express_free_shipping_min_value');
delete_site_option('total_express_free_shipping_min_value');
delete_option('total_express_free_shipping_states');
delete_site_option('total_express_free_shipping_states');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('total_express_additional_fee_percent');
delete_site_option('total_express_additional_fee_percent');
delete_option('total_express_additional_fee_value');
delete_site_option('total_express_additional_fee_value');
delete_option('total_express_plugin_version');
delete_site_option('total_express_plugin_version');
delete_option('total_express_additional_time');
delete_site_option('total_express_additional_time');

