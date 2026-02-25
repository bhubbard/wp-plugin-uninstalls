<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('slideshow-jquery-image-gallery-updated-from-v2-2-17-to-v2-2-20');
delete_site_option('slideshow-jquery-image-gallery-updated-from-v2-2-17-to-v2-2-20');
delete_option('slideshow-jquery-image-gallery-updated-from-v2-2-16-to-v2-2-17');
delete_site_option('slideshow-jquery-image-gallery-updated-from-v2-2-16-to-v2-2-17');
delete_option('slideshow-jquery-image-gallery-updated-from-v2-2-12-to-v2-2-16');
delete_site_option('slideshow-jquery-image-gallery-updated-from-v2-2-12-to-v2-2-16');
delete_option('slideshow-jquery-image-gallery-updated-from-v2-2-8-to-v2-2-12');
delete_site_option('slideshow-jquery-image-gallery-updated-from-v2-2-8-to-v2-2-12');
delete_option('slideshow-jquery-image-gallery-updated-from-v2-2-0-to-v2-2-8');
delete_site_option('slideshow-jquery-image-gallery-updated-from-v2-2-0-to-v2-2-8');
delete_option('slideshow-jquery-image-gallery-updated-from-v2-1-23-to-v2-2-0');
delete_site_option('slideshow-jquery-image-gallery-updated-from-v2-1-23-to-v2-2-0');
delete_option('slideshow-jquery-image-gallery-updated-from-v2-1-20-to-v2-1-23');
delete_site_option('slideshow-jquery-image-gallery-updated-from-v2-1-20-to-v2-1-23');
delete_option('slideshow-jquery-image-gallery-updated-from-v2-1-20-to-v2-1-22');
delete_site_option('slideshow-jquery-image-gallery-updated-from-v2-1-20-to-v2-1-22');
delete_option('slideshow-plugin-updated-from-v2-to-v2-1-20');
delete_site_option('slideshow-plugin-updated-from-v2-to-v2-1-20');
delete_option('slideshow-plugin-updated-from-v1-x-x-to-v2-0-1');
delete_site_option('slideshow-plugin-updated-from-v1-x-x-to-v2-0-1');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'styleSettings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'styleSettings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'styleSettings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'styleSettings' ) );

