<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mo_jwt_demo_creds');
delete_site_option('mo_jwt_demo_creds');
delete_option('mo_jwt_admin_email');
delete_site_option('mo_jwt_admin_email');
delete_option('mo_jwt_config_settings');
delete_site_option('mo_jwt_config_settings');
delete_option('mo_jwt_host_name');
delete_site_option('mo_jwt_host_name');
delete_option('mo_jwt_admin_phone');
delete_site_option('mo_jwt_admin_phone');
delete_option('mo_verify_customer');
delete_site_option('mo_verify_customer');
delete_option('mo_jwt_admin_customer_key');
delete_site_option('mo_jwt_admin_customer_key');
delete_option('mo_jwt_admin_api_key');
delete_site_option('mo_jwt_admin_api_key');
delete_option('mo_jwt_customer_token');
delete_site_option('mo_jwt_customer_token');
delete_option('mo_jwt_new_customer');
delete_site_option('mo_jwt_new_customer');
delete_option('message');
delete_site_option('message');
delete_option('mo_jwt_new_registration');
delete_site_option('mo_jwt_new_registration');
delete_option('mo_jwt_registration_status');
delete_site_option('mo_jwt_registration_status');

