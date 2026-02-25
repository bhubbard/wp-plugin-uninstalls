<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mo_sf_sync_admin_email');
delete_site_option('mo_sf_sync_admin_email');
delete_option('mo_sf_sync_admin_password');
delete_site_option('mo_sf_sync_admin_password');
delete_option('mo_sf_sync_admin_customer_key');
delete_site_option('mo_sf_sync_admin_customer_key');
delete_option('mo_sf_sync_admin_api_key');
delete_site_option('mo_sf_sync_admin_api_key');
delete_option('mo_sf_sync_customer_token');
delete_site_option('mo_sf_sync_customer_token');
delete_option('mo_sf_sync_admin_phone');
delete_site_option('mo_sf_sync_admin_phone');
delete_option('mo_sf_sync_registration_status');
delete_site_option('mo_sf_sync_registration_status');
delete_option('mo_sf_sync_verify_customer');
delete_site_option('mo_sf_sync_verify_customer');
delete_option('mo_sf_sync_free_version');
delete_site_option('mo_sf_sync_free_version');
delete_option('mo_sf_sync_config');
delete_site_option('mo_sf_sync_config');
delete_option('mo_sf_sync_advanced_search_username');
delete_site_option('mo_sf_sync_advanced_search_username');
delete_option('mo_sf_sync_advanced_search_action');
delete_site_option('mo_sf_sync_advanced_search_action');
delete_option('mo_sf_sync_advanced_search_direction');
delete_site_option('mo_sf_sync_advanced_search_direction');
delete_option('mo_sf_sync_advanced_search_status');
delete_site_option('mo_sf_sync_advanced_search_status');
delete_option('mo_sf_sync_advanced_search_from_date');
delete_site_option('mo_sf_sync_advanced_search_from_date');
delete_option('mo_sf_sync_advanced_search_to_date');
delete_site_option('mo_sf_sync_advanced_search_to_date');
delete_option('mo_sf_sync_keep_settings_on_deletion');
delete_site_option('mo_sf_sync_keep_settings_on_deletion');
delete_option('mo_sf_sync_advanced_reports');
delete_site_option('mo_sf_sync_advanced_reports');
delete_option('vl_check_t');
delete_site_option('vl_check_t');
delete_option('vl_check_s');
delete_site_option('vl_check_s');

// Delete Transients
delete_transient('mo_sf_sync_integration_trial_notice_dismiss_time');
delete_site_transient('mo_sf_sync_integration_trial_notice_dismiss_time');
delete_transient('mo_sf_sync_normal_trial_notice_dismiss_time');
delete_site_transient('mo_sf_sync_normal_trial_notice_dismiss_time');
delete_transient('mo_sf_sync_made_integration_trial_request');
delete_site_transient('mo_sf_sync_made_integration_trial_request');
delete_transient('mo_sf_sync_plugin_activated');
delete_site_transient('mo_sf_sync_plugin_activated');
delete_transient('mo_sf_sync_made_trial_request');
delete_site_transient('mo_sf_sync_made_trial_request');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_ID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_ID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_ID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_ID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'salesforce_ID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'salesforce_ID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'salesforce_ID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'salesforce_ID' ) );

