<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mollie-payments-for-woocommerce_live_api_key');
delete_site_option('mollie-payments-for-woocommerce_live_api_key');
delete_option('mollie-payments-for-woocommerce_test_api_key');
delete_site_option('mollie-payments-for-woocommerce_test_api_key');
delete_option('woocommerce_gzdp_checkout_enable');
delete_site_option('woocommerce_gzdp_checkout_enable');
delete_option('mollie_wc_applepay_validated');
delete_site_option('mollie_wc_applepay_validated');
delete_option('mollie-payments-for-woocommerce_gatewayFeeLabel');
delete_site_option('mollie-payments-for-woocommerce_gatewayFeeLabel');
delete_option('mollie_wc_gateway_applepay_settings');
delete_site_option('mollie_wc_gateway_applepay_settings');
delete_option('mollie_wc_gateway_paypal_settings');
delete_site_option('mollie_wc_gateway_paypal_settings');
delete_option('woocommerce_prices_include_tax');
delete_site_option('woocommerce_prices_include_tax');
delete_option('woocommerce_tax_round_at_subtotal');
delete_site_option('woocommerce_tax_round_at_subtotal');
delete_option('mollie_wc_is_phone_required_flag');
delete_site_option('mollie_wc_is_phone_required_flag');
delete_option('mollie-payments-for-woocommerce_order_status_cancelled_payments');
delete_site_option('mollie-payments-for-woocommerce_order_status_cancelled_payments');
delete_option('mollie-payments-for-woocommerce_place_payment_onhold');
delete_site_option('mollie-payments-for-woocommerce_place_payment_onhold');
delete_option('mollie-payments-for-woocommerce_capture_or_void');
delete_site_option('mollie-payments-for-woocommerce_capture_or_void');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_accept_manual_renewals' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%disableShipOrderAtMollie' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%disableCancelOrderAtMollie' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('mollie_wc_gateway_creditcard_settings');
delete_site_option('mollie_wc_gateway_creditcard_settings');
delete_option('mollie_wc_gateway_voucher_settings');
delete_site_option('mollie_wc_gateway_voucher_settings');
delete_option('mollie_wc_gateway_mealvoucher_settings');
delete_site_option('mollie_wc_gateway_mealvoucher_settings');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('woocommerce_subscriptions_active_version');
delete_site_option('woocommerce_subscriptions_active_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('mollie-payments-for-woocommerce_debug');
delete_site_option('mollie-payments-for-woocommerce_debug');
delete_option('mollie-payments-for-woocommerce_test_mode_enabled');
delete_site_option('mollie-payments-for-woocommerce_test_mode_enabled');
delete_option('mollie_wc_gateway_directdebit_settings');
delete_site_option('mollie_wc_gateway_directdebit_settings');
delete_option('mollie-payments-for-woocommerce_removeOptionsAndTransients');
delete_site_option('mollie-payments-for-woocommerce_removeOptionsAndTransients');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_needs_processing', '_site_transient_%_needs_processing' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('svg_creditcards_string');
delete_site_transient('svg_creditcards_string');

// Clear Cron Jobs
wp_clear_scheduled_hook('pending_payment_confirmation_check');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mollie_voucher_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mollie_voucher_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mollie_voucher_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mollie_voucher_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mollie_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mollie_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mollie_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mollie_customer_id' ) );

