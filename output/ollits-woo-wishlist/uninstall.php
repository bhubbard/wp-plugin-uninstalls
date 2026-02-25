<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ollits_wishlist_page_id');
delete_site_option('ollits_wishlist_page_id');
delete_option('ollitsaw_button_position_shop');
delete_site_option('ollitsaw_button_position_shop');
delete_option('ollitsaw_button_priority_shop');
delete_site_option('ollitsaw_button_priority_shop');
delete_option('ollitsaw_button_position_product');
delete_site_option('ollitsaw_button_position_product');
delete_option('ollitsaw_button_priority_product');
delete_site_option('ollitsaw_button_priority_product');
delete_option('ollitsaw_button_add_to_wishlist_text');
delete_site_option('ollitsaw_button_add_to_wishlist_text');
delete_option('ollitsaw_button_remove_from_wishlist_text');
delete_site_option('ollitsaw_button_remove_from_wishlist_text');
delete_option('ollitsaw_page_style');
delete_site_option('ollitsaw_page_style');
delete_option('ollitsaw_email_notifications');
delete_site_option('ollitsaw_email_notifications');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ol_its_advanced_wishlist' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ol_its_advanced_wishlist' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ol_its_advanced_wishlist' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ol_its_advanced_wishlist' ) );

