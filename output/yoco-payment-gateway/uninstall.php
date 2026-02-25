<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yoco_wc_payment_gateway_version');
delete_site_option('yoco_wc_payment_gateway_version');
delete_option('woocommerce_class_yoco_wc_payment_gateway_settings');
delete_site_option('woocommerce_class_yoco_wc_payment_gateway_settings');
delete_option('yoco_orders_pending_payment');
delete_site_option('yoco_orders_pending_payment');
delete_option('woocommerce_hold_stock_minutes');
delete_site_option('woocommerce_hold_stock_minutes');

// Delete Transients
delete_transient('yoco_webhook_processing');
delete_site_transient('yoco_webhook_processing');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_yoco_order_processing_%', '_site_transient_yoco_order_processing_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

