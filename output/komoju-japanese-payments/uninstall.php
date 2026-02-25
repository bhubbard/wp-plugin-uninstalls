<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_ship_to_destination');
delete_site_option('woocommerce_ship_to_destination');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'komoju_woocommerce_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_komoju_settings');
delete_site_option('woocommerce_komoju_settings');
delete_option('komoju_woocommerce_payment_types');
delete_site_option('komoju_woocommerce_payment_types');
delete_option('komoju_woocommerce_just_connected_merchant_name');
delete_site_option('komoju_woocommerce_just_connected_merchant_name');
delete_option('komoju_woocommerce_nonce');
delete_site_option('komoju_woocommerce_nonce');
delete_option('komoju_woocommerce_secret_key');
delete_site_option('komoju_woocommerce_secret_key');
delete_option('woocommerce_komoju_linepay_settings');
delete_site_option('woocommerce_komoju_linepay_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('komoju_woocommerce_payment_methods');
delete_site_option('komoju_woocommerce_payment_methods');
delete_option('woocommerce_test_komoju_settings');
delete_site_option('woocommerce_test_komoju_settings');
delete_option('komoju_woocommerce_publishable_key');
delete_site_option('komoju_woocommerce_publishable_key');
delete_option('komoju_woocommerce_webhook_secret');
delete_site_option('komoju_woocommerce_webhook_secret');
delete_option('komoju_woocommerce_ipn_async');
delete_site_option('komoju_woocommerce_ipn_async');
delete_option('komoju_woocommerce_fields_url');
delete_site_option('komoju_woocommerce_fields_url');
delete_option('komoju_woocommerce_api_endpoint');
delete_site_option('komoju_woocommerce_api_endpoint');
delete_option('komoju_woocommerce_waf_staging_token');
delete_site_option('komoju_woocommerce_waf_staging_token');
delete_option('komoju_woocommerce_invoice_prefix');
delete_site_option('komoju_woocommerce_invoice_prefix');
delete_option('komoju_woocommerce_debug_log');
delete_site_option('komoju_woocommerce_debug_log');

