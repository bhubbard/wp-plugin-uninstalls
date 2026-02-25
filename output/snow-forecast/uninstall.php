<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('snow-forecast_country');
delete_site_option('snow-forecast_country');
delete_option('snow-forecast_resort');
delete_site_option('snow-forecast_resort');
delete_option('snow-forecast_resort_encoded');
delete_site_option('snow-forecast_resort_encoded');
delete_option('snow-forecast_units');
delete_site_option('snow-forecast_units');
delete_option('snow-forecast_size');
delete_site_option('snow-forecast_size');
delete_option('snow-forecast_link');
delete_site_option('snow-forecast_link');

