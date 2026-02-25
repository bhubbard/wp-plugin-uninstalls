<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('storebird_api_key');
delete_site_option('storebird_api_key');
delete_option('storebird_secret_key');
delete_site_option('storebird_secret_key');
delete_option('storebird_enabled');
delete_site_option('storebird_enabled');
delete_option('storebird_admin_only');
delete_site_option('storebird_admin_only');
delete_option('storebird_connected_via');
delete_site_option('storebird_connected_via');
delete_option('storebird_last_sync');
delete_site_option('storebird_last_sync');
delete_option('storebird_product_count');
delete_site_option('storebird_product_count');
delete_option('storebird_version');
delete_site_option('storebird_version');
delete_option('storebird_api_url');
delete_site_option('storebird_api_url');
delete_option('storebird_dashboard_url');
delete_site_option('storebird_dashboard_url');

// Delete Transients
delete_transient('storebird_connection_verified');
delete_site_transient('storebird_connection_verified');
delete_transient('storebird_connect_message');
delete_site_transient('storebird_connect_message');
delete_transient('storebird_widget_config');
delete_site_transient('storebird_widget_config');
delete_transient('storebird_sync_lock');
delete_site_transient('storebird_sync_lock');
delete_transient('storebird_sync_progress');
delete_site_transient('storebird_sync_progress');
delete_transient('storebird_sync_products');
delete_site_transient('storebird_sync_products');
delete_transient('storebird_sync_product_ids');
delete_site_transient('storebird_sync_product_ids');
delete_transient('storebird_sync_count');
delete_site_transient('storebird_sync_count');
delete_transient('storebird_pending_connect');
delete_site_transient('storebird_pending_connect');
delete_transient('storebird_auto_connect_cooldown');
delete_site_transient('storebird_auto_connect_cooldown');
delete_transient('storebird_redirect_after_connect');
delete_site_transient('storebird_redirect_after_connect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_estimated_delivery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_estimated_delivery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_estimated_delivery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_estimated_delivery' ) );

