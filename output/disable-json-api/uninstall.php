<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('disable_rest_api_options');
delete_site_option('disable_rest_api_options');
delete_option('DRA_route_whitelist');
delete_site_option('DRA_route_whitelist');

