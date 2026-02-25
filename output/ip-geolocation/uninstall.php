<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ipgeo_enable_map');
delete_site_option('ipgeo_enable_map');
delete_option('ipgeo_map_api_token');
delete_site_option('ipgeo_map_api_token');
delete_option('ipgeo_map_service');
delete_site_option('ipgeo_map_service');
delete_option('ipgeo_input_class');
delete_site_option('ipgeo_input_class');
delete_option('ipgeo_button_class');
delete_site_option('ipgeo_button_class');
delete_option('ipgeo_default_ip_type');
delete_site_option('ipgeo_default_ip_type');
delete_option('ipgeo_api_service');
delete_site_option('ipgeo_api_service');
delete_option('ipgeo_api_token');
delete_site_option('ipgeo_api_token');
delete_option('ipgeo_map_width_section');
delete_site_option('ipgeo_map_width_section');
delete_option('ipgeo_map_height_section');
delete_site_option('ipgeo_map_height_section');

