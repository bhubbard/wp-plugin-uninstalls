<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('custom_post_list_post_type');
delete_site_option('custom_post_list_post_type');
delete_option('custom_post_list_show_date');
delete_site_option('custom_post_list_show_date');
delete_option('custom_post_list_show_featured_image');
delete_site_option('custom_post_list_show_featured_image');
delete_option('custom_post_list_show_pagination');
delete_site_option('custom_post_list_show_pagination');
delete_option('custom_post_list_display_author');
delete_site_option('custom_post_list_display_author');
delete_option('custom_post_list_show_no_of_posts');
delete_site_option('custom_post_list_show_no_of_posts');

