<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('host_name');
delete_site_option('host_name');
delete_option('mo_oauth_client_new_registration');
delete_site_option('mo_oauth_client_new_registration');
delete_option('mo_oauth_admin_email');
delete_site_option('mo_oauth_admin_email');
delete_option('mo_oauth_client_admin_phone');
delete_site_option('mo_oauth_client_admin_phone');
delete_option('mo_oauth_client_admin_customer_key');
delete_site_option('mo_oauth_client_admin_customer_key');
delete_option('mo_oauth_setup_wizard_app');
delete_site_option('mo_oauth_setup_wizard_app');
delete_option('mo_oauth_apps_list');
delete_site_option('mo_oauth_apps_list');
delete_option('mo_oauth_client_custom_token_endpoint_no_csecret');
delete_site_option('mo_oauth_client_custom_token_endpoint_no_csecret');
delete_option('mo_oauth_client_disable_authorization_header');
delete_site_option('mo_oauth_client_disable_authorization_header');
delete_option('mo_oauth_attr_name_list');
delete_site_option('mo_oauth_attr_name_list');
delete_option('mo_oauth_client_notice_messages');
delete_site_option('mo_oauth_client_notice_messages');
delete_option('mo_attr_option');
delete_site_option('mo_attr_option');
delete_option('mo_oauth_login_settings_option');
delete_site_option('mo_oauth_login_settings_option');
delete_option('mo_discovery_validation');
delete_site_option('mo_discovery_validation');
delete_option('mo_existing_app_flow');
delete_site_option('mo_existing_app_flow');
delete_option('mo_debug_check');
delete_site_option('mo_debug_check');
delete_option('mo_debug_enable');
delete_site_option('mo_debug_enable');
delete_option('mo_oauth_debug');
delete_site_option('mo_oauth_debug');
delete_option('mo_oauth_client_show_mo_server_message');
delete_site_option('mo_oauth_client_show_mo_server_message');
delete_option('mo_oauth_client_verify_customer');
delete_site_option('mo_oauth_client_verify_customer');
delete_option('mo_oauth_client_admin_api_key');
delete_site_option('mo_oauth_client_admin_api_key');
delete_option('mo_rest_api_plugin_adv_notice_dismissed');
delete_site_option('mo_rest_api_plugin_adv_notice_dismissed');
delete_option('mo_rest_api_plugin_adv_notice_dismissed_time');
delete_site_option('mo_rest_api_plugin_adv_notice_dismissed_time');
delete_option('mo_adv_rest_api_security_status');
delete_site_option('mo_adv_rest_api_security_status');
delete_option('message');
delete_site_option('message');
delete_option('mo_ajax_scopes_test');
delete_site_option('mo_ajax_scopes_test');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'mo_ajax_scopes_test_1_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('mo_ajax_scopes_test_2_');
delete_site_option('mo_ajax_scopes_test_2_');
delete_option('mo_ajax_scopes_test_3');
delete_site_option('mo_ajax_scopes_test_3');
delete_option('mo_ajax_scopes_test_4');
delete_site_option('mo_ajax_scopes_test_4');
delete_option('mo_ajax_scopes_test_5');
delete_site_option('mo_ajax_scopes_test_5');
delete_option('mo_oc_valid_discovery_ep');
delete_site_option('mo_oc_valid_discovery_ep');
delete_option('mo_oauth_admin_fname');
delete_site_option('mo_oauth_admin_fname');
delete_option('mo_oauth_admin_lname');
delete_site_option('mo_oauth_admin_lname');
delete_option('mo_oauth_admin_company');
delete_site_option('mo_oauth_admin_company');
delete_option('mo_debug_time');
delete_site_option('mo_debug_time');
delete_option('mo_oauth_email_verification_option_initialized');
delete_site_option('mo_oauth_email_verification_option_initialized');
delete_option('mo_oauth_icon_width');
delete_site_option('mo_oauth_icon_width');
delete_option('mo_oauth_icon_height');
delete_site_option('mo_oauth_icon_height');
delete_option('mo_oauth_icon_margin');
delete_site_option('mo_oauth_icon_margin');
delete_option('mo_oauth_icon_configure_css');
delete_site_option('mo_oauth_icon_configure_css');
delete_option('mo_oauth_client_new_customer');
delete_site_option('mo_oauth_client_new_customer');
delete_option('mo_oauth_client_customer_token');
delete_site_option('mo_oauth_client_customer_token');
delete_option('mo_oauth_client_registration_status');
delete_site_option('mo_oauth_client_registration_status');
delete_option('mo_oauth_log');
delete_site_option('mo_oauth_log');
delete_option('mo_oauth_client_show_rest_api_message');
delete_site_option('mo_oauth_client_show_rest_api_message');
delete_option('mo_oauth_demo_creds');
delete_site_option('mo_oauth_demo_creds');
delete_option('mo_oauth_message');
delete_site_option('mo_oauth_message');
delete_option('password');
delete_site_option('password');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_scope' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_client_id' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_client_secret' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('mo_oauth_authorizations');
delete_site_option('mo_oauth_authorizations');
delete_option('mo_oauth_set_val');
delete_site_option('mo_oauth_set_val');
delete_option('mo_oauth_transactionId');
delete_site_option('mo_oauth_transactionId');
delete_option('mo_oauth_activation_time');
delete_site_option('mo_oauth_activation_time');
delete_option('mo_oauth_login_icon_space');
delete_site_option('mo_oauth_login_icon_space');
delete_option('mo_oauth_login_icon_custom_width');
delete_site_option('mo_oauth_login_icon_custom_width');
delete_option('mo_oauth_login_icon_custom_height');
delete_site_option('mo_oauth_login_icon_custom_height');
delete_option('mo_oauth_login_icon_custom_size');
delete_site_option('mo_oauth_login_icon_custom_size');
delete_option('mo_oauth_login_icon_custom_color');
delete_site_option('mo_oauth_login_icon_custom_color');
delete_option('mo_oauth_login_icon_custom_boundary');
delete_site_option('mo_oauth_login_icon_custom_boundary');

// Clear Cron Jobs
wp_clear_scheduled_hook('mo_oauth_auto_delete_debug_logs');
wp_clear_scheduled_hook('check_if_wp_rest_apis_are_open');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );

