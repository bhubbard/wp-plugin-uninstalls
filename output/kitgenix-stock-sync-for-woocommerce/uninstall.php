<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kitgenix_stock_sync_for_woocommerce_settings');
delete_site_option('kitgenix_stock_sync_for_woocommerce_settings');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_kitgenix_stock_sync_for_woocommerce_kss_old_sku_%', '_site_transient_kitgenix_stock_sync_for_woocommerce_kss_old_sku_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('kitgenix_stock_sync_for_woocommerce_do_activation_redirect');
delete_site_transient('kitgenix_stock_sync_for_woocommerce_do_activation_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sku' ) );

