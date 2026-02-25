<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_export_id' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woopcd_partialcod_methods');
delete_site_option('woopcd_partialcod_methods');
delete_option('woocommerce_gateway_order');
delete_site_option('woocommerce_gateway_order');
delete_option('woopcd_partialcod');
delete_site_option('woopcd_partialcod');

