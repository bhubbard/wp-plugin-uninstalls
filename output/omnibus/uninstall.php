<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_prices_include_tax');
delete_site_option('woocommerce_prices_include_tax');
delete_option('edd_settings');
delete_site_option('edd_settings');
delete_option('_iwo_price_lowest_days');
delete_site_option('_iwo_price_lowest_days');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'learn_press_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_calc_taxes');
delete_site_option('woocommerce_calc_taxes');
delete_option('tutor_option');
delete_site_option('tutor_option');
delete_option('woocommerce_enable_reviews');
delete_site_option('woocommerce_enable_reviews');

