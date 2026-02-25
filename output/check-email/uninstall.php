<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('check-email-smtp-options');
delete_site_option('check-email-smtp-options');
delete_option('check_email_smtp_status');
delete_site_option('check_email_smtp_status');
delete_option('check-email-email-encode-options');
delete_site_option('check-email-email-encode-options');
delete_option('checkmail_admin_fcm_token');
delete_site_option('checkmail_admin_fcm_token');
delete_option('check-email-email-notify-options');
delete_site_option('check-email-email-notify-options');
delete_option('check-email-log-global-smtp');
delete_site_option('check-email-log-global-smtp');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-options' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('check-email-log-core');
delete_site_option('check-email-log-core');
delete_option('check-email-rate-time');
delete_site_option('check-email-rate-time');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'check_email_spam_score_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('check_email_e_filter_priority');
delete_site_option('check_email_e_filter_priority');
delete_option('check-email-log-db');
delete_site_option('check-email-log-db');

// Clear Cron Jobs
wp_clear_scheduled_hook('check_mail_cron_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );

