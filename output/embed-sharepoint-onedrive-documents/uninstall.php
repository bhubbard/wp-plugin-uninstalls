<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mo_sps_user_email_automatic_connection');
delete_site_option('mo_sps_user_email_automatic_connection');
delete_option('mo_sps_user_upn_automatic_connection');
delete_site_option('mo_sps_user_upn_automatic_connection');
delete_option('mo_sps_user_name_automatic_connection');
delete_site_option('mo_sps_user_name_automatic_connection');
delete_option('mo_sps_admin_email');
delete_site_option('mo_sps_admin_email');
delete_option('mo_sps_admin_password');
delete_site_option('mo_sps_admin_password');
delete_option('mo_sps_admin_customer_key');
delete_site_option('mo_sps_admin_customer_key');
delete_option('mo_sps_admin_api_key');
delete_site_option('mo_sps_admin_api_key');
delete_option('mo_sps_customer_token');
delete_site_option('mo_sps_customer_token');
delete_option('mo_sps_admin_phone');
delete_site_option('mo_sps_admin_phone');
delete_option('mo_sps_verify_customer');
delete_site_option('mo_sps_verify_customer');
delete_option('mo_sps_test_connection_status');
delete_site_option('mo_sps_test_connection_status');
delete_option('mo_sps_test_connection_user_details');
delete_site_option('mo_sps_test_connection_user_details');
delete_option('mo_sps_refresh_token');
delete_site_option('mo_sps_refresh_token');
delete_option('mo_sps_auth_code');
delete_site_option('mo_sps_auth_code');
delete_option('mo_sps_registration_status');
delete_site_option('mo_sps_registration_status');
delete_option('copilot_search_data_source');
delete_site_option('copilot_search_data_source');
delete_option('mo_sps_cloud_connector');
delete_site_option('mo_sps_cloud_connector');
delete_option('mo_saml_admin_email');
delete_site_option('mo_saml_admin_email');
delete_option('mo_sps_application_config');
delete_site_option('mo_sps_application_config');
delete_option('mo_sps_feedback_config');
delete_site_option('mo_sps_feedback_config');
delete_option('mo_sps_notice_message');
delete_site_option('mo_sps_notice_message');
delete_option('mo_sps_all_sites');
delete_site_option('mo_sps_all_sites');
delete_option('mo_sps_plugin_migration_completed');
delete_site_option('mo_sps_plugin_migration_completed');

// Delete Transients
delete_transient('mo_copilot_notice_dismissed_until');
delete_site_transient('mo_copilot_notice_dismissed_until');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mo_sps_auth_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mo_sps_auth_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mo_sps_auth_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mo_sps_auth_code' ) );

