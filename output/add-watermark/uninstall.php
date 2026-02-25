<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'add-watermark-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('add-watermark-default-active');
delete_site_option('add-watermark-default-active');
delete_option('add-watermark-exclude');
delete_site_option('add-watermark-exclude');
delete_option('add-watermark-image');
delete_site_option('add-watermark-image');
delete_option('add-watermark-size');
delete_site_option('add-watermark-size');
delete_option('add-watermark-horizontal-pos-from');
delete_site_option('add-watermark-horizontal-pos-from');
delete_option('add-watermark-vertical-pos-from');
delete_site_option('add-watermark-vertical-pos-from');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'add-watermark' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'add-watermark' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'add-watermark' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'add-watermark' ) );

