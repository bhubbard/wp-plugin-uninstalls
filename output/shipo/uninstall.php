<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shipo_api_key');
delete_site_option('shipo_api_key');
delete_option('shipo_access_token');
delete_site_option('shipo_access_token');
delete_option('shipo_token_expiry');
delete_site_option('shipo_token_expiry');
delete_option('shipo_sender_address');
delete_site_option('shipo_sender_address');
delete_option('shipo_automation_awb');
delete_site_option('shipo_automation_awb');
delete_option('shipo_custom_delivery_name');
delete_site_option('shipo_custom_delivery_name');
delete_option('shipo_show_couriers');
delete_site_option('shipo_show_couriers');
delete_option('shipo_free_shipping');
delete_site_option('shipo_free_shipping');
delete_option('shipo_test_mode');
delete_site_option('shipo_test_mode');
delete_option('shipo_sender_method');
delete_site_option('shipo_sender_method');
delete_option('shipo_couriers_show');
delete_site_option('shipo_couriers_show');
delete_option('shipo_couriers_show_services');
delete_site_option('shipo_couriers_show_services');
delete_option('shipo_couriers_custom_price');
delete_site_option('shipo_couriers_custom_price');
delete_option('shipo_couriers_custom_price_type');
delete_site_option('shipo_couriers_custom_price_type');
delete_option('shipo_couriers_custom_name');
delete_site_option('shipo_couriers_custom_name');
delete_option('shipo_sender_locker');
delete_site_option('shipo_sender_locker');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'shipo_pricing_percentage_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'shipo_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');

// Delete Transients
delete_transient('shipo_admin_notices');
delete_site_transient('shipo_admin_notices');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_shipo_shipping_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_shipo_shipping_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_shipo_shipping_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_shipo_shipping_address' ) );

