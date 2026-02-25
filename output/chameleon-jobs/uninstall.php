<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('thank_you_page');
delete_site_option('thank_you_page');
delete_option('jobs_page_url');
delete_site_option('jobs_page_url');
delete_option('forget_page_url');
delete_site_option('forget_page_url');
delete_option('login_page_url');
delete_site_option('login_page_url');
delete_option('register_page_url');
delete_site_option('register_page_url');
delete_option('profile_page_urll');
delete_site_option('profile_page_urll');
delete_option('jobs_search_url');
delete_site_option('jobs_search_url');

