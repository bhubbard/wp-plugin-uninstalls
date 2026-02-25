<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adb_status');
delete_site_option('adb_status');
delete_option('adb_display_status');
delete_site_option('adb_display_status');
delete_option('adb_display_message');
delete_site_option('adb_display_message');
delete_option('adb_display_image');
delete_site_option('adb_display_image');

