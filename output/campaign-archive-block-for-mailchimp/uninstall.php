<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cabfm_api_key');
delete_site_option('cabfm_api_key');
delete_option('cabfm_server_prefix');
delete_site_option('cabfm_server_prefix');
delete_option('cabfm_api_credentials_validation_result');
delete_site_option('cabfm_api_credentials_validation_result');
delete_option('cabfm_api_credentials_validation_message');
delete_site_option('cabfm_api_credentials_validation_message');
delete_option('cabfm_api_credentials_account_name');
delete_site_option('cabfm_api_credentials_account_name');
delete_option('mc_api_key');
delete_site_option('mc_api_key');
delete_option('mailchimp-woocommerce');
delete_site_option('mailchimp-woocommerce');

