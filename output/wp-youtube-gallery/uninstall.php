<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpyg_min_h');
delete_site_option('wpyg_min_h');
delete_option('wpyg_lightbox');
delete_site_option('wpyg_lightbox');
delete_option('wpyg_iframe_w');
delete_site_option('wpyg_iframe_w');
delete_option('wpyg_desc');
delete_site_option('wpyg_desc');
delete_option('wpyg_title');
delete_site_option('wpyg_title');
delete_option('wpyg_content_limit');
delete_site_option('wpyg_content_limit');
delete_option('wpyg_per_row_posts');
delete_site_option('wpyg_per_row_posts');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpyg_video-id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpyg_video-id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpyg_video-id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpyg_video-id' ) );

