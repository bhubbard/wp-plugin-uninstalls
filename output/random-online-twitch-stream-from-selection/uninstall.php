<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('twitch-stream-options');
delete_site_option('twitch-stream-options');
delete_option('twitch-wall-notice-dismissed');
delete_site_option('twitch-wall-notice-dismissed');

