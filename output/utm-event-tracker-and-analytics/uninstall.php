<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('utm_event_tracker_settings');
delete_site_option('utm_event_tracker_settings');
delete_option('utm_event_tracker_dismiss_cache_notice');
delete_site_option('utm_event_tracker_dismiss_cache_notice');
delete_option('utm_event_tracker_overview_settings');
delete_site_option('utm_event_tracker_overview_settings');

// Delete Transients
delete_transient('utm_event_tracker_stats_updating');
delete_site_transient('utm_event_tracker_stats_updating');
delete_transient('utm_event_tracker_woocommerce_session_started');
delete_site_transient('utm_event_tracker_woocommerce_session_started');

// Clear Cron Jobs
wp_clear_scheduled_hook('utm_event_tracker/update_session_location');
wp_clear_scheduled_hook('utm_event_tracker/migrate_event_data');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'utm_event_tracker_session' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'utm_event_tracker_session' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'utm_event_tracker_session' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'utm_event_tracker_session' ) );

