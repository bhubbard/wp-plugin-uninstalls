<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('haway_send_site_details');
delete_site_option('haway_send_site_details');
delete_option('haway_listing_page');
delete_site_option('haway_listing_page');
delete_option('haway_listings_per_page');
delete_site_option('haway_listings_per_page');
delete_option('haway_client_id');
delete_site_option('haway_client_id');
delete_option('haway_client_secret');
delete_site_option('haway_client_secret');
delete_option('haway_access_token');
delete_site_option('haway_access_token');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'haway_shortcode_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'haway_shortcode_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'haway_shortcode_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'haway_shortcode_page' ) );

