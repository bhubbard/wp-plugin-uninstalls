<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wh_bulk_price_update_block_size');
delete_site_option('wh_bulk_price_update_block_size');
delete_option('wh_bulk_price_update_preview_block_size');
delete_site_option('wh_bulk_price_update_preview_block_size');
delete_option('wh_bulk_price_update_time_limit');
delete_site_option('wh_bulk_price_update_time_limit');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_en', '_site_transient_%_en' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_de', '_site_transient_%_de' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

