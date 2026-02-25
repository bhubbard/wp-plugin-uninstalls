<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('doobert_api_token_value');
delete_site_option('doobert_api_token_value');
delete_option('doobert_validation_data');
delete_site_option('doobert_validation_data');
delete_option('_doobert_token_value');
delete_site_option('_doobert_token_value');
delete_option('doobert-chatbot-custom-settings');
delete_site_option('doobert-chatbot-custom-settings');
delete_option('doobert-chatbot-petclove-settings');
delete_site_option('doobert-chatbot-petclove-settings');
delete_option('doobert-chatbot-adopt-settings');
delete_site_option('doobert-chatbot-adopt-settings');
delete_option('doobert_is_training_data_loaded');
delete_site_option('doobert_is_training_data_loaded');
delete_option('_doobert_excluded_posts_from_api');
delete_site_option('_doobert_excluded_posts_from_api');
delete_option('doobert_audit_email');
delete_site_option('doobert_audit_email');
delete_option('_doobert_token_time_stamp');
delete_site_option('_doobert_token_time_stamp');
delete_option('_doobert_chatbot_design_settings');
delete_site_option('_doobert_chatbot_design_settings');

// Delete Transients
delete_transient('token');
delete_site_transient('token');

// Clear Cron Jobs
wp_clear_scheduled_hook('custom_scrape_doobert_data');
wp_clear_scheduled_hook('doobertbottest_daily_cron_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_doobert_filename_pdf' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_doobert_filename_pdf' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_doobert_filename_pdf' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_doobert_filename_pdf' ) );

