<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('afs_pixels');
delete_site_option('afs_pixels');
delete_option('afs_clicks');
delete_site_option('afs_clicks');

