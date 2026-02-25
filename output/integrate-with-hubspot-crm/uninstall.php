<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('iafwhc_account_data');
delete_site_option('iafwhc_account_data');
delete_option('iafwhc_delete_data_on_uninstall');
delete_site_option('iafwhc_delete_data_on_uninstall');
delete_option('iafwhc_error_notification');
delete_site_option('iafwhc_error_notification');
delete_option('iafwhc_error_notification_email');
delete_site_option('iafwhc_error_notification_email');
delete_option('iafwhc_error_notification_subject');
delete_site_option('iafwhc_error_notification_subject');
delete_option('iafwhc_request_key');
delete_site_option('iafwhc_request_key');
delete_option('iafwhc_session_key');
delete_site_option('iafwhc_session_key');
delete_option('iafwhc_session_plan');
delete_site_option('iafwhc_session_plan');
delete_option('iafwhc_review_enabled');
delete_site_option('iafwhc_review_enabled');
delete_option('iafwhc_review_dismissed');
delete_site_option('iafwhc_review_dismissed');
delete_option('iafwhc_review_remind_me_later');
delete_site_option('iafwhc_review_remind_me_later');

// Delete Transients
delete_transient('iafwhc_account_message');
delete_site_transient('iafwhc_account_message');
delete_transient('iafwhc_error_log_success');
delete_site_transient('iafwhc_error_log_success');
delete_transient('iafwhc_error_log_fail');
delete_site_transient('iafwhc_error_log_fail');
delete_transient('iafwhc_settings_saved');
delete_site_transient('iafwhc_settings_saved');
delete_transient('iafwhc_license_fail');
delete_site_transient('iafwhc_license_fail');
delete_transient('iafwhc_license_success');
delete_site_transient('iafwhc_license_success');
delete_transient('iafwhc_setup_message');
delete_site_transient('iafwhc_setup_message');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );

