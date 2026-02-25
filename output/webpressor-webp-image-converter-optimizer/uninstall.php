<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tbswebpressor_webp_quality');
delete_site_option('tbswebpressor_webp_quality');
delete_option('tbswebpressor_convert_on_upload');
delete_site_option('tbswebpressor_convert_on_upload');
delete_option('tbswebpressor_compression_quality');
delete_site_option('tbswebpressor_compression_quality');
delete_option('tbswebpressor_convert_to_webp');
delete_site_option('tbswebpressor_convert_to_webp');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'tbswebpressor_webp_path' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'tbswebpressor_webp_path' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'tbswebpressor_webp_path' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'tbswebpressor_webp_path' ) );

