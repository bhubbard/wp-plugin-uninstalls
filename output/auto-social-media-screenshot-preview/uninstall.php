<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wh_api_token');
delete_site_option('wh_api_token');
delete_option('wh_api_secret');
delete_site_option('wh_api_secret');
delete_option('wh_screenshot_ttl');
delete_site_option('wh_screenshot_ttl');
delete_option('wh_screenshot_delay');
delete_site_option('wh_screenshot_delay');

