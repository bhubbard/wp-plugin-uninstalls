<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('iaud_days_active');
delete_site_option('iaud_days_active');
delete_option('iaud_reassign_user');
delete_site_option('iaud_reassign_user');
delete_option('iaud_warning_days_first');
delete_site_option('iaud_warning_days_first');
delete_option('iaud_warning_days_final');
delete_site_option('iaud_warning_days_final');
delete_option('iaud_email_subject_first');
delete_site_option('iaud_email_subject_first');
delete_option('iaud_email_message_first');
delete_site_option('iaud_email_message_first');
delete_option('iaud_email_subject_final');
delete_site_option('iaud_email_subject_final');
delete_option('iaud_email_message_final');
delete_site_option('iaud_email_message_final');
delete_option('iaud_disable_emails');
delete_site_option('iaud_disable_emails');

// Clear Cron Jobs
wp_clear_scheduled_hook('iaud_inactive_user_deletion_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'iaud_first_warning_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'iaud_first_warning_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'iaud_first_warning_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'iaud_first_warning_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'iaud_final_warning_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'iaud_final_warning_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'iaud_final_warning_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'iaud_final_warning_sent' ) );

