<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tcbd_google_map_latitude');
delete_site_option('tcbd_google_map_latitude');
delete_option('tcbd_google_map_longitude');
delete_site_option('tcbd_google_map_longitude');
delete_option('tcbd_google_map_zoom');
delete_site_option('tcbd_google_map_zoom');
delete_option('tcbd_google_map_marker');
delete_site_option('tcbd_google_map_marker');
delete_option('tcbd_google_map_style');
delete_site_option('tcbd_google_map_style');
delete_option('tcbd_google_map_scroll_zoom');
delete_site_option('tcbd_google_map_scroll_zoom');
delete_option('tcbd_google_map_api_key');
delete_site_option('tcbd_google_map_api_key');

