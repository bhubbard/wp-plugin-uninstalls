<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('carbon_custom_sidebars');
delete_site_option('carbon_custom_sidebars');
delete_option('wc_db_version');
delete_site_option('wc_db_version');
delete_option('_wc_openweatherapikey');
delete_site_option('_wc_openweatherapikey');
delete_option('_wc_latitude');
delete_site_option('_wc_latitude');
delete_option('_wc_longitude');
delete_site_option('_wc_longitude');
delete_option('_wc_cache_hours');
delete_site_option('_wc_cache_hours');
delete_option('_wc_openweather_unit');
delete_site_option('_wc_openweather_unit');
delete_option('_wc_time_zone');
delete_site_option('_wc_time_zone');
delete_option('wc_weather_data');
delete_site_option('wc_weather_data');
delete_option('wc_weather_last_updated');
delete_site_option('wc_weather_last_updated');

// Clear Cron Jobs
wp_clear_scheduled_hook('wc_sync_weather');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

