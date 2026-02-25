<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpdtol_database_table_overview_logs_version');
delete_site_option('wpdtol_database_table_overview_logs_version');
delete_option('wpdtol_database_table_overview_logs_email_report_recipients');
delete_site_option('wpdtol_database_table_overview_logs_email_report_recipients');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpdtol_database_table_overview_logs_update');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpdtol_database_table_overview_logs_admin_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpdtol_database_table_overview_logs_admin_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpdtol_database_table_overview_logs_admin_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpdtol_database_table_overview_logs_admin_notice_dismissed' ) );

