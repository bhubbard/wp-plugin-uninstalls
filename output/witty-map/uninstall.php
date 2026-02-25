<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('googlemapapi_key');
delete_site_option('googlemapapi_key');
delete_option('wittymap_loc');
delete_site_option('wittymap_loc');
delete_option('wittymap_def_zoom');
delete_site_option('wittymap_def_zoom');
delete_option('wittymap_marker');
delete_site_option('wittymap_marker');
delete_option('wittymap_draggable');
delete_site_option('wittymap_draggable');
delete_option('wittymap_doubleClickZoom');
delete_site_option('wittymap_doubleClickZoom');
delete_option('wittymap_zoomControl');
delete_site_option('wittymap_zoomControl');
delete_option('wittymap_scrollWheel');
delete_site_option('wittymap_scrollWheel');
delete_option('wittymap_streetView');
delete_site_option('wittymap_streetView');
delete_option('wittymap_markerLabel');
delete_site_option('wittymap_markerLabel');
delete_option('wittymap_labelX');
delete_site_option('wittymap_labelX');
delete_option('wittymap_labelY');
delete_site_option('wittymap_labelY');

