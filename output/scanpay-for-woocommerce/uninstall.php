<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_scanpay_version');
delete_site_option('wc_scanpay_version');
delete_option('woocommerce_scanpay_settings');
delete_site_option('woocommerce_scanpay_settings');
delete_option('woocommerce_scanpay_mobilepay_settings');
delete_site_option('woocommerce_scanpay_mobilepay_settings');
delete_option('woocommerce_scanpay_applepay_settings');
delete_site_option('woocommerce_scanpay_applepay_settings');

// Delete Transients
delete_transient('wc_scanpay_updating');
delete_site_transient('wc_scanpay_updating');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_needs_processing', '_site_transient_%_needs_processing' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

