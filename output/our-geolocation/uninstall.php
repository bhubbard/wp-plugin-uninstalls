<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('our-geolocation-getdir');
delete_site_option('our-geolocation-getdir');
delete_option('our-geolocation-address');
delete_site_option('our-geolocation-address');
delete_option('our-geolocation-latitude');
delete_site_option('our-geolocation-latitude');
delete_option('our-geolocation-longitude');
delete_site_option('our-geolocation-longitude');
delete_option('our-geolocation-width');
delete_site_option('our-geolocation-width');
delete_option('our-geolocation-height');
delete_site_option('our-geolocation-height');

