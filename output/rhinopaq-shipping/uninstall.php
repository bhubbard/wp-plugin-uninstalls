<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rhinopaq-enabled');
delete_site_option('rhinopaq-enabled');
delete_option('rhinopaq-shipping-product-id');
delete_site_option('rhinopaq-shipping-product-id');
delete_option('rhinopaq-standard-shipping');
delete_site_option('rhinopaq-standard-shipping');
delete_option('woocommerce_placeholder_image');
delete_site_option('woocommerce_placeholder_image');
delete_option('rhinopaq-plugin-id');
delete_site_option('rhinopaq-plugin-id');
delete_option('rhinopaq-smart-enabled');
delete_site_option('rhinopaq-smart-enabled');
delete_option('rhinopaq-shipping-rhino-b-35x20x5-id');
delete_site_option('rhinopaq-shipping-rhino-b-35x20x5-id');
delete_option('rhinopaq-shipping-rhino-b-25x25x10-id');
delete_site_option('rhinopaq-shipping-rhino-b-25x25x10-id');
delete_option('rhinopaq-1-enabled');
delete_site_option('rhinopaq-1-enabled');
delete_option('rhinopaq-4-enabled');
delete_site_option('rhinopaq-4-enabled');
delete_option('rhinopaq-clearance');
delete_site_option('rhinopaq-clearance');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-id' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_regular_price' ) );

