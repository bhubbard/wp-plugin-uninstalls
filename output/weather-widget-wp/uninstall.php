<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('weather_widget_wp_options');
delete_site_option('weather_widget_wp_options');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_weather_widget_wp_data_%', '_site_transient_weather_widget_wp_data_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

