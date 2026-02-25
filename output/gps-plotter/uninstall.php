<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gps-plotter-api-key');
delete_site_option('gps-plotter-api-key');
delete_option('map-type');
delete_site_option('map-type');
delete_option('gps_plotter_options');
delete_site_option('gps_plotter_options');
delete_option('gpsplotter_app_id');
delete_site_option('gpsplotter_app_id');

