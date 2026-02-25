<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('featured_blog_css');
delete_site_option('featured_blog_css');
delete_option('blogs_settings');
delete_site_option('blogs_settings');

