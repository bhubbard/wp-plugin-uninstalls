<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_icard_checkout_woocommerce_integration_settings');
delete_site_option('woocommerce_icard_checkout_woocommerce_integration_settings');
delete_option('icard_checkout_woocommerce_integration_settings');
delete_site_option('icard_checkout_woocommerce_integration_settings');

// Delete Transients
delete_transient('icard_installing');
delete_site_transient('icard_installing');
delete_transient('icard_checkout_woocommerce_cancelled_order');
delete_site_transient('icard_checkout_woocommerce_cancelled_order');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_icard_checkout_woocommerce_payment_declined_%', '_site_transient_icard_checkout_woocommerce_payment_declined_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('icard_cancelled_order');
delete_site_transient('icard_cancelled_order');

