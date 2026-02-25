<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gtp_post_list');
delete_site_option('gtp_post_list');
delete_option('gtp_post_list_posttypes');
delete_site_option('gtp_post_list_posttypes');
delete_option('gtp_frontpage_posts');
delete_site_option('gtp_frontpage_posts');
delete_option('gtp_simulate_location');
delete_site_option('gtp_simulate_location');
delete_option('gtp_plugin_active');
delete_site_option('gtp_plugin_active');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'gtp_countries' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'gtp_countries' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'gtp_countries' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'gtp_countries' ) );

