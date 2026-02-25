<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('default_number_of_posts');
delete_site_option('default_number_of_posts');
delete_option('show_date');
delete_site_option('show_date');
delete_option('show_new_gif');
delete_site_option('show_new_gif');
delete_option('new_gif_post_count');
delete_site_option('new_gif_post_count');

