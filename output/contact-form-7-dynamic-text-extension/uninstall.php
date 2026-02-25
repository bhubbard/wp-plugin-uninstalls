<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cf7dtx_settings');
delete_site_option('cf7dtx_settings');
delete_option('cf7dtx_version');
delete_site_option('cf7dtx_version');
delete_option('cf7dtx_v4_2_0_access_scan_check_status');
delete_site_option('cf7dtx_v4_2_0_access_scan_check_status');

