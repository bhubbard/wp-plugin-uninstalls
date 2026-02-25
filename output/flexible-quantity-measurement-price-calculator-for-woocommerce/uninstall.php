<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpdesk_helper_options');
delete_site_option('wpdesk_helper_options');
delete_option('woocommerce_enable_weight');
delete_site_option('woocommerce_enable_weight');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_price_decimal_sep');
delete_site_option('woocommerce_price_decimal_sep');
delete_option('quick_view_trigger');
delete_site_option('quick_view_trigger');
delete_option('woocommerce_stock_format');
delete_site_option('woocommerce_stock_format');
delete_option('woocommerce_notify_low_stock_amount');
delete_site_option('woocommerce_notify_low_stock_amount');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('woocommerce_area_unit');
delete_site_option('woocommerce_area_unit');
delete_option('woocommerce_volume_unit');
delete_site_option('woocommerce_volume_unit');
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');
delete_option('woocommerce_price_trim_zeros');
delete_site_option('woocommerce_price_trim_zeros');

// Delete Transients
delete_transient('sv_wc_plugin_wc_versions');
delete_site_transient('sv_wc_plugin_wc_versions');

