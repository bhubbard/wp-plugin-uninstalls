<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gopay_review_dismiss');
delete_site_option('gopay_review_dismiss');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('pickup_location_pickup_locations');
delete_site_option('pickup_location_pickup_locations');
delete_option('woocommerce_wc_gopay_gateway_settings');
delete_site_option('woocommerce_wc_gopay_gateway_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_multiple_purchase' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('update_payment_methods_and_banks');

