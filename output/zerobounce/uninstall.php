<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zerobounce_settings_validation_forms');
delete_site_option('zerobounce_settings_validation_forms');
delete_option('zerobounce_settings_validation_pass');
delete_site_option('zerobounce_settings_validation_pass');
delete_option('zerobounce_settings_did_you_mean');
delete_site_option('zerobounce_settings_did_you_mean');
delete_option('zerobounce_settings_api_zone');
delete_site_option('zerobounce_settings_api_zone');
delete_option('zerobounce_settings_api_key');
delete_site_option('zerobounce_settings_api_key');
delete_option('zerobounce_settings_api_timeout');
delete_site_option('zerobounce_settings_api_timeout');
delete_option('zerobounce_settings_error_message');
delete_site_option('zerobounce_settings_error_message');
delete_option('zerobounce_settings_did_you_mean_error');
delete_site_option('zerobounce_settings_did_you_mean_error');
delete_option('zerobounce_settings_block_free_email');
delete_site_option('zerobounce_settings_block_free_email');

