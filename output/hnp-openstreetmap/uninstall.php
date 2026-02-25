<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hnp_openmaps_map_address');
delete_site_option('hnp_openmaps_map_address');
delete_option('hnp_openmaps_map_name');
delete_site_option('hnp_openmaps_map_name');
delete_option('hnp_openmaps_map_zoom');
delete_site_option('hnp_openmaps_map_zoom');
delete_option('hnp_openmaps_map_style');
delete_site_option('hnp_openmaps_map_style');
delete_option('hnp_openmaps_map_height');
delete_site_option('hnp_openmaps_map_height');
delete_option('hnp_openmaps_map_width');
delete_site_option('hnp_openmaps_map_width');

