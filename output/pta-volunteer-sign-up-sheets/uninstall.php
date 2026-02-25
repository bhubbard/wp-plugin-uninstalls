<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pta_volunteer_sus_main_options');
delete_site_option('pta_volunteer_sus_main_options');
delete_option('pta_volunteer_sus_email_options');
delete_site_option('pta_volunteer_sus_email_options');
delete_option('pta_sus_last_reminders');
delete_site_option('pta_sus_last_reminders');
delete_option('pta_sus_last_reschedule_emails');
delete_site_option('pta_sus_last_reschedule_emails');
delete_option('pta_sus_rescheduled_signup_ids');
delete_site_option('pta_sus_rescheduled_signup_ids');
delete_option('pta_volunteer_sus_validation_options');
delete_site_option('pta_volunteer_sus_validation_options');
delete_option('pta_sus_reminders_last_batch');
delete_site_option('pta_sus_reminders_last_batch');
delete_option('pta_sus_reschedule_emails_last_batch');
delete_site_option('pta_sus_reschedule_emails_last_batch');
delete_option('pta_volunteer_sus_integration_options');
delete_site_option('pta_volunteer_sus_integration_options');
delete_option('pta_sus_copied_tasks');
delete_site_option('pta_sus_copied_tasks');
delete_option('pta_sus_last_log_clear');
delete_site_option('pta_sus_last_log_clear');
delete_option('pta_sus_db_version');
delete_site_option('pta_sus_db_version');
delete_option('pta_sus_hide_admin_notice');
delete_site_option('pta_sus_hide_admin_notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('pta_sus_cron_job');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pta_member_directory_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pta_member_directory_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pta_member_directory_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pta_member_directory_email' ) );

