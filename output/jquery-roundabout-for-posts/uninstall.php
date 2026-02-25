<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wprabt_show_posts');
delete_site_option('wprabt_show_posts');
delete_option('wprabt_post_category');
delete_site_option('wprabt_post_category');
delete_option('wprabt_order_posts');
delete_site_option('wprabt_order_posts');
delete_option('wprabt_slider_mode');
delete_site_option('wprabt_slider_mode');
delete_option('wprabt_post_link');
delete_site_option('wprabt_post_link');
delete_option('wprabt_img_width');
delete_site_option('wprabt_img_width');
delete_option('wprabt_img_height');
delete_site_option('wprabt_img_height');

