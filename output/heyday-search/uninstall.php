<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('heyday_set_meta_data');
delete_site_option('heyday_set_meta_data');
delete_option('heyday_last_product_hash');
delete_site_option('heyday_last_product_hash');
delete_option('heyday_merchant_feed_affid');
delete_site_option('heyday_merchant_feed_affid');
delete_option('heyday_merchant_feed_pass');
delete_site_option('heyday_merchant_feed_pass');
delete_option('heyday_merchant_feed_err');
delete_site_option('heyday_merchant_feed_err');
delete_option('heyday_merchant_feed_email');
delete_site_option('heyday_merchant_feed_email');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'thumbnail_id' ) );

