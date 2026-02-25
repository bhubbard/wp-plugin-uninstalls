<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('array_key');
delete_site_option('array_key');
delete_option('new_option_name');
delete_site_option('new_option_name');
delete_option('some_other_option');
delete_site_option('some_other_option');
delete_option('option_etc');
delete_site_option('option_etc');
delete_option('feed_settings');
delete_site_option('feed_settings');
delete_option('feed_migrated');
delete_site_option('feed_migrated');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'api_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'api_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'api_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'api_key' ) );

