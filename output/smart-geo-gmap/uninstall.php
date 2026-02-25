<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smartgeogmap_google_api_key');
delete_site_option('smartgeogmap_google_api_key');
delete_option('smartgeogmap_coordinates_city_1');
delete_site_option('smartgeogmap_coordinates_city_1');
delete_option('smartgeogmap_coordinates_lat_long_1');
delete_site_option('smartgeogmap_coordinates_lat_long_1');
delete_option('smartgeogmap_coordinates_city_2');
delete_site_option('smartgeogmap_coordinates_city_2');
delete_option('smartgeogmap_coordinates_lat_long_2');
delete_site_option('smartgeogmap_coordinates_lat_long_2');
delete_option('smartgeogmap_coordinates_city_3');
delete_site_option('smartgeogmap_coordinates_city_3');
delete_option('smartgeogmap_coordinates_lat_long_3');
delete_site_option('smartgeogmap_coordinates_lat_long_3');
delete_option('smartgeogmap_default_width');
delete_site_option('smartgeogmap_default_width');
delete_option('smartgeogmap_map_type');
delete_site_option('smartgeogmap_map_type');
delete_option('smartgeogmap_zoom');
delete_site_option('smartgeogmap_zoom');
delete_option('smartgeogmap_javascript_tooltip');
delete_site_option('smartgeogmap_javascript_tooltip');
delete_option('smartgeogmap_snazzy_file');
delete_site_option('smartgeogmap_snazzy_file');
delete_option('smartgeogmap_geojson_files');
delete_site_option('smartgeogmap_geojson_files');
delete_option('smartgeogmap_legend_toggle');
delete_site_option('smartgeogmap_legend_toggle');
delete_option('smartgeogmap_legend_position');
delete_site_option('smartgeogmap_legend_position');
delete_option('smartgeogmap_legend_image_1');
delete_site_option('smartgeogmap_legend_image_1');
delete_option('smartgeogmap_legend_label_1');
delete_site_option('smartgeogmap_legend_label_1');
delete_option('smartgeogmap_legend_image_2');
delete_site_option('smartgeogmap_legend_image_2');
delete_option('smartgeogmap_legend_label_2');
delete_site_option('smartgeogmap_legend_label_2');
delete_option('smartgeogmap_legend_image_3');
delete_site_option('smartgeogmap_legend_image_3');
delete_option('smartgeogmap_legend_label_3');
delete_site_option('smartgeogmap_legend_label_3');
delete_option('smartgeogmap_backward_compatibility');
delete_site_option('smartgeogmap_backward_compatibility');
delete_option('smart_geo_gmap_opt_debug');
delete_site_option('smart_geo_gmap_opt_debug');
delete_option('smartgeogmap_welcome_description');
delete_site_option('smartgeogmap_welcome_description');
delete_option('smartgeogmap_welcome_how_to');
delete_site_option('smartgeogmap_welcome_how_to');
delete_option('smartgeogmap_welcome_available_shortcodes');
delete_site_option('smartgeogmap_welcome_available_shortcodes');

