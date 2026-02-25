<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('daw-google-map-api-key');
delete_site_option('daw-google-map-api-key');
delete_option('daw-polygons');
delete_site_option('daw-polygons');
delete_option('daw-delivery-time');
delete_site_option('daw-delivery-time');

