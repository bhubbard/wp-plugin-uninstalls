<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_app_json_secrets');
delete_site_option('wp_app_json_secrets');
delete_option('wp_app_json_postcount');
delete_site_option('wp_app_json_postcount');
delete_option('wp_app_json_thumburl');
delete_site_option('wp_app_json_thumburl');
delete_option('wp_app_json_header');
delete_site_option('wp_app_json_header');
delete_option('wp_app_json_banner');
delete_site_option('wp_app_json_banner');
delete_option('wp_app_json_footer');
delete_site_option('wp_app_json_footer');

