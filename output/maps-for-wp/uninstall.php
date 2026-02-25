<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mfwp_version');
delete_site_option('mfwp_version');
delete_option('mfwp_map_from');
delete_site_option('mfwp_map_from');
delete_option('mfwp_gapikey');
delete_site_option('mfwp_gapikey');
delete_option('mfwp_type_map');
delete_site_option('mfwp_type_map');
delete_option('mfwp_style_map');
delete_site_option('mfwp_style_map');
delete_option('mfwp_h');
delete_site_option('mfwp_h');
delete_option('mfwp_zoom_OnePoint');
delete_site_option('mfwp_zoom_OnePoint');
delete_option('mfwp_zoom_ManyPoints');
delete_site_option('mfwp_zoom_ManyPoints');
delete_option('mfwp_default_point_img');
delete_site_option('mfwp_default_point_img');
delete_option('mfwp_point_img');
delete_site_option('mfwp_point_img');
delete_option('mfwp_center_lat_ManyPoints');
delete_site_option('mfwp_center_lat_ManyPoints');
delete_option('mfwp_center_lon_ManyPoints');
delete_site_option('mfwp_center_lon_ManyPoints');

