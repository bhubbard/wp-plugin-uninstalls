<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'autormlite_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('autormlite_minute');
delete_site_option('autormlite_minute');
delete_option('autormlite_hour');
delete_site_option('autormlite_hour');
delete_option('autormlite_day');
delete_site_option('autormlite_day');
delete_option('autormlite_month');
delete_site_option('autormlite_month');
delete_option('autormlite_weekday');
delete_site_option('autormlite_weekday');
delete_option('autormlite_days_total');
delete_site_option('autormlite_days_total');
delete_option('autormlite_days_before');
delete_site_option('autormlite_days_before');
delete_option('autormlite_load_jquery');
delete_site_option('autormlite_load_jquery');
delete_option('autormlite_reminder_send_method');
delete_site_option('autormlite_reminder_send_method');
delete_option('autormlite_delete_data_on_uninstall');
delete_site_option('autormlite_delete_data_on_uninstall');
delete_option('autormlite_text_email');
delete_site_option('autormlite_text_email');
delete_option('autormlite_subject_email');
delete_site_option('autormlite_subject_email');
delete_option('autormlite_text_sms');
delete_site_option('autormlite_text_sms');
delete_option('limoo_selected_gateway');
delete_site_option('limoo_selected_gateway');
delete_option('limoo_gateway_api_key');
delete_site_option('limoo_gateway_api_key');
delete_option('limoo_gateway_sender');
delete_site_option('limoo_gateway_sender');
delete_option('autormlite_email_cron_minute');
delete_site_option('autormlite_email_cron_minute');
delete_option('autormlite_email_cron_hour');
delete_site_option('autormlite_email_cron_hour');
delete_option('autormlite_email_cron_day');
delete_site_option('autormlite_email_cron_day');
delete_option('autormlite_email_cron_month');
delete_site_option('autormlite_email_cron_month');
delete_option('autormlite_email_cron_weekday');
delete_site_option('autormlite_email_cron_weekday');
delete_option('autormlite_send_method');
delete_site_option('autormlite_send_method');
delete_option('autormlite_last_email_report');
delete_site_option('autormlite_last_email_report');
delete_option('autormlite_last_sms_report');
delete_site_option('autormlite_last_sms_report');

// Delete Transients
delete_transient('autormlite_reminders_lite_cache');
delete_site_transient('autormlite_reminders_lite_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('autormlite_custom_email_cron_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'phone_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'phone_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'phone_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'phone_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'first_purchase' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'first_purchase' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'first_purchase' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'first_purchase' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_email_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_email_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_email_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_email_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'allow_notifications' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'allow_notifications' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'allow_notifications' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'allow_notifications' ) );

