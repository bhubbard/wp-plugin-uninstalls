<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dropavifmo_last_scan_timestamp');
delete_site_option('dropavifmo_last_scan_timestamp');
delete_option('dropavifmo_initial_scan_complete');
delete_site_option('dropavifmo_initial_scan_complete');

// Delete Transients
delete_transient('dropavifmo_pending_remote_jobs');
delete_site_transient('dropavifmo_pending_remote_jobs');
delete_transient('dropavifmo_cf_purge_error_msg');
delete_site_transient('dropavifmo_cf_purge_error_msg');
delete_transient('dropavifmo_remote_polling_active');
delete_site_transient('dropavifmo_remote_polling_active');

// Clear Cron Jobs
wp_clear_scheduled_hook('dropavifmo_scan_extra_dirs_hook');
wp_clear_scheduled_hook('dropavifmo_send_monthly_report_hook');
wp_clear_scheduled_hook('dropavifmo_remote_polling_hook');
wp_clear_scheduled_hook('dropavifmo_process_cron_queue');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dropavifmo_conflict_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dropavifmo_conflict_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dropavifmo_conflict_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dropavifmo_conflict_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_error_while_processing' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_error_while_processing' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_error_while_processing' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_error_while_processing' ) );

