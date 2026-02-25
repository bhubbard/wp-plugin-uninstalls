<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('myprobooking_livekey');
delete_site_option('myprobooking_livekey');
delete_option('myprobooking_accesskey');
delete_site_option('myprobooking_accesskey');
delete_option('myprobooking_previewurl');
delete_site_option('myprobooking_previewurl');
delete_option('my_myprobooking_options');
delete_site_option('my_myprobooking_options');
delete_option('myprobooking_booking_plugin_version');
delete_site_option('myprobooking_booking_plugin_version');

