<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_tiki_shipping_license_code');
delete_site_option('woocommerce_tiki_shipping_license_code');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings_backup' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_shipping_method_selection_priority');
delete_site_option('woocommerce_shipping_method_selection_priority');
delete_option('woocommerce_tiki_shipping_settings');
delete_site_option('woocommerce_tiki_shipping_settings');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');

