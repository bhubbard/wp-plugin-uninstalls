<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('iafwmc_account_data');
delete_site_option('iafwmc_account_data');
delete_option('iafwmc_email_validation_keywords');
delete_site_option('iafwmc_email_validation_keywords');
delete_option('iafwmc_email_validation_handling');
delete_site_option('iafwmc_email_validation_handling');
delete_option('iafwmc_email_detection_keywords');
delete_site_option('iafwmc_email_detection_keywords');
delete_option('iafwmc_email_detection_handling');
delete_site_option('iafwmc_email_detection_handling');
delete_option('iafwmc_spam_detection_keywords');
delete_site_option('iafwmc_spam_detection_keywords');
delete_option('iafwmc_spam_detection_handling');
delete_site_option('iafwmc_spam_detection_handling');
delete_option('iafwmc_delete_data_on_uninstall');
delete_site_option('iafwmc_delete_data_on_uninstall');
delete_option('iafwmc_error_notification');
delete_site_option('iafwmc_error_notification');
delete_option('iafwmc_error_notification_email');
delete_site_option('iafwmc_error_notification_email');
delete_option('iafwmc_error_notification_subject');
delete_site_option('iafwmc_error_notification_subject');
delete_option('iafwmc_request_key');
delete_site_option('iafwmc_request_key');
delete_option('iafwmc_session_key');
delete_site_option('iafwmc_session_key');
delete_option('iafwmc_session_plan');
delete_site_option('iafwmc_session_plan');
delete_option('iafwmc_review_enabled');
delete_site_option('iafwmc_review_enabled');
delete_option('iafwmc_review_dismissed');
delete_site_option('iafwmc_review_dismissed');
delete_option('iafwmc_review_remind_me_later');
delete_site_option('iafwmc_review_remind_me_later');

// Delete Transients
delete_transient('iafwmc_account_message');
delete_site_transient('iafwmc_account_message');
delete_transient('iafwmc_error_log_success');
delete_site_transient('iafwmc_error_log_success');
delete_transient('iafwmc_error_log_fail');
delete_site_transient('iafwmc_error_log_fail');
delete_transient('iafwmc_settings_saved');
delete_site_transient('iafwmc_settings_saved');
delete_transient('iafwmc_license_fail');
delete_site_transient('iafwmc_license_fail');
delete_transient('iafwmc_license_success');
delete_site_transient('iafwmc_license_success');
delete_transient('iafwmc_setup_message');
delete_site_transient('iafwmc_setup_message');
delete_transient('iafwmc_auth_data');
delete_site_transient('iafwmc_auth_data');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );

