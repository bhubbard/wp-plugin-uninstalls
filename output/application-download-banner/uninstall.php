<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adb_link_background_color');
delete_site_option('adb_link_background_color');
delete_option('adb_link_text_color');
delete_site_option('adb_link_text_color');
delete_option('adb_link_googleplay');
delete_site_option('adb_link_googleplay');

