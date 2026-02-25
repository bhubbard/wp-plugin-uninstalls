<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lacrm_user_code');
delete_site_option('lacrm_user_code');
delete_option('lacrm_api_token');
delete_site_option('lacrm_api_token');
delete_option('lacrm_verify_token');
delete_site_option('lacrm_verify_token');
delete_option('lacrm_info');
delete_site_option('lacrm_info');

