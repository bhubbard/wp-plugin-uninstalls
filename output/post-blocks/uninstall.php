<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('widget_post_blocks');
delete_site_option('widget_post_blocks');
delete_option('post_blocks_css');
delete_site_option('post_blocks_css');
delete_option('post_blocks_remove_css');
delete_site_option('post_blocks_remove_css');
delete_option('post_blocks_future_posts');
delete_site_option('post_blocks_future_posts');
delete_option('post_blocks_date_one');
delete_site_option('post_blocks_date_one');
delete_option('post_blocks_date_one_inactive');
delete_site_option('post_blocks_date_one_inactive');
delete_option('post_blocks_date_two');
delete_site_option('post_blocks_date_two');
delete_option('post_blocks_date_two_inactive');
delete_site_option('post_blocks_date_two_inactive');

