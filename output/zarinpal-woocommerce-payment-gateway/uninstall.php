<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_zpal_referrer_id');
delete_site_option('wc_zpal_referrer_id');
delete_option('woocommerce_WC_ZPal_settings');
delete_site_option('woocommerce_WC_ZPal_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'zarinpal_fee_detection_done_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

