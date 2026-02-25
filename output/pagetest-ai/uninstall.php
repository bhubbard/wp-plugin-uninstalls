<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pagetest_auth_token');
delete_site_option('pagetest_auth_token');
delete_option('pagetest_cached_script');
delete_site_option('pagetest_cached_script');
delete_option('pagetest_selected_posts');
delete_site_option('pagetest_selected_posts');
delete_option('pagetest_selected_pages');
delete_site_option('pagetest_selected_pages');

