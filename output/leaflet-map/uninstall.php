<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('leaflet_geocoded_locations');
delete_site_option('leaflet_geocoded_locations');

