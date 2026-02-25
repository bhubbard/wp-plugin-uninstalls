<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('embed_osm_width');
delete_site_option('embed_osm_width');
delete_option('embed_osm_height');
delete_site_option('embed_osm_height');
delete_option('embed_osm_layer');
delete_site_option('embed_osm_layer');
delete_option('embed_osm_lat');
delete_site_option('embed_osm_lat');
delete_option('embed_osm_lon');
delete_site_option('embed_osm_lon');
delete_option('embed_osm_zoom');
delete_site_option('embed_osm_zoom');
delete_option('embed_osm_marker');
delete_site_option('embed_osm_marker');
delete_option('embed_osm_link');
delete_site_option('embed_osm_link');

