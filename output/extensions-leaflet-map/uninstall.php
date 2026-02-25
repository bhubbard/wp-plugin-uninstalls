<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('leafext_awesome');
delete_site_option('leafext_awesome');
delete_option('leafext_deleting');
delete_site_option('leafext_deleting');
delete_option('leafext_eleparams');
delete_site_option('leafext_eleparams');
delete_option('leafext_values');
delete_site_option('leafext_values');
delete_option('leafext_multieleparams');
delete_site_option('leafext_multieleparams');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'leafext_color_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('leafext_sgpxparams');
delete_site_option('leafext_sgpxparams');
delete_option('leafext_sgpx_unclean_db');
delete_site_option('leafext_sgpx_unclean_db');
delete_option('leafext_waypoints');
delete_site_option('leafext_waypoints');
delete_option('leafext_filemgr');
delete_site_option('leafext_filemgr');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'leafext_file_listing_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('leafext_gesture');
delete_site_option('leafext_gesture');
delete_option('leaflet_scroll_wheel_zoom');
delete_site_option('leaflet_scroll_wheel_zoom');
delete_option('leafext_parentgroup');
delete_site_option('leafext_parentgroup');
delete_option('leafext_canvas');
delete_site_option('leafext_canvas');
delete_option('leafext_hover');
delete_site_option('leafext_hover');
delete_option('leafext_cluster');
delete_site_option('leafext_cluster');
delete_option('leafext_placementparams');
delete_site_option('leafext_placementparams');
delete_option('leafext_featuredmap');
delete_site_option('leafext_featuredmap');
delete_option('leafext_overviewmap');
delete_site_option('leafext_overviewmap');
delete_option('leaflet_mapid');
delete_site_option('leaflet_mapid');
delete_option('leaflet_map_tile_url');
delete_site_option('leaflet_map_tile_url');
delete_option('leaflet_map_tile_url_subdomains');
delete_site_option('leaflet_map_tile_url_subdomains');
delete_option('leaflet_default_attribution');
delete_site_option('leaflet_default_attribution');
delete_option('leaflet_default_min_zoom');
delete_site_option('leaflet_default_min_zoom');
delete_option('leaflet_default_max_zoom');
delete_site_option('leaflet_default_max_zoom');
delete_option('leafext_maps');
delete_site_option('leafext_maps');
delete_option('leafext_providers');
delete_site_option('leafext_providers');
delete_option('leafext_zoomhome');
delete_site_option('leafext_zoomhome');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('leaflet_default_width');
delete_site_option('leaflet_default_width');
delete_option('leaflet_default_height');
delete_site_option('leaflet_default_height');
delete_option('leaflet_default_zoom');
delete_site_option('leaflet_default_zoom');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_leafext_ovm_%', '_site_transient_leafext_ovm_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'geo_latitude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'geo_latitude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'geo_latitude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'geo_latitude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'geo_longitude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'geo_longitude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'geo_longitude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'geo_longitude' ) );

