<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cf7au_api_fields_mapping');
delete_site_option('cf7au_api_fields_mapping');
delete_option('cf7au_api_enable');
delete_site_option('cf7au_api_enable');
delete_option('cf7au_api_url');
delete_site_option('cf7au_api_url');
delete_option('cf7au_authorization_code');
delete_site_option('cf7au_authorization_code');
delete_option('cf7au_client_id');
delete_site_option('cf7au_client_id');
delete_option('cf7au_client_secret');
delete_site_option('cf7au_client_secret');
delete_option('cf7au_authorization_key');
delete_site_option('cf7au_authorization_key');
delete_option('cf7au_log_enable');
delete_site_option('cf7au_log_enable');
delete_option('cf7au_send_direct');
delete_site_option('cf7au_send_direct');
delete_option('cf7au_aurastride_api_refresh_token');
delete_site_option('cf7au_aurastride_api_refresh_token');
delete_option('cf7au_aurastride_api_access_token');
delete_site_option('cf7au_aurastride_api_access_token');
delete_option('cf7au_aurastride_api_expiry_time');
delete_site_option('cf7au_aurastride_api_expiry_time');

// Clear Cron Jobs
wp_clear_scheduled_hook('cf7au_aurastride_crm_api_enquiry_submission');
wp_clear_scheduled_hook('cf7au_aurastride_crm_form_api_enquiry_submission');

