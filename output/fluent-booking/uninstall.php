<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fluent_booking_db_version');
delete_site_option('fluent_booking_db_version');
delete_option('_fluent_booking_settings');
delete_site_option('_fluent_booking_settings');
delete_option('fluent_booking_payment_settings_stripe');
delete_site_option('fluent_booking_payment_settings_stripe');
delete_option('fluent_booking_global_payment_settings');
delete_site_option('fluent_booking_global_payment_settings');
delete_option('fluent_booking_modules');
delete_site_option('fluent_booking_modules');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fluent_booking_payment_settings_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fluentmail-settings');
delete_site_option('fluentmail-settings');
delete_option('_fluent_booking_enabled_modules');
delete_site_option('_fluent_booking_enabled_modules');
delete_option('_fb_ins_by');
delete_site_option('_fb_ins_by');
delete_option('fcom_last_summary_email_send');
delete_site_option('fcom_last_summary_email_send');
delete_option('siteUrl');
delete_site_option('siteUrl');

// Delete Transients
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

// Clear Cron Jobs
wp_clear_scheduled_hook('fluent_booking_five_minutes_tasks');
wp_clear_scheduled_hook('fluent_booking_hourly_tasks');
wp_clear_scheduled_hook('fluent_booking/daily_tasks');

