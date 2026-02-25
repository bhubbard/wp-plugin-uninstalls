<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('core_update_previous_version');
delete_site_option('core_update_previous_version');
delete_option('MSS');
delete_site_option('MSS');

// Delete Transients
delete_transient('mss_license_status');
delete_site_transient('mss_license_status');

// Clear Cron Jobs
wp_clear_scheduled_hook('mss_scan_monitor_event');
wp_clear_scheduled_hook('mss_scheduled_scan');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'session_tokens' ) );

