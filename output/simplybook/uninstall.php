<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simplybook_rest_api_notice_dismissed');
delete_site_option('simplybook_rest_api_notice_dismissed');
delete_option('simplybook_onboarding_completed');
delete_site_option('simplybook_onboarding_completed');
delete_option('simplybook_completed_step');
delete_site_option('simplybook_completed_step');
delete_option('simplybook_complete_onboarding_notice_dismissed_time');
delete_site_option('simplybook_complete_onboarding_notice_dismissed_time');
delete_option('simplybook_complete_onboarding_notice_choice');
delete_site_option('simplybook_complete_onboarding_notice_choice');
delete_option('simplybook_activation_unix_timestamp');
delete_site_option('simplybook_activation_unix_timestamp');
delete_option('simplybook_review_notice_dismissed_time');
delete_site_option('simplybook_review_notice_dismissed_time');
delete_option('simplybook_review_notice_choice');
delete_site_option('simplybook_review_notice_choice');
delete_option('simplybook_company_registration_start_time');
delete_site_option('simplybook_company_registration_start_time');
delete_option('simplybook_persistent_cache');
delete_site_option('simplybook_persistent_cache');
delete_option('simplybook_options');
delete_site_option('simplybook_options');
delete_option('_simplybook_current_version');
delete_site_option('_simplybook_current_version');
delete_option('simplybook_registration_failed');
delete_site_option('simplybook_registration_failed');
delete_option('simplybook_company_data');
delete_site_option('simplybook_company_data');
delete_option('simplybook_temporary_onboarding_data');
delete_site_option('simplybook_temporary_onboarding_data');
delete_option('simplybook_calendar_published_notification_completed');
delete_site_option('simplybook_calendar_published_notification_completed');
delete_option('simplybook_calendar_published_task_completed');
delete_site_option('simplybook_calendar_published_task_completed');
delete_option('simplybook_token_error');
delete_site_option('simplybook_token_error');
delete_option('simplybook_refresh_company_token_expiration');
delete_site_option('simplybook_refresh_company_token_expiration');
delete_option('simplybook_company_login');
delete_site_option('simplybook_company_login');
delete_option('simplybook_api_status');
delete_site_option('simplybook_api_status');
delete_option('simplybook_cached_theme_list');
delete_site_option('simplybook_cached_theme_list');
delete_option('simplybook_cached_timeline_list');
delete_site_option('simplybook_cached_timeline_list');
delete_option('simplybookMePl_widget_settings');
delete_site_option('simplybookMePl_widget_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tour_started' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tour_shown_once' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('simplybook_callback_url_expires');
delete_site_option('simplybook_callback_url_expires');
delete_option('simplybook_callback_url');
delete_site_option('simplybook_callback_url');
delete_option('simplybook_activation_flag');
delete_site_option('simplybook_activation_flag');
delete_option('simplybook_token_refresh');
delete_site_option('simplybook_token_refresh');
delete_option('simplybook_refresh_token_expiration');
delete_site_option('simplybook_refresh_token_expiration');
delete_option('simplybook_token');
delete_site_option('simplybook_token');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'simplybookMePl_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('simplybook_activation_source_page');
delete_site_option('simplybook_activation_source_page');

// Delete Transients
delete_transient('simplybook_login_url_request_count');
delete_site_transient('simplybook_login_url_request_count');
delete_transient('simplybook_login_url_first_request_time');
delete_site_transient('simplybook_login_url_first_request_time');
delete_transient('simply_book_attempt_count');
delete_site_transient('simply_book_attempt_count');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_redirect_to_settings', '_site_transient_%_redirect_to_settings' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('simplybook_daily');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );

