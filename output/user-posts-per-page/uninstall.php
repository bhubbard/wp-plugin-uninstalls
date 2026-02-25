<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('uppp_network_num_results');
delete_site_option('uppp_network_num_results');
delete_option('uppp_site_num_results');
delete_site_option('uppp_site_num_results');
delete_option('uppp_site_automatic_insertion');
delete_site_option('uppp_site_automatic_insertion');
delete_option('uppp_network_automatic_insertion');
delete_site_option('uppp_network_automatic_insertion');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'uppp_user_num_results' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'uppp_user_num_results' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'uppp_user_num_results' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'uppp_user_num_results' ) );

