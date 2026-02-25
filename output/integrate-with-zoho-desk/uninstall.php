<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('iafwzdesk_account_data');
delete_site_option('iafwzdesk_account_data');
delete_option('iafwzdesk_email_validation_keywords');
delete_site_option('iafwzdesk_email_validation_keywords');
delete_option('iafwzdesk_email_validation_handling');
delete_site_option('iafwzdesk_email_validation_handling');
delete_option('iafwzdesk_email_detection_keywords');
delete_site_option('iafwzdesk_email_detection_keywords');
delete_option('iafwzdesk_email_detection_handling');
delete_site_option('iafwzdesk_email_detection_handling');
delete_option('iafwzdesk_spam_detection_keywords');
delete_site_option('iafwzdesk_spam_detection_keywords');
delete_option('iafwzdesk_spam_detection_handling');
delete_site_option('iafwzdesk_spam_detection_handling');
delete_option('iafwzdesk_delete_data_on_uninstall');
delete_site_option('iafwzdesk_delete_data_on_uninstall');
delete_option('iafwzdesk_error_notification');
delete_site_option('iafwzdesk_error_notification');
delete_option('iafwzdesk_error_notification_email');
delete_site_option('iafwzdesk_error_notification_email');
delete_option('iafwzdesk_error_notification_subject');
delete_site_option('iafwzdesk_error_notification_subject');
delete_option('iafwzdesk_request_key');
delete_site_option('iafwzdesk_request_key');
delete_option('iafwzdesk_session_key');
delete_site_option('iafwzdesk_session_key');
delete_option('iafwzdesk_session_plan');
delete_site_option('iafwzdesk_session_plan');
delete_option('iafwzdesk_review_enabled');
delete_site_option('iafwzdesk_review_enabled');
delete_option('iafwzdesk_review_dismissed');
delete_site_option('iafwzdesk_review_dismissed');
delete_option('iafwzdesk_review_remind_me_later');
delete_site_option('iafwzdesk_review_remind_me_later');

// Delete Transients
delete_transient('iafwzdesk_account_message');
delete_site_transient('iafwzdesk_account_message');
delete_transient('iafwzdesk_error_log_success');
delete_site_transient('iafwzdesk_error_log_success');
delete_transient('iafwzdesk_error_log_fail');
delete_site_transient('iafwzdesk_error_log_fail');
delete_transient('iafwzdesk_settings_saved');
delete_site_transient('iafwzdesk_settings_saved');
delete_transient('iafwzdesk_license_fail');
delete_site_transient('iafwzdesk_license_fail');
delete_transient('iafwzdesk_license_success');
delete_site_transient('iafwzdesk_license_success');
delete_transient('iafwzdesk_setup_message');
delete_site_transient('iafwzdesk_setup_message');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );

