<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('w2f_token');
delete_site_option('w2f_token');
delete_option('w2f_user');
delete_site_option('w2f_user');
delete_option('w2f_flickr_URL');
delete_site_option('w2f_flickr_URL');
delete_option('w2f_flickr_is_public');
delete_site_option('w2f_flickr_is_public');
delete_option('w2f_flickr_is_friend');
delete_site_option('w2f_flickr_is_friend');
delete_option('w2f_flickr_is_family');
delete_site_option('w2f_flickr_is_family');
delete_option('w2f_sets');
delete_site_option('w2f_sets');
delete_option('w2f_groups');
delete_site_option('w2f_groups');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attached_file' ) );

