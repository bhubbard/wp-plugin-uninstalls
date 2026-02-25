<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('osm_cats_baselayer_osm');
delete_site_option('osm_cats_baselayer_osm');
delete_option('osm_cats_baselayer_google_roadmap');
delete_site_option('osm_cats_baselayer_google_roadmap');
delete_option('osm_cats_baselayer_google_satellite');
delete_site_option('osm_cats_baselayer_google_satellite');
delete_option('osm_cats_baselayer_google_hybrid');
delete_site_option('osm_cats_baselayer_google_hybrid');
delete_option('osm_cats_baselayer_google_terrain');
delete_site_option('osm_cats_baselayer_google_terrain');
delete_option('osm_cats_map_width');
delete_site_option('osm_cats_map_width');
delete_option('osm_cats_map_height');
delete_site_option('osm_cats_map_height');
delete_option('osm_cats_center_lon');
delete_site_option('osm_cats_center_lon');
delete_option('osm_cats_center_lat');
delete_site_option('osm_cats_center_lat');
delete_option('osm_cats_zoom_level');
delete_site_option('osm_cats_zoom_level');
delete_option('osm_cats_disable_zoom_wheel');
delete_site_option('osm_cats_disable_zoom_wheel');
delete_option('osm_cats_include_cats');
delete_site_option('osm_cats_include_cats');
delete_option('osm_cats_exclude_cats');
delete_site_option('osm_cats_exclude_cats');
delete_option('osm_cats_marker_custom_field');
delete_site_option('osm_cats_marker_custom_field');
delete_option('osm_cats_marker_show_thumbnail');
delete_site_option('osm_cats_marker_show_thumbnail');
delete_option('osm_cats_marker_show_excerpt');
delete_site_option('osm_cats_marker_show_excerpt');
delete_option('osm_cats_marker_images_path');
delete_site_option('osm_cats_marker_images_path');

