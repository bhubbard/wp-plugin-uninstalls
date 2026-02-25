<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ced_similar_product_shop_visibility');
delete_site_option('ced_similar_product_shop_visibility');
delete_option('ced_similar_product_heading');
delete_site_option('ced_similar_product_heading');
delete_option('ced_similar_product_count');
delete_site_option('ced_similar_product_count');
delete_option('ced_similar_product_css');
delete_site_option('ced_similar_product_css');
delete_option('ced_similar_product_product_page_visibility');
delete_site_option('ced_similar_product_product_page_visibility');
delete_option('ced_similar_product_cart_visibility');
delete_site_option('ced_similar_product_cart_visibility');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ced_similar_product_discount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ced_similar_product_discount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ced_similar_product_discount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ced_similar_product_discount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_similar_product_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_similar_product_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_similar_product_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_similar_product_ids' ) );

