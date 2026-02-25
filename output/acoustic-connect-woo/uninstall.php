<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('acoustic_connect_activated_time');
delete_site_option('acoustic_connect_activated_time');
delete_option('acoustic_connect_enabled');
delete_site_option('acoustic_connect_enabled');
delete_option('acoustic_connect_app_key');
delete_site_option('acoustic_connect_app_key');
delete_option('acoustic_connect_collector_url');
delete_site_option('acoustic_connect_collector_url');
delete_option('acoustic_connect_sdk_version');
delete_site_option('acoustic_connect_sdk_version');
delete_option('acoustic_connect_sdk_minified');
delete_site_option('acoustic_connect_sdk_minified');
delete_option('acoustic_connect_subscription_tier');
delete_site_option('acoustic_connect_subscription_tier');
delete_option('acoustic_connect_debug_mode');
delete_site_option('acoustic_connect_debug_mode');
delete_option('acoustic_connect_track_product_view');
delete_site_option('acoustic_connect_track_product_view');
delete_option('acoustic_connect_track_add_to_cart');
delete_site_option('acoustic_connect_track_add_to_cart');
delete_option('acoustic_connect_track_remove_from_cart');
delete_site_option('acoustic_connect_track_remove_from_cart');
delete_option('acoustic_connect_track_checkout');
delete_site_option('acoustic_connect_track_checkout');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_acoustic_order_%', '_site_transient_acoustic_order_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_phone' ) );

