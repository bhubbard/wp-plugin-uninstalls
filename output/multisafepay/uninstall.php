<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('multisafepay_trigger_transaction_to_shipped');
delete_site_option('multisafepay_trigger_transaction_to_shipped');
delete_option('multisafepay_trigger_transaction_to_invoiced');
delete_site_option('multisafepay_trigger_transaction_to_invoiced');
delete_option('woocommerce_checkout_page_id');
delete_site_option('woocommerce_checkout_page_id');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('multisafepay_debugmode');
delete_site_option('multisafepay_debugmode');
delete_option('multisafepay_group_credit_cards');
delete_site_option('multisafepay_group_credit_cards');
delete_option('multisafepay_checkout_block_payment_icons');
delete_site_option('multisafepay_checkout_block_payment_icons');
delete_option('multisafepay_final_order_status');
delete_site_option('multisafepay_final_order_status');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_status' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('multisafepay_testmode');
delete_site_option('multisafepay_testmode');
delete_option('multisafepay_second_chance');
delete_site_option('multisafepay_second_chance');
delete_option('multisafepay_disable_shopping_cart');
delete_site_option('multisafepay_disable_shopping_cart');
delete_option('multisafepay_redirect_after_cancel');
delete_site_option('multisafepay_redirect_after_cancel');
delete_option('multisafepay_order_request_description');
delete_site_option('multisafepay_order_request_description');
delete_option('multisafepay_time_active');
delete_site_option('multisafepay_time_active');
delete_option('multisafepay_time_unit');
delete_site_option('multisafepay_time_unit');
delete_option('multisafepay_payment_component_template_id');
delete_site_option('multisafepay_payment_component_template_id');
delete_option('woocommerce_multisafepay_creditcard_settings');
delete_site_option('woocommerce_multisafepay_creditcard_settings');
delete_option('woocommerce_smart_coupon_apply_before_tax');
delete_site_option('woocommerce_smart_coupon_apply_before_tax');
delete_option('multisafepay_test_api_key');
delete_site_option('multisafepay_test_api_key');
delete_option('multisafepay_api_key');
delete_site_option('multisafepay_api_key');
delete_option('woocommerce_tax_round_at_subtotal');
delete_site_option('woocommerce_tax_round_at_subtotal');
delete_option('woocommerce_tax_based_on');
delete_site_option('woocommerce_tax_based_on');
delete_option('woocommerce_tax_total_display');
delete_site_option('woocommerce_tax_total_display');
delete_option('woocommerce_calc_discounts_sequentially');
delete_site_option('woocommerce_calc_discounts_sequentially');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'multisafepay_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_custom_orders_table_enabled');
delete_site_option('woocommerce_custom_orders_table_enabled');

// Delete Transients
delete_transient('multisafepay_api_token');
delete_site_transient('multisafepay_api_token');
delete_transient('multisafepay_payment_methods');
delete_site_transient('multisafepay_payment_methods');
delete_transient('is_multisafepay_payment_component_qr_enabled');
delete_site_transient('is_multisafepay_payment_component_qr_enabled');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_multisafepay_token_%', '_site_transient_multisafepay_token_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_multisafepay_qr_order_%', '_site_transient_multisafepay_qr_order_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

