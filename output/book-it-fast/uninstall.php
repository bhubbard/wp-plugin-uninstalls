<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bookitfast_api_url');
delete_site_option('bookitfast_api_url');
delete_option('bookitfast_currency');
delete_site_option('bookitfast_currency');
delete_option('bookitfast_api_token');
delete_site_option('bookitfast_api_token');
delete_option('bookitfast_settings');
delete_site_option('bookitfast_settings');
delete_option('bookitfast_api_key');
delete_site_option('bookitfast_api_key');
delete_option('bookitfast_endpoint');
delete_site_option('bookitfast_endpoint');

// Delete Transients
delete_transient('bookitfast_login_reload');
delete_site_transient('bookitfast_login_reload');

