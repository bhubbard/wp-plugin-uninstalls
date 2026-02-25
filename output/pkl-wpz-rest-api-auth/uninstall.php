<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pkl_wpz_rest_api_auth_enable');
delete_site_option('pkl_wpz_rest_api_auth_enable');
delete_option('pkl_wpz_rest_api_auth_allow_root_endpoint');
delete_site_option('pkl_wpz_rest_api_auth_allow_root_endpoint');
delete_option('pkl_wpz_rest_api_auth_allow_pages');
delete_site_option('pkl_wpz_rest_api_auth_allow_pages');
delete_option('pkl_wpz_rest_api_auth_allow_posts');
delete_site_option('pkl_wpz_rest_api_auth_allow_posts');

