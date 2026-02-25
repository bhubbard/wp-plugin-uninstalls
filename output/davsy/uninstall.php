<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('davsy_api_key');
delete_site_option('davsy_api_key');
delete_option('wp_davsy_widget_enabled');
delete_site_option('wp_davsy_widget_enabled');
delete_option('davsy_header_title');
delete_site_option('davsy_header_title');
delete_option('davsy_no_post');
delete_site_option('davsy_no_post');
delete_option('wp_davsy');
delete_site_option('wp_davsy');

