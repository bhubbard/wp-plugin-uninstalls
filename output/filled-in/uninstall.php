<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('filled_in');
delete_site_option('filled_in');
delete_option('filled_in_ajax');
delete_site_option('filled_in_ajax');
delete_option('filled_in_templates');
delete_site_option('filled_in_templates');
delete_option('filled_in_notice');
delete_site_option('filled_in_notice');
delete_option('filled_in_css');
delete_site_option('filled_in_css');
delete_option('filled_in_cron_delete_failed');
delete_site_option('filled_in_cron_delete_failed');
delete_option('filled_in_smtp_host');
delete_site_option('filled_in_smtp_host');
delete_option('filled_in_smtp_port');
delete_site_option('filled_in_smtp_port');
delete_option('filled_in_smtp_ssl');
delete_site_option('filled_in_smtp_ssl');
delete_option('filled_in_smtp_username');
delete_site_option('filled_in_smtp_username');
delete_option('filled_in_smtp_password');
delete_site_option('filled_in_smtp_password');
delete_option('filled_in_attachments');
delete_site_option('filled_in_attachments');
delete_option('filled_in_uploads');
delete_site_option('filled_in_uploads');
delete_option('filled_in_cookies');
delete_site_option('filled_in_cookies');
delete_option('filled_in_recent_error');
delete_site_option('filled_in_recent_error');
delete_option('filled_in_recent_error_data');
delete_site_option('filled_in_recent_error_data');
delete_option('filled_in_notifications');
delete_site_option('filled_in_notifications');
delete_option('filled_in_version');
delete_site_option('filled_in_version');
delete_option('filled_in_cron_delete_failed_last_run');
delete_site_option('filled_in_cron_delete_failed_last_run');

// Clear Cron Jobs
wp_clear_scheduled_hook('filled_in_cron_delete_failed_sumbmitions_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ug_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ug_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ug_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ug_per_page' ) );

