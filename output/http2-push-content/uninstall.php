<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('http2_push_general_list');
delete_site_option('http2_push_general_list');
delete_option('http2_async_js_list');
delete_site_option('http2_async_js_list');
delete_option('http2_async_css_list');
delete_site_option('http2_async_css_list');
delete_option('push_all_style');
delete_site_option('push_all_style');
delete_option('push_all_script');
delete_site_option('push_all_script');

