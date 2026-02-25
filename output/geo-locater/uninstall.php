<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('locater_google_api_key');
delete_site_option('locater_google_api_key');
delete_option('locater_map_zoom_size');
delete_site_option('locater_map_zoom_size');
delete_option('locater_map_radius');
delete_site_option('locater_map_radius');
delete_option('locater_map_marker_img');
delete_site_option('locater_map_marker_img');
delete_option('locater_sub_title_text');
delete_site_option('locater_sub_title_text');

