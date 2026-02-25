<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plrrtc_smallest_size');
delete_site_option('plrrtc_smallest_size');
delete_option('plrrtc_largest_size');
delete_site_option('plrrtc_largest_size');

