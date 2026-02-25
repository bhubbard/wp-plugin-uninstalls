<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tsm_quote');
delete_site_option('tsm_quote');
delete_option('google_maps_master_view_basic_choice');
delete_site_option('google_maps_master_view_basic_choice');
delete_option('google_maps_master_load_basic_roadmap');
delete_site_option('google_maps_master_load_basic_roadmap');
delete_option('google_maps_master_load_basic_satellite');
delete_site_option('google_maps_master_load_basic_satellite');
delete_option('google_maps_master_load_basic_hybrid');
delete_site_option('google_maps_master_load_basic_hybrid');
delete_option('google_maps_master_load_basic_terrain');
delete_site_option('google_maps_master_load_basic_terrain');
delete_option('google_maps_master_load_basic_marker1');
delete_site_option('google_maps_master_load_basic_marker1');
delete_option('google_maps_marker1_basic_choice');
delete_site_option('google_maps_marker1_basic_choice');

