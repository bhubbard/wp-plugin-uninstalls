<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('acmt_auto_backup_enabled');
delete_site_option('acmt_auto_backup_enabled');
delete_option('acmt_backup_retention_days');
delete_site_option('acmt_backup_retention_days');
delete_option('acmt_last_db_optimization');
delete_site_option('acmt_last_db_optimization');
delete_option('acmt_space_saved');
delete_site_option('acmt_space_saved');
delete_option('acmt_last_cleanup_run');
delete_site_option('acmt_last_cleanup_run');
delete_option('acmt_install_date');
delete_site_option('acmt_install_date');
delete_option('acmt_reminder_date');
delete_site_option('acmt_reminder_date');
delete_option('acmt_review_dismissed');
delete_site_option('acmt_review_dismissed');
delete_option('acmt_clean_master_daily');
delete_site_option('acmt_clean_master_daily');
delete_option('acmt_clean_master_weekly');
delete_site_option('acmt_clean_master_weekly');

// Clear Cron Jobs
wp_clear_scheduled_hook('acmt_daily_event');
wp_clear_scheduled_hook('acmt_weekly_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attached_file' ) );

