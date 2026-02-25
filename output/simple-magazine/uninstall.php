<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simplemag-apple-app-id');
delete_site_option('simplemag-apple-app-id');
delete_option('simplemag-google-analytics');
delete_site_option('simplemag-google-analytics');
delete_option('simplemag-magazine-name');
delete_site_option('simplemag-magazine-name');
delete_option('array_key');
delete_site_option('array_key');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'simplemag_issue' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'simplemag_issue' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'simplemag_issue' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'simplemag_issue' ) );

