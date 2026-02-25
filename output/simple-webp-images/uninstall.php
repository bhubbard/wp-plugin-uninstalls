<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simple-webp-images-conversion-quality');
delete_site_option('simple-webp-images-conversion-quality');
delete_option('simple-webp-images-output-buffering');
delete_site_option('simple-webp-images-output-buffering');
delete_option('simple-webp-images-excluded-html-ob');
delete_site_option('simple-webp-images-excluded-html-ob');
delete_option('simple-webp-images-lazy-loading');
delete_site_option('simple-webp-images-lazy-loading');
delete_option('simple-webp-images-excluded-lazy-loading');
delete_site_option('simple-webp-images-excluded-lazy-loading');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );

