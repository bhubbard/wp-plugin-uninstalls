<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('storelocator_url');
delete_site_option('storelocator_url');
delete_option('storelocator_path');
delete_site_option('storelocator_path');
delete_option('storelocator_url_input');
delete_site_option('storelocator_url_input');
delete_option('storelocator_path_input');
delete_site_option('storelocator_path_input');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'storelocator_getting_started_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'storelocator_getting_started_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'storelocator_getting_started_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'storelocator_getting_started_notice' ) );

