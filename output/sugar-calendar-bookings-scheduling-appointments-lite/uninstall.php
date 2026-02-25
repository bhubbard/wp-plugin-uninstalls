<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sugar_calendar_bookings_initial_version');
delete_site_option('sugar_calendar_bookings_initial_version');
delete_option('sugar_calendar_bookings_initial_activation_time');
delete_site_option('sugar_calendar_bookings_initial_activation_time');
delete_option('wp_mail_smtp_activation_prevent_redirect');
delete_site_option('wp_mail_smtp_activation_prevent_redirect');
delete_option('sugar_calendar_bookings_admin_notices');
delete_site_option('sugar_calendar_bookings_admin_notices');
delete_option('sugar_calendar_bookings_connect_token');
delete_site_option('sugar_calendar_bookings_connect_token');
delete_option('sugar_calendar_bookings_connect');
delete_site_option('sugar_calendar_bookings_connect');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
delete_transient('scb_just_activated');
delete_site_transient('scb_just_activated');
delete_transient('scbookings_lite_just_activated');
delete_site_transient('scbookings_lite_just_activated');
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

// Clear Cron Jobs
wp_clear_scheduled_hook('sugar_calendar_bookings_hourly_reminder_check');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sugar_calendar_bookings_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sugar_calendar_bookings_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sugar_calendar_bookings_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sugar_calendar_bookings_admin_notices' ) );

