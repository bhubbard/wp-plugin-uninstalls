<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mymap_checkbox');
delete_site_option('mymap_checkbox');
delete_option('mymap_color_picker');
delete_site_option('mymap_color_picker');
delete_option('mymap_api_key');
delete_site_option('mymap_api_key');
delete_option('mymap_checkbox_billing');
delete_site_option('mymap_checkbox_billing');
delete_option('mymap_checkbox_shipping');
delete_site_option('mymap_checkbox_shipping');
delete_option('mymap_location_url');
delete_site_option('mymap_location_url');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mymap_location_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mymap_location_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mymap_location_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mymap_location_url' ) );

