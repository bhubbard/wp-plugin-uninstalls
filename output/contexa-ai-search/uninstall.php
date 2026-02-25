<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('contexa_api_key');
delete_site_option('contexa_api_key');
delete_option('contexa_api_url');
delete_site_option('contexa_api_url');
delete_option('contexa_auto_sync');
delete_site_option('contexa_auto_sync');
delete_option('contexa_content_auto_sync');
delete_site_option('contexa_content_auto_sync');
delete_option('contexa_content_sync_types');
delete_site_option('contexa_content_sync_types');
delete_option('contexa_content_sync_enabled');
delete_site_option('contexa_content_sync_enabled');
delete_option('contexa_error_logging_enabled');
delete_site_option('contexa_error_logging_enabled');
delete_option('contexa_log_to_remote');
delete_site_option('contexa_log_to_remote');
delete_option('contexa_remote_log_url');
delete_site_option('contexa_remote_log_url');
delete_option('contexa_remote_logging_enabled');
delete_site_option('contexa_remote_logging_enabled');
delete_option('contexa_tracking_enabled');
delete_site_option('contexa_tracking_enabled');
delete_option('contexa_cache_ttl');
delete_site_option('contexa_cache_ttl');
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');
delete_option('contexa_backend_url');
delete_site_option('contexa_backend_url');

// Delete Transients
delete_transient('contexa_activation_redirect');
delete_site_transient('contexa_activation_redirect');
delete_transient('contexa_bulk_sync_products');
delete_site_transient('contexa_bulk_sync_products');
delete_transient('contexa_bulk_sync_start_time');
delete_site_transient('contexa_bulk_sync_start_time');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_contexa_tracked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_contexa_tracked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_contexa_tracked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_contexa_tracked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_contexa_visitor_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_contexa_visitor_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_contexa_visitor_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_contexa_visitor_id' ) );

