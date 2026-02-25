<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hybrid-slideshow-option-width');
delete_site_option('hybrid-slideshow-option-width');
delete_option('hybrid-slideshow-option-height');
delete_site_option('hybrid-slideshow-option-height');
delete_option('hybrid-slideshow-option-delay');
delete_site_option('hybrid-slideshow-option-delay');
delete_option('hybrid-slideshow-option-transition');
delete_site_option('hybrid-slideshow-option-transition');
delete_option('hybrid-slideshow-option-random');
delete_site_option('hybrid-slideshow-option-random');
delete_option('hybrid-slideshow-option-javascript');
delete_site_option('hybrid-slideshow-option-javascript');
delete_option('hybrid-slideshow-option-images');
delete_site_option('hybrid-slideshow-option-images');
delete_option('hybrid-slideshow-option-width-prev');
delete_site_option('hybrid-slideshow-option-width-prev');
delete_option('hybrid-slideshow-option-height-prev');
delete_site_option('hybrid-slideshow-option-height-prev');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

