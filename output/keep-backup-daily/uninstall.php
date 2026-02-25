<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kbfnr_settings');
delete_site_option('kbfnr_settings');
delete_option('kbfnr_error_log');
delete_site_option('kbfnr_error_log');
delete_option('kbfnr_usage');
delete_site_option('kbfnr_usage');
delete_option('kbfnr_schema_version');
delete_site_option('kbfnr_schema_version');
delete_option('ms_files_rewriting');
delete_site_option('ms_files_rewriting');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('kbd_settings');
delete_site_option('kbd_settings');
delete_option('kbd_backup_aliases');
delete_site_option('kbd_backup_aliases');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'kbfnr_dismiss_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'kbfnr_dismiss_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'kbfnr_dismiss_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'kbfnr_dismiss_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'kbfnr_reminder_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'kbfnr_reminder_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'kbfnr_reminder_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'kbfnr_reminder_%' ) );

