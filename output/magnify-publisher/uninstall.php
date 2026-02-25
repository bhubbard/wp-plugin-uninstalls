<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('magnify_publisher_channel_name');
delete_site_option('magnify_publisher_channel_name');

