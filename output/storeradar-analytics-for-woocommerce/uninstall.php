<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('storeradar_email_tracking_enabled');
delete_site_option('storeradar_email_tracking_enabled');
delete_option('storeradar_show_activation_notice');
delete_site_option('storeradar_show_activation_notice');

// Delete Transients
delete_transient('storeradar_error_logs');
delete_site_transient('storeradar_error_logs');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_storeradar_guest_%', '_site_transient_storeradar_guest_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('storeradar_stored_carts');
delete_site_transient('storeradar_stored_carts');
delete_transient('storeradar_analytics_sessions');
delete_site_transient('storeradar_analytics_sessions');
delete_transient('storeradar_analytics_pageviews');
delete_site_transient('storeradar_analytics_pageviews');
delete_transient('storeradar_analytics_summary');
delete_site_transient('storeradar_analytics_summary');

// Clear Cron Jobs
wp_clear_scheduled_hook('storeradar_cart_cleanup');
wp_clear_scheduled_hook('storeradar_record_traffic_event');
wp_clear_scheduled_hook('storeradar_analytics_cleanup');
wp_clear_scheduled_hook('storeradar_heartbeat');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_storeradar_cart_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_storeradar_cart_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_storeradar_cart_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_storeradar_cart_token' ) );

