<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('el_gallery_mobile_detect');
delete_site_option('el_gallery_mobile_detect');
delete_option('el_gallery_time');
delete_site_option('el_gallery_time');
delete_option('el_gallery_width');
delete_site_option('el_gallery_width');
delete_option('el_gallery_height');
delete_site_option('el_gallery_height');
delete_option('el_gallery_nav');
delete_site_option('el_gallery_nav');
delete_option('el_gallery_nav_color');
delete_site_option('el_gallery_nav_color');
delete_option('el_gallery_nav_light');
delete_site_option('el_gallery_nav_light');
delete_option('el_gallery_center');
delete_site_option('el_gallery_center');
delete_option('el_gallery_icon');
delete_site_option('el_gallery_icon');
delete_option('el_gallery_links');
delete_site_option('el_gallery_links');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

