<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simple_mailchimp_subscribe_status');
delete_site_option('simple_mailchimp_subscribe_status');
delete_option('simple_mailchimp_success_message');
delete_site_option('simple_mailchimp_success_message');
delete_option('simple_mailchimp_error_message');
delete_site_option('simple_mailchimp_error_message');
delete_option('simple_mailchimp_api_key');
delete_site_option('simple_mailchimp_api_key');
delete_option('simple_mailchimp_default_list_id');
delete_site_option('simple_mailchimp_default_list_id');
delete_option('simple_mailchimp_default_list');
delete_site_option('simple_mailchimp_default_list');

