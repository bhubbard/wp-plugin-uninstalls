<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('s4rm_global_redirect_enabled');
delete_site_option('s4rm_global_redirect_enabled');
delete_option('s4rm_redirect_url');
delete_site_option('s4rm_redirect_url');
delete_option('s4rm_redirect_type');
delete_site_option('s4rm_redirect_type');
delete_option('s4rm_excluded_urls');
delete_site_option('s4rm_excluded_urls');
delete_option('s4rm_loop_threshold');
delete_site_option('s4rm_loop_threshold');

