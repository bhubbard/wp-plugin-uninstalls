<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wikipediapreview_init_timestamp');
delete_site_option('wikipediapreview_init_timestamp');
delete_option('wikipediapreview_do_activation_redirect');
delete_site_option('wikipediapreview_do_activation_redirect');
delete_option('wikipediapreview_options_detect_links');
delete_site_option('wikipediapreview_options_detect_links');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wikipediapreview_detectlinks' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wikipediapreview_detectlinks' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wikipediapreview_detectlinks' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wikipediapreview_detectlinks' ) );

