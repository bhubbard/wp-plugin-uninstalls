<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cf7_googleMap_api_key');
delete_site_option('cf7_googleMap_api_key');
delete_option('cf7_googleMap_enable_geocode');
delete_site_option('cf7_googleMap_enable_geocode');
delete_option('cf7_googleMap_enable_places');
delete_site_option('cf7_googleMap_enable_places');
delete_option('cf7-google-map-notices');
delete_site_option('cf7-google-map-notices');

