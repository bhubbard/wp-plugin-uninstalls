<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('static_minify_css');
delete_site_option('static_minify_css');
delete_option('static_critical_enable');
delete_site_option('static_critical_enable');
delete_option('static_exclude_css');
delete_site_option('static_exclude_css');
delete_option('static_critical_css');
delete_site_option('static_critical_css');
delete_option('static_minify_js');
delete_site_option('static_minify_js');
delete_option('static_exclude_js');
delete_site_option('static_exclude_js');
delete_option('static_minify_html');
delete_site_option('static_minify_html');
delete_option('wp_static_page');
delete_site_option('wp_static_page');
delete_option('static_directory');
delete_site_option('static_directory');
delete_option('wp_static_version');
delete_site_option('wp_static_version');
delete_option('static_page_field');
delete_site_option('static_page_field');
delete_option('static_exclude_url');
delete_site_option('static_exclude_url');

