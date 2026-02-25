<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cansin_url_redirect_client_Address');
delete_site_option('cansin_url_redirect_client_Address');
delete_option('cansin_url_redirect_host_api_secret');
delete_site_option('cansin_url_redirect_host_api_secret');
delete_option('cansin_url_redirect_role');
delete_site_option('cansin_url_redirect_role');
delete_option('cansin_url_redirect_client_api_secret');
delete_site_option('cansin_url_redirect_client_api_secret');
delete_option('cansin_url_redirect_list');
delete_site_option('cansin_url_redirect_list');
delete_option('cansin_url_redirect_host_Address');
delete_site_option('cansin_url_redirect_host_Address');

