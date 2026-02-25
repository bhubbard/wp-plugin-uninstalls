<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('db_snow_start_day');
delete_site_option('db_snow_start_day');
delete_option('db_snow_start_month');
delete_site_option('db_snow_start_month');
delete_option('db_snow_finish_day');
delete_site_option('db_snow_finish_day');
delete_option('db_snow_finish_month');
delete_site_option('db_snow_finish_month');
delete_option('db_snow_max_number_mobile');
delete_site_option('db_snow_max_number_mobile');
delete_option('db_snow_max_number_tablet');
delete_site_option('db_snow_max_number_tablet');
delete_option('db_snow_max_number');
delete_site_option('db_snow_max_number');
delete_option('db_snow_min_size_mobile');
delete_site_option('db_snow_min_size_mobile');
delete_option('db_snow_min_size_tablet');
delete_site_option('db_snow_min_size_tablet');
delete_option('db_snow_min_size');
delete_site_option('db_snow_min_size');
delete_option('db_snow_max_size_mobile');
delete_site_option('db_snow_max_size_mobile');
delete_option('db_snow_max_size_tablet');
delete_site_option('db_snow_max_size_tablet');
delete_option('db_snow_max_size');
delete_site_option('db_snow_max_size');
delete_option('db_snow_speed_mobile');
delete_site_option('db_snow_speed_mobile');
delete_option('db_snow_speed_tablet');
delete_site_option('db_snow_speed_tablet');
delete_option('db_snow_speed');
delete_site_option('db_snow_speed');
delete_option('db_snow_color_1');
delete_site_option('db_snow_color_1');
delete_option('db_snow_color_2');
delete_site_option('db_snow_color_2');
delete_option('db_snow_color_3');
delete_site_option('db_snow_color_3');
delete_option('db_snow_color_4');
delete_site_option('db_snow_color_4');
delete_option('db_snow_color_5');
delete_site_option('db_snow_color_5');
delete_option('db_snow_opacity_mobile');
delete_site_option('db_snow_opacity_mobile');
delete_option('db_snow_opacity_tablet');
delete_site_option('db_snow_opacity_tablet');
delete_option('db_snow_opacity');
delete_site_option('db_snow_opacity');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'db_snow_color_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

