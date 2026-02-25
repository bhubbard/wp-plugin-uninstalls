<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dprx_find_us_mode');
delete_site_option('dprx_find_us_mode');
delete_option('dprx_find_us_mtypes');
delete_site_option('dprx_find_us_mtypes');
delete_option('dprx_find_us_apikey');
delete_site_option('dprx_find_us_apikey');
delete_option('dprx_find_us_width');
delete_site_option('dprx_find_us_width');
delete_option('dprx_find_us_height');
delete_site_option('dprx_find_us_height');
delete_option('dprx_find_us_ctype');
delete_site_option('dprx_find_us_ctype');
delete_option('dprx_find_us_location');
delete_site_option('dprx_find_us_location');
delete_option('dprx_find_us_location_end_lat');
delete_site_option('dprx_find_us_location_end_lat');
delete_option('dprx_find_us_location_end_lon');
delete_site_option('dprx_find_us_location_end_lon');

