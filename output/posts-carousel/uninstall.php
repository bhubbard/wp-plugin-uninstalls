<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active');
delete_site_option('active');
delete_option('show_in');
delete_site_option('show_in');
delete_option('posts_number');
delete_site_option('posts_number');
delete_option('Slider_Height');
delete_site_option('Slider_Height');
delete_option('wporg');
delete_site_option('wporg');
delete_option('Height_Type');
delete_site_option('Height_Type');
delete_option('medium_large_size_w');
delete_site_option('medium_large_size_w');
delete_option('pager');
delete_site_option('pager');
delete_option('interval');
delete_site_option('interval');
delete_option('hover');
delete_site_option('hover');
delete_option('next_prev');
delete_site_option('next_prev');

