<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bbp_unread_posts_debug');
delete_site_option('bbp_unread_posts_debug');
delete_option('bbp_unread_post_image_path_unread');
delete_site_option('bbp_unread_post_image_path_unread');
delete_option('bbp_unread_post_image_path_read');
delete_site_option('bbp_unread_post_image_path_read');
delete_option('bbp_unread_post_amount');
delete_site_option('bbp_unread_post_amount');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_bbp_last_active_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_bbp_last_active_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_bbp_last_active_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_bbp_last_active_time' ) );

