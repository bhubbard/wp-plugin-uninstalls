<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vrts_test_runs_has_migrated_alerts');
delete_site_option('vrts_test_runs_has_migrated_alerts');
delete_option('vrts_project_id');
delete_site_option('vrts_project_id');
delete_option('vrts_project_token');
delete_site_option('vrts_project_token');
delete_option('vrts_project_secret');
delete_site_option('vrts_project_secret');
delete_option('vrts_disconnected');
delete_site_option('vrts_disconnected');
delete_option('vrts_create_token');
delete_site_option('vrts_create_token');
delete_option('vrts_access_token');
delete_site_option('vrts_access_token');
delete_option('vrts_homepage_added');
delete_site_option('vrts_homepage_added');
delete_option('vrts_site_urls');
delete_site_option('vrts_site_urls');
delete_option('vrts_connection_inactive');
delete_site_option('vrts_connection_inactive');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('vrts_email_notification_cc_address');
delete_site_option('vrts_email_notification_cc_address');
delete_option('vrts_email_update_notification_address');
delete_site_option('vrts_email_update_notification_address');
delete_option('vrts_email_api_notification_address');
delete_site_option('vrts_email_api_notification_address');
delete_option('vrts_email_notification_address');
delete_site_option('vrts_email_notification_address');
delete_option('vrts_license_success');
delete_site_option('vrts_license_success');
delete_option('vrts_license_failed');
delete_site_option('vrts_license_failed');
delete_option('vrts_remaining_tests');
delete_site_option('vrts_remaining_tests');
delete_option('vrts_total_tests');
delete_site_option('vrts_total_tests');
delete_option('vrts_has_subscription');
delete_site_option('vrts_has_subscription');
delete_option('vrts_tier_id');
delete_site_option('vrts_tier_id');
delete_option('vrts_email_manual_notification_address');
delete_site_option('vrts_email_manual_notification_address');
delete_option('vrts_click_selectors');
delete_site_option('vrts_click_selectors');
delete_option('vrts_license_key');
delete_site_option('vrts_license_key');
delete_option('vrts_automatic_comparison');
delete_site_option('vrts_automatic_comparison');
delete_option('vrts_updates_comparison');
delete_site_option('vrts_updates_comparison');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_db_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('vrts_fetch_updates_cron');
wp_clear_scheduled_hook('vrts_connection_check_cron');
wp_clear_scheduled_hook('vrts_fetch_test_updates');
wp_clear_scheduled_hook('vrts_fetch_test_run_updates');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'vrts_onboarding' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'vrts_onboarding' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'vrts_onboarding' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'vrts_onboarding' ) );

