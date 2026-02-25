<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hp_geolocation_max_zoom');
delete_site_option('hp_geolocation_max_zoom');
delete_option('hp_geolocation_hide_address');
delete_site_option('hp_geolocation_hide_address');
delete_option('hp_geolocation_models');
delete_site_option('hp_geolocation_models');
delete_option('hp_geolocation_region_types');
delete_site_option('hp_geolocation_region_types');
delete_option('hp_geolocation_provider');
delete_site_option('hp_geolocation_provider');
delete_option('hp_geolocation_countries');
delete_site_option('hp_geolocation_countries');
delete_option('hp_geolocation_radius');
delete_site_option('hp_geolocation_radius');
delete_option('hp_geolocation_use_miles');
delete_site_option('hp_geolocation_use_miles');
delete_option('hp_geolocation_generate_regions');
delete_site_option('hp_geolocation_generate_regions');
delete_option('hp_mapbox_api_key');
delete_site_option('hp_mapbox_api_key');
delete_option('hp_gmaps_api_key');
delete_site_option('hp_gmaps_api_key');
delete_option('hp_gmaps_use_legacy_api');
delete_site_option('hp_gmaps_use_legacy_api');
delete_option('hp_mapbox_secret_key');
delete_site_option('hp_mapbox_secret_key');
delete_option('hp_gmaps_secret_key');
delete_site_option('hp_gmaps_secret_key');
delete_option('hp_installed_time');
delete_site_option('hp_installed_time');
delete_option('hp_listing_related_criteria');
delete_site_option('hp_listing_related_criteria');
delete_option('hp_geolocation_enable_sorting');
delete_site_option('hp_geolocation_enable_sorting');
delete_option('hp_geolocation_allow_radius');
delete_site_option('hp_geolocation_allow_radius');
delete_option('hp_geolocation_max_radius');
delete_site_option('hp_geolocation_max_radius');
delete_option('hp_geolocation_address_format');
delete_site_option('hp_geolocation_address_format');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'hp_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'hp_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'hp_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'hp_code' ) );

