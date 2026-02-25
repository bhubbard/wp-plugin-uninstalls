<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('weather_press_lang');
delete_site_option('weather_press_lang');
delete_option('weather_press_unit');
delete_site_option('weather_press_unit');
delete_option('weather_press_mainLocation');
delete_site_option('weather_press_mainLocation');
delete_option('weather_press_secondary_location');
delete_site_option('weather_press_secondary_location');
delete_option('weather_press_where');
delete_site_option('weather_press_where');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_current_transient', '_site_transient_%_current_transient' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_hourly_transient', '_site_transient_%_hourly_transient' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_daily_transient', '_site_transient_%_daily_transient' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

