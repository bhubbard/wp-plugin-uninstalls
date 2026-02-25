<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('blog_optimize');
delete_site_option('blog_optimize');
delete_option('site_name');
delete_site_option('site_name');
delete_option('blog_optimize_wp_head');
delete_site_option('blog_optimize_wp_head');
delete_option('blog_optimize_wp_footer');
delete_site_option('blog_optimize_wp_footer');
delete_option('blog_optimize_smtp');
delete_site_option('blog_optimize_smtp');
delete_option('blog_optimize_data');
delete_site_option('blog_optimize_data');

