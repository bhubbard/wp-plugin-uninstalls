<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mpgr_version');
delete_site_option('mpgr_version');
delete_option('mpgr_weekly_summary_settings');
delete_site_option('mpgr_weekly_summary_settings');
delete_option('mpgr_reminder_settings');
delete_site_option('mpgr_reminder_settings');

// Delete Transients
delete_transient('mpgr_report_cache');
delete_site_transient('mpgr_report_cache');
delete_transient('mpgr_summary_cache');
delete_site_transient('mpgr_summary_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('mpgr_run_gift_reminders');
wp_clear_scheduled_hook('mpgr_run_weekly_summary');
wp_clear_scheduled_hook('mpgr_cleanup_cache');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_name' ) );

