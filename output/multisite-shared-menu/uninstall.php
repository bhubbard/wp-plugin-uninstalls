<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mfs_override_site_id');
delete_site_option('mfs_override_site_id');
delete_option('mfs_override_menu_location');
delete_site_option('mfs_override_menu_location');

