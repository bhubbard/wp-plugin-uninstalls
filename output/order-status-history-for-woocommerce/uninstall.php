<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('oshwoo_wc_colors_update');
delete_site_option('oshwoo_wc_colors_update');
delete_option('oshwoo_multicurrency_symbol');
delete_site_option('oshwoo_multicurrency_symbol');
delete_option('oshwoo_hx_guest');
delete_site_option('oshwoo_hx_guest');
delete_option('oshwoo_hx_aggregate');
delete_site_option('oshwoo_hx_aggregate');
delete_option('oshwoo_hx_pending');
delete_site_option('oshwoo_hx_pending');
delete_option('oshwoo_hx_processing');
delete_site_option('oshwoo_hx_processing');
delete_option('oshwoo_hx_onhold');
delete_site_option('oshwoo_hx_onhold');
delete_option('oshwoo_hx_completed');
delete_site_option('oshwoo_hx_completed');
delete_option('oshwoo_hx_cancelled');
delete_site_option('oshwoo_hx_cancelled');
delete_option('oshwoo_hx_refunded');
delete_site_option('oshwoo_hx_refunded');
delete_option('oshwoo_hx_failed');
delete_site_option('oshwoo_hx_failed');
delete_option('oshwoo_hx_other');
delete_site_option('oshwoo_hx_other');
delete_option('oshwoo_hx_text');
delete_site_option('oshwoo_hx_text');
delete_option('oshwoo_hx_history');
delete_site_option('oshwoo_hx_history');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'oshwoo_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_osh_orders_query__wp-%', '_site_transient_osh_orders_query__wp-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'oshwoo_aggregated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'oshwoo_aggregated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'oshwoo_aggregated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'oshwoo_aggregated' ) );

