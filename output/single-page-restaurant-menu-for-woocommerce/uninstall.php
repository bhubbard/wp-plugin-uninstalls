<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sprm_page_id');
delete_site_option('sprm_page_id');
delete_option('sprm_skin');
delete_site_option('sprm_skin');
delete_option('sprm_top_banner');
delete_site_option('sprm_top_banner');
delete_option('sprm_logo');
delete_site_option('sprm_logo');
delete_option('sprm_primary_color');
delete_site_option('sprm_primary_color');
delete_option('sprm_hide_image');
delete_site_option('sprm_hide_image');
delete_option('sprm_product_limit');
delete_site_option('sprm_product_limit');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'thumbnail_id' ) );

