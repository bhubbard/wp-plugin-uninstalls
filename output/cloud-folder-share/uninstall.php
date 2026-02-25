<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('CFS_cloud');
delete_site_option('CFS_cloud');
delete_option('CFS_height');
delete_site_option('CFS_height');
delete_option('CFS_show_as');
delete_site_option('CFS_show_as');

