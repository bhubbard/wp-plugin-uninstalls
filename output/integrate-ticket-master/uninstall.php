<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ank_wp_ticket_debug_mode');
delete_site_option('ank_wp_ticket_debug_mode');
delete_option('ank_wp_ticket_api_key');
delete_site_option('ank_wp_ticket_api_key');
delete_option('ank_wp_ticket_api_url');
delete_site_option('ank_wp_ticket_api_url');
delete_option('ank_wp_ticket_event_sort_by');
delete_site_option('ank_wp_ticket_event_sort_by');
delete_option('ank_wp_ticket_count_event_page');
delete_site_option('ank_wp_ticket_count_event_page');
delete_option('ank_wp_ticket_country');
delete_site_option('ank_wp_ticket_country');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_logging_prune_routine');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_wp_log_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_wp_log_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_wp_log_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_wp_log_%' ) );

