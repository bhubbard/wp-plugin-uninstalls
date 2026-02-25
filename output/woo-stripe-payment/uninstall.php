<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_stripe_authenticated_routes');
delete_site_option('wc_stripe_authenticated_routes');
delete_option('wc_stripe_connect_notice');
delete_site_option('wc_stripe_connect_notice');
delete_option('woocommerce_stripe_email_receipt');
delete_site_option('woocommerce_stripe_email_receipt');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('woocommerce_new_order_settings');
delete_site_option('woocommerce_new_order_settings');
delete_option('woocommerce_stripe_plaid_settings');
delete_site_option('woocommerce_stripe_plaid_settings');
delete_option('woocommerce_stripe_ach_settings');
delete_site_option('woocommerce_stripe_ach_settings');
delete_option('woocommerce_de_secondcheckout');
delete_site_option('woocommerce_de_secondcheckout');
delete_option('woocommerce_gateway_order');
delete_site_option('woocommerce_gateway_order');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_stripe_lock_order_%', '_site_transient_stripe_lock_order_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

