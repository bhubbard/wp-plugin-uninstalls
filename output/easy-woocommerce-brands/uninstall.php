<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ewbct_permalink');
delete_site_option('ewbct_permalink');
delete_option('ewbct_position');
delete_site_option('ewbct_position');
delete_option('ewbct_style');
delete_site_option('ewbct_style');
delete_option('ewbct_title');
delete_site_option('ewbct_title');
delete_option('ewbct_width');
delete_site_option('ewbct_width');
delete_option('ewbct_height');
delete_site_option('ewbct_height');
delete_option('ewbct_image_style');
delete_site_option('ewbct_image_style');
delete_option('ewbct_image_brands_columns');
delete_site_option('ewbct_image_brands_columns');
delete_option('ewbct_brand_columns');
delete_site_option('ewbct_brand_columns');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ewbct_category-image-id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ewbct_category-image-id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ewbct_category-image-id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ewbct_category-image-id' ) );

