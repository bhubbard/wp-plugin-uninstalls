<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woodpd_products_button');
delete_site_option('woodpd_products_button');
delete_option('woodpd_simple_product_button ');
delete_site_option('woodpd_simple_product_button ');
delete_option('woodpd_after_product_button ');
delete_site_option('woodpd_after_product_button ');
delete_option('woodpd_read_more_text');
delete_site_option('woodpd_read_more_text');
delete_option('woodpd_cart_url');
delete_site_option('woodpd_cart_url');
delete_option('woodpd_add_to_cart_text');
delete_site_option('woodpd_add_to_cart_text');
delete_option('woodpd_buy_now_text');
delete_site_option('woodpd_buy_now_text');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dpd_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dpd_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dpd_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dpd_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dpd_price_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dpd_price_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dpd_price_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dpd_price_id' ) );

