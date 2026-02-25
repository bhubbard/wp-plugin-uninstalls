<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sgitswcsm_gmap_api');
delete_site_option('sgitswcsm_gmap_api');
delete_option('sgitswcsm_debug_mode');
delete_site_option('sgitswcsm_debug_mode');
delete_option('sgitswcsm_order_count');
delete_site_option('sgitswcsm_order_count');
delete_option('sgitswcsm_default_latlong');
delete_site_option('sgitswcsm_default_latlong');
delete_option('sgitswcsm_default_zoom');
delete_site_option('sgitswcsm_default_zoom');

