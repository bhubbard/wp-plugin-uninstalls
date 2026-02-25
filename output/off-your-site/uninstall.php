<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('turn_off_web');
delete_site_option('turn_off_web');
delete_option('noti_maintenance');
delete_site_option('noti_maintenance');
delete_option('custom_maintenance');
delete_site_option('custom_maintenance');

