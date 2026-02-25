<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('herogi_api_key');
delete_site_option('herogi_api_key');
delete_option('herogi_api_secret');
delete_site_option('herogi_api_secret');
delete_option('herogi_tracking_domain');
delete_site_option('herogi_tracking_domain');
delete_option('herogi_api_url');
delete_site_option('herogi_api_url');
delete_option('herogi_push_notification_enabled');
delete_site_option('herogi_push_notification_enabled');
delete_option('herogi_location_tracking_enabled');
delete_site_option('herogi_location_tracking_enabled');
delete_option('herogi_click_tracking_enabled');
delete_site_option('herogi_click_tracking_enabled');
delete_option('herogi_pageload_tracking_enabled');
delete_site_option('herogi_pageload_tracking_enabled');
delete_option('herogi_sdk_url');
delete_site_option('herogi_sdk_url');

