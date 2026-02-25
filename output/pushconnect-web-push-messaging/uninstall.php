<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pushconnect_status');
delete_site_option('pushconnect_status');
delete_option('pushconnect_api_key');
delete_site_option('pushconnect_api_key');
delete_option('pushconnect_notify_posts');
delete_site_option('pushconnect_notify_posts');
delete_option('pushconnect_javascript_location');
delete_site_option('pushconnect_javascript_location');

