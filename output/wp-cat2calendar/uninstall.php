<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_cat2cal_use_permalinks');
delete_site_option('wp_cat2cal_use_permalinks');
delete_option('wp_cat2cal_use_default_css');
delete_site_option('wp_cat2cal_use_default_css');
delete_option('wp_cat2cal_show_future_posts');
delete_site_option('wp_cat2cal_show_future_posts');

