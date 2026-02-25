<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_stickit_class_name');
delete_site_option('wp_stickit_class_name');
delete_option('wp_stickit_top');
delete_site_option('wp_stickit_top');
delete_option('wp_stickit_zindex');
delete_site_option('wp_stickit_zindex');
delete_option('wp_stickit_screen_min_width');
delete_site_option('wp_stickit_screen_min_width');
delete_option('wp_stickit_screen_max_width');
delete_site_option('wp_stickit_screen_max_width');

