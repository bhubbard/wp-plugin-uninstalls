<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('frakt123_custom_shipping_order_sync_version');
delete_site_option('frakt123_custom_shipping_order_sync_version');
delete_option('frakt123_custom_shipping_order_sync__auto_send_name');
delete_site_option('frakt123_custom_shipping_order_sync__auto_send_name');
delete_option('frakt123_custom_shipping_order_sync__order_status');
delete_site_option('frakt123_custom_shipping_order_sync__order_status');
delete_option('frakt123_custom_shipping_order_sync__order_shipping');
delete_site_option('frakt123_custom_shipping_order_sync__order_shipping');
delete_option('frakt123_custom_shipping_order_sync__api_name');
delete_site_option('frakt123_custom_shipping_order_sync__api_name');
delete_option('frakt123_custom_shipping_order_sync__secret_name');
delete_site_option('frakt123_custom_shipping_order_sync__secret_name');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_api_name' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_secret_name' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'frakt_track_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'frakt_track_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'frakt_track_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'frakt_track_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'frakt_track_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'frakt_track_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'frakt_track_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'frakt_track_link' ) );

