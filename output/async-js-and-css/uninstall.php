<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ajc_async_js');
delete_site_option('ajc_async_js');
delete_option('ajc_async_css');
delete_site_option('ajc_async_css');
delete_option('ajc_detect_scripts_in_wp_head');
delete_site_option('ajc_detect_scripts_in_wp_head');
delete_option('ajc_detect_scripts_in_wp_foot');
delete_site_option('ajc_detect_scripts_in_wp_foot');
delete_option('ajc_css_loading_method');
delete_site_option('ajc_css_loading_method');
delete_option('ajc_css_minify');
delete_site_option('ajc_css_minify');
delete_option('ajc_remove_GET_part');
delete_site_option('ajc_remove_GET_part');
delete_option('ajc_exceptions');
delete_site_option('ajc_exceptions');

