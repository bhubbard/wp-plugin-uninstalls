<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pircel_sizes_options');
delete_site_option('pircel_sizes_options');
delete_option('pircel_mapping_options');
delete_site_option('pircel_mapping_options');
delete_option('pircel_options');
delete_site_option('pircel_options');
delete_option('woocommerce_store_id');
delete_site_option('woocommerce_store_id');
delete_option('pircel_tools_options');
delete_site_option('pircel_tools_options');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
delete_transient('wc_shipping_method_count');
delete_site_transient('wc_shipping_method_count');
delete_transient('wc_shipping_method_count_legacy');
delete_site_transient('wc_shipping_method_count_legacy');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_pircel_shipment_%', '_site_transient_pircel_shipment_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_pircel_shipment_for_%', '_site_transient_pircel_shipment_for_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

