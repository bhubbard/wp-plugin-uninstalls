<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('clone_posts_post_status');
delete_site_option('clone_posts_post_status');
delete_option('clone_posts_post_date');
delete_site_option('clone_posts_post_date');
delete_option('clone_posts_post_type');
delete_site_option('clone_posts_post_type');

