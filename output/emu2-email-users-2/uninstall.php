<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('EMU2_build');
delete_site_option('EMU2_build');
delete_option('EMU2_mail_function');
delete_site_option('EMU2_mail_function');
delete_option('EMU2_debug');
delete_site_option('EMU2_debug');
delete_option('EMU2_schedule_time');
delete_site_option('EMU2_schedule_time');
delete_option('EMU2_double_place');
delete_site_option('EMU2_double_place');
delete_option('EMU2_default_schedule_subject');
delete_site_option('EMU2_default_schedule_subject');
delete_option('EMU2_default_schedule_body');
delete_site_option('EMU2_default_schedule_body');
delete_option('EMU2_version');
delete_site_option('EMU2_version');
delete_option('EMU2_default_subject');
delete_site_option('EMU2_default_subject');
delete_option('EMU2_default_body');
delete_site_option('EMU2_default_body');
delete_option('EMU2_default_mail_format');
delete_site_option('EMU2_default_mail_format');
delete_option('EMU2_max_bcc_recipients');
delete_site_option('EMU2_max_bcc_recipients');
delete_option('EMU2_sender_name');
delete_site_option('EMU2_sender_name');
delete_option('EMU2_sender_address');
delete_site_option('EMU2_sender_address');
delete_option('EMU2_check');
delete_site_option('EMU2_check');

// Clear Cron Jobs
wp_clear_scheduled_hook('EMU2_task_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'EMU2_ACCEPT_NOTIFICATION_USER_META' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'EMU2_ACCEPT_NOTIFICATION_USER_META' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'EMU2_ACCEPT_NOTIFICATION_USER_META' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'EMU2_ACCEPT_NOTIFICATION_USER_META' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'EMU2_ACCEPT_MASS_EMAIL_USER_META' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'EMU2_ACCEPT_MASS_EMAIL_USER_META' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'EMU2_ACCEPT_MASS_EMAIL_USER_META' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'EMU2_ACCEPT_MASS_EMAIL_USER_META' ) );

