<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('content_width');
delete_site_option('content_width');
delete_option('content_bg');
delete_site_option('content_bg');
delete_option('content_height');
delete_site_option('content_height');
delete_option('content_img_width');
delete_site_option('content_img_width');
delete_option('content_nav_width');
delete_site_option('content_nav_width');
delete_option('content_nav_height');
delete_site_option('content_nav_height');
delete_option('content_nav_color');
delete_site_option('content_nav_color');
delete_option('content_nav_bg');
delete_site_option('content_nav_bg');
delete_option('content_nav_active_bg');
delete_site_option('content_nav_active_bg');
delete_option('content_nav_active_color');
delete_site_option('content_nav_active_color');
delete_option('content_sort');
delete_site_option('content_sort');
delete_option('content_order');
delete_site_option('content_order');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'content_slider' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'content_slider' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'content_slider' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'content_slider' ) );

