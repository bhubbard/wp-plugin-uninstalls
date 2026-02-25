<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_favepay_settings');
delete_site_option('woocommerce_favepay_settings');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wc_favepay_order_payment_url_%', '_site_transient_wc_favepay_order_payment_url_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('wc_favepay_check_transaction_status');

