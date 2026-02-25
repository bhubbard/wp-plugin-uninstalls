<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cf7-smtp-options');
delete_site_option('cf7-smtp-options');
delete_option('cf7-smtp-report');
delete_site_option('cf7-smtp-report');

// Delete Transients
delete_transient('cf7_smtp_testing');
delete_site_transient('cf7_smtp_testing');
delete_transient('cf7_smtp_testing_error');
delete_site_transient('cf7_smtp_testing_error');
delete_transient('cf7_smtp_testing_log');
delete_site_transient('cf7_smtp_testing_log');

// Clear Cron Jobs
wp_clear_scheduled_hook('cf7_smtp_report');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cf7_smtp_hide_welcome_panel_on' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cf7_smtp_hide_welcome_panel_on' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cf7_smtp_hide_welcome_panel_on' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cf7_smtp_hide_welcome_panel_on' ) );

