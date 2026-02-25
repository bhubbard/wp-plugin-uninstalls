<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('reventorcab_timeslot_duration');
delete_site_option('reventorcab_timeslot_duration');
delete_option('reventorcab_booking_days_ahead');
delete_site_option('reventorcab_booking_days_ahead');
delete_option('reventorcab_theme_color');
delete_site_option('reventorcab_theme_color');
delete_option('reventorcab_timezone');
delete_site_option('reventorcab_timezone');
delete_option('reventorcab_time_format');
delete_site_option('reventorcab_time_format');
delete_option('reventorcab_date_format');
delete_site_option('reventorcab_date_format');
delete_option('reventorcab_appointment_types');
delete_site_option('reventorcab_appointment_types');
delete_option('reventorcab_caldav_url');
delete_site_option('reventorcab_caldav_url');
delete_option('reventorcab_caldav_username');
delete_site_option('reventorcab_caldav_username');
delete_option('reventorcab_caldav_password');
delete_site_option('reventorcab_caldav_password');
delete_option('reventorcab_min_booking_advance');
delete_site_option('reventorcab_min_booking_advance');
delete_option('reventorcab_working_hours_start');
delete_site_option('reventorcab_working_hours_start');
delete_option('reventorcab_working_hours_end');
delete_site_option('reventorcab_working_hours_end');
delete_option('reventorcab_break_start');
delete_site_option('reventorcab_break_start');
delete_option('reventorcab_break_end');
delete_site_option('reventorcab_break_end');
delete_option('reventorcab_working_days');
delete_site_option('reventorcab_working_days');
delete_option('reventorcab_timeslot_granularity');
delete_site_option('reventorcab_timeslot_granularity');
delete_option('reventorcab_email_sender_name');
delete_site_option('reventorcab_email_sender_name');
delete_option('reventorcab_email_sender_email');
delete_site_option('reventorcab_email_sender_email');
delete_option('reventorcab_show_credits');
delete_site_option('reventorcab_show_credits');
delete_option('reventorcab_appointment_reminder');
delete_site_option('reventorcab_appointment_reminder');
delete_option('reventorcab_plugin_activated');
delete_site_option('reventorcab_plugin_activated');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'reventorcab_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

