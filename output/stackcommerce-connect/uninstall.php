<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stackcommerce_wp_author');
delete_site_option('stackcommerce_wp_author');
delete_option('stackcommerce_wp_post_status');
delete_site_option('stackcommerce_wp_post_status');
delete_option('stackcommerce_wp_categories');
delete_site_option('stackcommerce_wp_categories');
delete_option('stackcommerce_wp_tags');
delete_site_option('stackcommerce_wp_tags');
delete_option('stackcommerce_wp_featured_image');
delete_site_option('stackcommerce_wp_featured_image');
delete_option('stackcommerce_wp_secret');
delete_site_option('stackcommerce_wp_secret');
delete_option('stackcommerce_wp_connection_status');
delete_site_option('stackcommerce_wp_connection_status');
delete_option('stackcommerce_wp_account_id');
delete_site_option('stackcommerce_wp_account_id');
delete_option('stackcommerce_wp');
delete_site_option('stackcommerce_wp');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_thumbnail_id' ) );

