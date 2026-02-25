<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bytes_route_js_code');
delete_site_option('bytes_route_js_code');
delete_option('bytes_route_js_code_backend');
delete_site_option('bytes_route_js_code_backend');
delete_option('bytes_route_js_code_wplogin');
delete_site_option('bytes_route_js_code_wplogin');

