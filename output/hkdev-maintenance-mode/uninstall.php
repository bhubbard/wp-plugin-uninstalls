<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hkdev_maintenance_mode_version');
delete_site_option('hkdev_maintenance_mode_version');
delete_option('hkdev_mm');
delete_site_option('hkdev_mm');

