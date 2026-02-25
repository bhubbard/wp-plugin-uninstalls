<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('isset-video-publisher-frontpage-id');
delete_site_option('isset-video-publisher-frontpage-id');

