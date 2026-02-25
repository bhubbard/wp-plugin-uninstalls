<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mo_api_auth_message');
delete_site_option('mo_api_auth_message');
delete_option('mo_api_authentication_protectedrestapi_route_whitelist');
delete_site_option('mo_api_authentication_protectedrestapi_route_whitelist');
delete_option('mo_api_authentication_unprotectedrestapi_route');
delete_site_option('mo_api_authentication_unprotectedrestapi_route');
delete_option('mo_rest_api_ajax_method_data');
delete_site_option('mo_rest_api_ajax_method_data');
delete_option('mo_api_authentication_new_registration');
delete_site_option('mo_api_authentication_new_registration');
delete_option('mo_api_authentication_admin_email');
delete_site_option('mo_api_authentication_admin_email');
delete_option('mo_api_authentication_admin_phone');
delete_site_option('mo_api_authentication_admin_phone');
delete_option('mo_api_authentication_admin_fname');
delete_site_option('mo_api_authentication_admin_fname');
delete_option('mo_api_authentication_admin_lname');
delete_site_option('mo_api_authentication_admin_lname');
delete_option('mo_api_authentication_admin_company');
delete_site_option('mo_api_authentication_admin_company');
delete_option('mo_api_authentication_verify_customer');
delete_site_option('mo_api_authentication_verify_customer');
delete_option('mo_api_authentication_admin_customer_key');
delete_site_option('mo_api_authentication_admin_customer_key');
delete_option('mo_api_authentication_admin_api_key');
delete_site_option('mo_api_authentication_admin_api_key');
delete_option('mo_api_authentication_new_customer');
delete_site_option('mo_api_authentication_new_customer');
delete_option('mo_api_authentication_registration_status');
delete_site_option('mo_api_authentication_registration_status');
delete_option('mo_api_authentication_customer_token');
delete_site_option('mo_api_authentication_customer_token');
delete_option('mo_api_auth_message_flag');
delete_site_option('mo_api_auth_message_flag');
delete_option('password');
delete_site_option('password');
delete_option('message');
delete_site_option('message');
delete_option('host_name');
delete_site_option('host_name');
delete_option('mo_api_authentication_last_requested_api');
delete_site_option('mo_api_authentication_last_requested_api');
delete_option('mo_api_authentication_current_plugin_version');
delete_site_option('mo_api_authentication_current_plugin_version');
delete_option('mo_api_authentication_init_protected_apis');
delete_site_option('mo_api_authentication_init_protected_apis');
delete_option('mo_rest_api_protect_migrate');
delete_site_option('mo_rest_api_protect_migrate');
delete_option('api_access_counters');
delete_site_option('api_access_counters');
delete_option('mo_save_settings');
delete_site_option('mo_save_settings');
delete_option('mo_api_authentication_email');
delete_site_option('mo_api_authentication_email');
delete_option('mo_api_authentication_selected_authentication_method');
delete_site_option('mo_api_authentication_selected_authentication_method');
delete_option('mo_api_authentication_authentication_key');
delete_site_option('mo_api_authentication_authentication_key');
delete_option('mo_api_auth_clientid');
delete_site_option('mo_api_auth_clientid');
delete_option('mo_api_auth_clientsecret');
delete_site_option('mo_api_auth_clientsecret');
delete_option('mo_api_authentication_jwt_signing_algorithm');
delete_site_option('mo_api_authentication_jwt_signing_algorithm');
delete_option('mo_api_authentication_jwt_client_secret');
delete_site_option('mo_api_authentication_jwt_client_secret');
delete_option('mo_api_auth_bearer_token');
delete_site_option('mo_api_auth_bearer_token');
delete_option('mo_api_auth_clientid ');
delete_site_option('mo_api_auth_clientid ');
delete_option('mo_api_authentication_config_settings_tokenapi');
delete_site_option('mo_api_authentication_config_settings_tokenapi');
delete_option('mo_api_authentication_config_settings_basic_auth');
delete_site_option('mo_api_authentication_config_settings_basic_auth');
delete_option('mo_api_authentication_config_settings_jwt_auth');
delete_site_option('mo_api_authentication_config_settings_jwt_auth');
delete_option('mo_api_auth_bearer_token ');
delete_site_option('mo_api_auth_bearer_token ');
delete_option('mo_api_auth_summary_box_close_time');
delete_site_option('mo_api_auth_summary_box_close_time');
delete_option('mo_api_authentication_old_plugin_version');
delete_site_option('mo_api_authentication_old_plugin_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('mo_api_auth_daily_cron_hook');
wp_clear_scheduled_hook('mo_api_display_the_popup');

