<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gazchaps-woocommerce-auto-category-product-thumbnails_use-transients');
delete_site_option('gazchaps-woocommerce-auto-category-product-thumbnails_use-transients');
delete_option('gazchaps-woocommerce-auto-category-product-thumbnails_transient-expiry');
delete_site_option('gazchaps-woocommerce-auto-category-product-thumbnails_transient-expiry');
delete_option('gazchaps-woocommerce-auto-category-product-thumbnails_transient-expiry-custom');
delete_site_option('gazchaps-woocommerce-auto-category-product-thumbnails_transient-expiry-custom');
delete_option('gazchaps-woocommerce-auto-category-product-thumbnails_shuffle');
delete_site_option('gazchaps-woocommerce-auto-category-product-thumbnails_shuffle');
delete_option('gazchaps-woocommerce-auto-category-product-thumbnails_recurse');
delete_site_option('gazchaps-woocommerce-auto-category-product-thumbnails_recurse');
delete_option('gazchaps-woocommerce-auto-category-product-thumbnails_category-size');
delete_site_option('gazchaps-woocommerce-auto-category-product-thumbnails_category-size');
delete_option('gazchaps-woocommerce-auto-category-product-thumbnails_exclude-thumbnail-ids');
delete_site_option('gazchaps-woocommerce-auto-category-product-thumbnails_exclude-thumbnail-ids');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'thumbnail_id' ) );

