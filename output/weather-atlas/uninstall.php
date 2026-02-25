<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('weather_atlas_version');
delete_site_option('weather_atlas_version');
delete_option('weather_atlas_conversion_done');
delete_site_option('weather_atlas_conversion_done');
delete_option('widget_weather_atlas');
delete_site_option('widget_weather_atlas');
delete_option('weather_atlas_settings');
delete_site_option('weather_atlas_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'weather_atlas_widget_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

