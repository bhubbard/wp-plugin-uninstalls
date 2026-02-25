<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_igniter_shortcode_posts');
delete_site_option('wp_igniter_shortcode_posts');
delete_option('wp_igniter_page_override');
delete_site_option('wp_igniter_page_override');
delete_option('wp_igniter_ci_path');
delete_site_option('wp_igniter_ci_path');
delete_option('wp_igniter_handle_404');
delete_site_option('wp_igniter_handle_404');
delete_option('wp_igniter_native_constants');
delete_site_option('wp_igniter_native_constants');
delete_option('wp_igniter_custom_apppath');
delete_site_option('wp_igniter_custom_apppath');
delete_option('wp_igniter_custom_sysfolder');
delete_site_option('wp_igniter_custom_sysfolder');
delete_option('wp_igniter_ci_urihook');
delete_site_option('wp_igniter_ci_urihook');

