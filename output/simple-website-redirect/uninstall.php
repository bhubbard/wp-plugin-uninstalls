<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simple_website_redirect_status');
delete_site_option('simple_website_redirect_status');
delete_option('simple_website_redirect_to_root');
delete_site_option('simple_website_redirect_to_root');
delete_option('simple_website_redirect_type');
delete_site_option('simple_website_redirect_type');
delete_option('simple_website_redirect_url');
delete_site_option('simple_website_redirect_url');
delete_option('simple_website_redirect_exclude_paths');
delete_site_option('simple_website_redirect_exclude_paths');
delete_option('simple_website_redirect_exclude_query_params');
delete_site_option('simple_website_redirect_exclude_query_params');

