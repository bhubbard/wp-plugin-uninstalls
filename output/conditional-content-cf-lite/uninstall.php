<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cf_cc_settings_lazy_load');
delete_site_option('cf_cc_settings_lazy_load');
delete_option('cf_cc_settings_visited_pages');
delete_site_option('cf_cc_settings_visited_pages');
delete_option('cf_cc_settings_remove_data_on_uninstall');
delete_site_option('cf_cc_settings_remove_data_on_uninstall');
delete_option('cf_cc_settings_geoip_provider');
delete_site_option('cf_cc_settings_geoip_provider');
delete_option('cf_cc_settings_google_maps_api_key');
delete_site_option('cf_cc_settings_google_maps_api_key');
delete_option('cf_cc_settings_geoip_provider_key');
delete_site_option('cf_cc_settings_geoip_provider_key');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cf_cc_trigger_default' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cf_cc_trigger_default' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cf_cc_trigger_default' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cf_cc_trigger_default' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cf_cc_trigger_default_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cf_cc_trigger_default_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cf_cc_trigger_default_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cf_cc_trigger_default_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cf_cc_conditions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cf_cc_conditions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cf_cc_conditions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cf_cc_conditions' ) );

