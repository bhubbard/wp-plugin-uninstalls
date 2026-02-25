<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('div-width');
delete_site_option('div-width');
delete_option('div-color');
delete_site_option('div-color');
delete_option('image-bg-color');
delete_site_option('image-bg-color');
delete_option('image-border-color');
delete_site_option('image-border-color');
delete_option('image-border-hover-color');
delete_site_option('image-border-hover-color');
delete_option('category-id');
delete_site_option('category-id');
delete_option('number-posts');
delete_site_option('number-posts');
delete_option('numberposts');
delete_site_option('numberposts');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'thumbnail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'thumbnail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'thumbnail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'thumbnail' ) );

