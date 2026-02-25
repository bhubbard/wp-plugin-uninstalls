<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('default_lat');
delete_site_option('default_lat');
delete_option('default_lng');
delete_site_option('default_lng');
delete_option('cf7_mrkr_enable');
delete_site_option('cf7_mrkr_enable');
delete_option('default_zoom');
delete_site_option('default_zoom');
delete_option('default_api_key');
delete_site_option('default_api_key');
delete_option('mapsView');
delete_site_option('mapsView');
delete_option('cf7_enable_reset');
delete_site_option('cf7_enable_reset');
delete_option('cf7_gps_enable');
delete_site_option('cf7_gps_enable');
delete_option('cf7_custom_button_text');
delete_site_option('cf7_custom_button_text');

