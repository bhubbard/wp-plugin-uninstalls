<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('osm-tiles-proxy-rest-api-enabled');
delete_site_option('osm-tiles-proxy-rest-api-enabled');
delete_option('osm-tiles-proxy-cache-enabled');
delete_site_option('osm-tiles-proxy-cache-enabled');
delete_option('osm-tiles-proxy-osm-url');
delete_site_option('osm-tiles-proxy-osm-url');
delete_option('osm_tiles_proxy_out_of_range_image_url');
delete_site_option('osm_tiles_proxy_out_of_range_image_url');
delete_option('osm_tiles_proxy_min_zoom');
delete_site_option('osm_tiles_proxy_min_zoom');
delete_option('osm_tiles_proxy_max_zoom');
delete_site_option('osm_tiles_proxy_max_zoom');
delete_option('osm_tiles_proxy_min_x');
delete_site_option('osm_tiles_proxy_min_x');
delete_option('osm_tiles_proxy_max_x');
delete_site_option('osm_tiles_proxy_max_x');
delete_option('osm_tiles_proxy_min_y');
delete_site_option('osm_tiles_proxy_min_y');
delete_option('osm_tiles_proxy_max_y');
delete_site_option('osm_tiles_proxy_max_y');

