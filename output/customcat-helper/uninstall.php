<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ccoos_tracking_numbers');
delete_site_option('ccoos_tracking_numbers');
delete_option('ccoos_api_key');
delete_site_option('ccoos_api_key');
delete_option('ccoos_frequency');
delete_site_option('ccoos_frequency');
delete_option('ccoos_email_on_update');
delete_site_option('ccoos_email_on_update');
delete_option('ccoos_tracking_suppress_note_email');
delete_site_option('ccoos_tracking_suppress_note_email');
delete_option('ccoos_tracking_mark_completed');
delete_site_option('ccoos_tracking_mark_completed');

// Clear Cron Jobs
wp_clear_scheduled_hook('ccoos_stock_sync');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_is_discontinued' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_is_discontinued' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_is_discontinued' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_is_discontinued' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_stock_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_stock_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_stock_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_stock_status' ) );

