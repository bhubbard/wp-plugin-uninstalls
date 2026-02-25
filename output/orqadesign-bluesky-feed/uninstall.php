<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bluesky_handle');
delete_site_option('bluesky_handle');
delete_option('bluesky_email');
delete_site_option('bluesky_email');
delete_option('bluesky_app_password');
delete_site_option('bluesky_app_password');
delete_option('bluesky_display_name');
delete_site_option('bluesky_display_name');
delete_option('bluesky_avatar_url');
delete_site_option('bluesky_avatar_url');

