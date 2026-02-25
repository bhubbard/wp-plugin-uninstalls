<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cyb-switch');
delete_site_option('cyb-switch');
delete_option('cyb-ios-full-mode');
delete_site_option('cyb-ios-full-mode');
delete_option('cyb-post-type');
delete_site_option('cyb-post-type');
delete_option('cyb-color');
delete_site_option('cyb-color');
delete_option('cyb-ios-bar-style');
delete_site_option('cyb-ios-bar-style');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cyb-color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cyb-color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cyb-color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cyb-color' ) );

