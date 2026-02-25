<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mailchimp_config_api_key');
delete_site_option('mailchimp_config_api_key');
delete_option('mailchimp_config_list_id');
delete_site_option('mailchimp_config_list_id');

