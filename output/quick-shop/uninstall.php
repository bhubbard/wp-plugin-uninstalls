<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('quickshop_currency');
delete_site_option('quickshop_currency');
delete_option('quickshop_symbol');
delete_site_option('quickshop_symbol');
delete_option('quickshop_decimal');
delete_site_option('quickshop_decimal');
delete_option('quickshop_thousands');
delete_site_option('quickshop_thousands');
delete_option('quickshop_checkout_page');
delete_site_option('quickshop_checkout_page');
delete_option('quickshop_display');
delete_site_option('quickshop_display');
delete_option('quickshop_total');
delete_site_option('quickshop_total');
delete_option('quickshop_logged');
delete_site_option('quickshop_logged');
delete_option('quickshop_freeshipv');
delete_site_option('quickshop_freeshipv');
delete_option('quickshop_title');
delete_site_option('quickshop_title');
delete_option('quickshop_tc');
delete_site_option('quickshop_tc');
delete_option('quickshop_payment_return_url');
delete_site_option('quickshop_payment_return_url');
delete_option('quickshop_email_enabled');
delete_site_option('quickshop_email_enabled');
delete_option('quickshop_paypal_enabled');
delete_site_option('quickshop_paypal_enabled');
delete_option('quickshop_paypal_email');
delete_site_option('quickshop_paypal_email');
delete_option('quickshop_paypal_notify_url');
delete_site_option('quickshop_paypal_notify_url');
delete_option('quickshop_location');
delete_site_option('quickshop_location');
delete_option('quickshop_products');
delete_site_option('quickshop_products');
delete_option('quickshop_shipping_start');
delete_site_option('quickshop_shipping_start');
delete_option('quickshop_shipping');
delete_site_option('quickshop_shipping');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_qs_cart_%', '_site_transient_qs_cart_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

