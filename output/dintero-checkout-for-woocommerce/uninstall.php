<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_dintero_checkout_settings');
delete_site_option('woocommerce_dintero_checkout_settings');
delete_option('woocommerce_ship_to_destination');
delete_site_option('woocommerce_ship_to_destination');
delete_option('krokedil_debuglog_dintero_checkout');
delete_site_option('krokedil_debuglog_dintero_checkout');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_dintero_shipping_data_%', '_site_transient_dintero_shipping_data_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('dintero_checkout_access_token');
delete_site_transient('dintero_checkout_access_token');
delete_transient('dintero_checkout_keyword_backlinks');
delete_site_transient('dintero_checkout_keyword_backlinks');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ywgc_applied_gift_cards' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ywgc_applied_gift_cards' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ywgc_applied_gift_cards' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ywgc_applied_gift_cards' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismissed_dintero_wc_zero_decimal_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismissed_dintero_wc_zero_decimal_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismissed_dintero_wc_zero_decimal_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismissed_dintero_wc_zero_decimal_notice' ) );

