<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qode_wishlist_for_woocommerce_framework_permalinks');
delete_site_option('qode_wishlist_for_woocommerce_framework_permalinks');
delete_option('qode_wishlist_for_woocommerce_framework_permalinks_updated');
delete_site_option('qode_wishlist_for_woocommerce_framework_permalinks_updated');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_count' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('qode_wishlist_for_woocommerce_trigger_guests_wishlist_check');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'qode_wishlist_for_woocommerce_user_wishlist_items' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'qode_wishlist_for_woocommerce_user_wishlist_items' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'qode_wishlist_for_woocommerce_user_wishlist_items' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'qode_wishlist_for_woocommerce_user_wishlist_items' ) );

