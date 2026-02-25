<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_to_top_bg_color');
delete_site_option('wp_to_top_bg_color');
delete_option('wp_to_top_fg_color');
delete_site_option('wp_to_top_fg_color');
delete_option('wp_to_top_scroll_duration');
delete_site_option('wp_to_top_scroll_duration');
delete_option('wp_to_top_icon_type');
delete_site_option('wp_to_top_icon_type');
delete_option('wp_to_top_icon_size');
delete_site_option('wp_to_top_icon_size');
delete_option('wp_to_top_icon_location');
delete_site_option('wp_to_top_icon_location');

