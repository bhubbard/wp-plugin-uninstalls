<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_gt4sq_feed_url');
delete_site_option('wp_gt4sq_feed_url');
delete_option('wp_gt4sq_feed_count');
delete_site_option('wp_gt4sq_feed_count');
delete_option('wp_gt4sq_map_enable');
delete_site_option('wp_gt4sq_map_enable');
delete_option('wp_gt4sq_list_enable');
delete_site_option('wp_gt4sq_list_enable');
delete_option('wp_gt4sq_icon');
delete_site_option('wp_gt4sq_icon');
delete_option('wp_gt4sq_height');
delete_site_option('wp_gt4sq_height');
delete_option('wp_gt4sq_width');
delete_site_option('wp_gt4sq_width');
delete_option('wp_gt4sq_widget_map_enable');
delete_site_option('wp_gt4sq_widget_map_enable');
delete_option('wp_gt4sq_widget_list_enable');
delete_site_option('wp_gt4sq_widget_list_enable');
delete_option('wp_gt4sq_widget_title');
delete_site_option('wp_gt4sq_widget_title');
delete_option('wp_gt4sq_widget_width');
delete_site_option('wp_gt4sq_widget_width');
delete_option('wp_gt4sq_widget_height');
delete_site_option('wp_gt4sq_widget_height');

