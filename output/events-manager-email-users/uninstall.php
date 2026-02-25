<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dbem_rsvp_mail_send_method');
delete_site_option('dbem_rsvp_mail_send_method');
delete_option('em_attendee_fields_enabled');
delete_site_option('em_attendee_fields_enabled');
delete_option('dbem_mail_sender_name');
delete_site_option('dbem_mail_sender_name');
delete_option('dbem_mail_sender_address');
delete_site_option('dbem_mail_sender_address');
delete_option('dbem_smtp_host');
delete_site_option('dbem_smtp_host');
delete_option('dbem_rsvp_mail_port');
delete_site_option('dbem_rsvp_mail_port');
delete_option('dbem_smtp_username');
delete_site_option('dbem_smtp_username');
delete_option('dbem_smtp_password');
delete_site_option('dbem_smtp_password');
delete_option('dbem_smtp_html');
delete_site_option('dbem_smtp_html');
delete_option('dbem_smtp_html_br');
delete_site_option('dbem_smtp_html_br');
delete_option('dbem_rsvp_mail_SMTPAuth');
delete_site_option('dbem_rsvp_mail_SMTPAuth');
delete_option('dbem_bookings_double');
delete_site_option('dbem_bookings_double');
delete_option('dbem_bookings_currency');
delete_site_option('dbem_bookings_currency');
delete_option('dbem_data_privacy_consent_text');
delete_site_option('dbem_data_privacy_consent_text');
delete_option('stonehenge_forums');
delete_site_option('stonehenge_forums');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_license' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('em_email_users');
delete_site_option('em_email_users');
delete_option('dbem_smtp_encryption');
delete_site_option('dbem_smtp_encryption');
delete_option('dbem_smtp_autotls');
delete_site_option('dbem_smtp_autotls');

// Delete Transients
delete_transient('stonehenge_creations_plugins_feed');
delete_site_transient('stonehenge_creations_plugins_feed');

// Clear Cron Jobs
wp_clear_scheduled_hook('stonehenge_creations_licenses');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_custom_attendee_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_custom_attendee_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_custom_attendee_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_custom_attendee_form' ) );

