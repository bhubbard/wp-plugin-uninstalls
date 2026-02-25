<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('under_the_weather_settings');
delete_site_option('under_the_weather_settings');
delete_option('under_the_weather_usage_stats');
delete_site_option('under_the_weather_usage_stats');
delete_option('under_the_weather_ratelimit_stats');
delete_site_option('under_the_weather_ratelimit_stats');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'utw_geocoder_history' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'utw_geocoder_history' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'utw_geocoder_history' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'utw_geocoder_history' ) );

