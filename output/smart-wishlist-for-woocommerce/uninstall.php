<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tesw_general_settings_fields');
delete_site_option('tesw_general_settings_fields');
delete_option('tesw_add_to_wishlist_options_fields');
delete_site_option('tesw_add_to_wishlist_options_fields');
delete_option('tesw_wishlist_page_options_fields');
delete_site_option('tesw_wishlist_page_options_fields');
delete_option('tesw_social_networks_settings_fields');
delete_site_option('tesw_social_networks_settings_fields');
delete_option('tesw_style_options');
delete_site_option('tesw_style_options');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('tesw_pro_version_settings_fields');
delete_site_option('tesw_pro_version_settings_fields');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'tesw_smart_wishlist_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'tesw_smart_wishlist_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'tesw_smart_wishlist_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'tesw_smart_wishlist_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'tesw_wishlist_date_added' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'tesw_wishlist_date_added' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'tesw_wishlist_date_added' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'tesw_wishlist_date_added' ) );

