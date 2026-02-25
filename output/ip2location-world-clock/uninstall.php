<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ip2location_world_clock_type');
delete_site_option('ip2location_world_clock_type');
delete_option('ip2location_world_clock_design');
delete_site_option('ip2location_world_clock_design');
delete_option('ip2location_world_clock_time_format');
delete_site_option('ip2location_world_clock_time_format');
delete_option('ip2location_world_clock_display_time');
delete_site_option('ip2location_world_clock_display_time');
delete_option('ip2location_world_clock_display_time2');
delete_site_option('ip2location_world_clock_display_time2');
delete_option('ip2location_world_clock_shortcode_params');
delete_site_option('ip2location_world_clock_shortcode_params');
delete_option('ip2location_world_clock_database');
delete_site_option('ip2location_world_clock_database');
delete_option('ip2location_world_clock_token');
delete_site_option('ip2location_world_clock_token');
delete_option('ip2location_display_time');
delete_site_option('ip2location_display_time');
delete_option('ip2location_display_time2');
delete_site_option('ip2location_display_time2');

