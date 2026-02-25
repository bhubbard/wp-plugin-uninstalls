<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_settings_shippit_api_key');
delete_site_option('wc_settings_shippit_api_key');
delete_option('wc_settings_shippit_environment');
delete_site_option('wc_settings_shippit_environment');
delete_option('wc_settings_shippit_debug');
delete_site_option('wc_settings_shippit_debug');
delete_option('wc_settings_shippit_atl_enabled');
delete_site_option('wc_settings_shippit_atl_enabled');
delete_option('wc_settings_shippit_tariff_code_attribute');
delete_site_option('wc_settings_shippit_tariff_code_attribute');
delete_option('wc_settings_shippit_tariff_code_custom_attribute');
delete_site_option('wc_settings_shippit_tariff_code_custom_attribute');
delete_option('wc_settings_shippit_origin_country_code_attribute');
delete_site_option('wc_settings_shippit_origin_country_code_attribute');
delete_option('wc_settings_shippit_origin_country_code_custom_attribute');
delete_site_option('wc_settings_shippit_origin_country_code_custom_attribute');
delete_option('wc_settings_shippit_dangerous_goods_code_attribute');
delete_site_option('wc_settings_shippit_dangerous_goods_code_attribute');
delete_option('wc_settings_shippit_dangerous_goods_code_custom_attribute');
delete_site_option('wc_settings_shippit_dangerous_goods_code_custom_attribute');
delete_option('wc_settings_shippit_dangerous_goods_text_attribute');
delete_site_option('wc_settings_shippit_dangerous_goods_text_attribute');
delete_option('wc_settings_shippit_dangerous_goods_text_custom_attribute');
delete_site_option('wc_settings_shippit_dangerous_goods_text_custom_attribute');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('wc_settings_shippit_standard_shipping_methods');
delete_site_option('wc_settings_shippit_standard_shipping_methods');
delete_option('wc_settings_shippit_express_shipping_methods');
delete_site_option('wc_settings_shippit_express_shipping_methods');
delete_option('wc_settings_shippit_clickandcollect_shipping_methods');
delete_site_option('wc_settings_shippit_clickandcollect_shipping_methods');
delete_option('wc_settings_shippit_plainlabel_shipping_methods');
delete_site_option('wc_settings_shippit_plainlabel_shipping_methods');
delete_option('wc_settings_shippit_enabled');
delete_site_option('wc_settings_shippit_enabled');
delete_option('wc_settings_shippit_auto_sync_orders');
delete_site_option('wc_settings_shippit_auto_sync_orders');
delete_option('wc_settings_shippit_fulfillment_enabled');
delete_site_option('wc_settings_shippit_fulfillment_enabled');
delete_option('wcj_order_numbers_enabled');
delete_site_option('wcj_order_numbers_enabled');
delete_option('wcj_order_number_prefix');
delete_site_option('wcj_order_number_prefix');
delete_option('wcj_order_number_sequential_enabled');
delete_site_option('wcj_order_number_sequential_enabled');
delete_option('wc_settings_shippit_fulfillment_tracking_reference');
delete_site_option('wc_settings_shippit_fulfillment_tracking_reference');
delete_option('wc_shippit_version');
delete_site_option('wc_shippit_version');
delete_option('woocommerce_mamis_shippit_settings');
delete_site_option('woocommerce_mamis_shippit_settings');
delete_option('woocommerce_mamis_shippit_legacy_settings');
delete_site_option('woocommerce_mamis_shippit_legacy_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%standard_shipping_methods' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%express_shipping_methods' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%send_all_orders' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%auto_sync_orders' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('syncOrders');

