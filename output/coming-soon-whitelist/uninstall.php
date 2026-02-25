<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpwwoo_whitelisted_ids');
delete_site_option('wpwwoo_whitelisted_ids');
delete_option('woocommerce_coming_soon');
delete_site_option('woocommerce_coming_soon');
delete_option('woocommerce_store_pages_only');
delete_site_option('woocommerce_store_pages_only');

// Delete Transients
delete_transient('wpwwoo_cached_urls');
delete_site_transient('wpwwoo_cached_urls');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpwwoo_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpwwoo_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpwwoo_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpwwoo_dismissed_notices' ) );

