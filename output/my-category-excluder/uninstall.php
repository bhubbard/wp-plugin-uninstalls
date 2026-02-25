<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('on_home');
delete_site_option('on_home');
delete_option('on_archives');
delete_site_option('on_archives');
delete_option('on_feeds');
delete_site_option('on_feeds');
delete_option('include_cat');
delete_site_option('include_cat');
delete_option('exclude_cat');
delete_site_option('exclude_cat');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'exc_cats_list' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'exc_cats_list' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'exc_cats_list' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'exc_cats_list' ) );

