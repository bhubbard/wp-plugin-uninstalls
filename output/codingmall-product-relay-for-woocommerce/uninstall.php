<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wooapisync_db_version');
delete_site_option('wooapisync_db_version');
delete_option('wooapisync_jobs');
delete_site_option('wooapisync_jobs');
delete_option('wooapisync_logs');
delete_site_option('wooapisync_logs');

// Clear Cron Jobs
wp_clear_scheduled_hook('wooapisync_process_queue_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wooapisync_disable_auto' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wooapisync_disable_auto' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wooapisync_disable_auto' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wooapisync_disable_auto' ) );

