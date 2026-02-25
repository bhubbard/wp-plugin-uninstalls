<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('proseed-slideshow-imagesize-width');
delete_site_option('proseed-slideshow-imagesize-width');
delete_option('proseed-slideshow-imagesize-height');
delete_site_option('proseed-slideshow-imagesize-height');
delete_option('proseed-slideshow-animation');
delete_site_option('proseed-slideshow-animation');
delete_option('proseed-slideshow-direction');
delete_site_option('proseed-slideshow-direction');
delete_option('proseed-slideshow-control');
delete_site_option('proseed-slideshow-control');
delete_option('proseed-slideshow-position');
delete_site_option('proseed-slideshow-position');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'image_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'image_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'image_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'image_data' ) );

