<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('im_boost_traffic_dismiss_message');
delete_site_option('im_boost_traffic_dismiss_message');

