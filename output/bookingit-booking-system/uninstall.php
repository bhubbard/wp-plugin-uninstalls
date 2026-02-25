<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bookingit_settings');
delete_site_option('bookingit_settings');
delete_option('abl_bookingit_version');
delete_site_option('abl_bookingit_version');

