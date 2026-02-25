<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ptq_settings');
delete_site_option('ptq_settings');

// Delete Transients
delete_transient('ptq_queued_existence');
delete_site_transient('ptq_queued_existence');

// Clear Cron Jobs
wp_clear_scheduled_hook('ptq_single_event_reschedule');
wp_clear_scheduled_hook('ptq_single_event_maybe_schedule');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_queue_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_queue_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_queue_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_queue_order' ) );

