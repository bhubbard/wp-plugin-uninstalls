<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sdt_lab');
delete_site_option('sdt_lab');
delete_option('zalo_lab');
delete_site_option('zalo_lab');
delete_option('fb_lab');
delete_site_option('fb_lab');

