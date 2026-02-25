<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ghlconnect_access_token');
delete_site_option('ghlconnect_access_token');
delete_option('ghlconnect_locationId');
delete_site_option('ghlconnect_locationId');
delete_option('ghlconnect_client_id');
delete_site_option('ghlconnect_client_id');
delete_option('ghlconnect_client_secret');
delete_site_option('ghlconnect_client_secret');
delete_option('ghlconnect_refresh_token');
delete_site_option('ghlconnect_refresh_token');
delete_option('ghlconnect_loc_name');
delete_site_option('ghlconnect_loc_name');
delete_option('woo_contact_id');
delete_site_option('woo_contact_id');
delete_option('ghlconnect_contact_register_choice');
delete_site_option('ghlconnect_contact_register_choice');
delete_option('ghlconnect_location_connected');
delete_site_option('ghlconnect_location_connected');
delete_option('ghlconnect_order_status');
delete_site_option('ghlconnect_order_status');

// Delete Transients
delete_transient('is_access_token_valid');
delete_site_transient('is_access_token_valid');
delete_transient('ghlconnect_location_tags');
delete_site_transient('ghlconnect_location_tags');
delete_transient('ghlconnect_location_wokflow');
delete_site_transient('ghlconnect_location_wokflow');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ghlconnect_location_tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ghlconnect_location_tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ghlconnect_location_tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ghlconnect_location_tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ghlconnect_location_workflow' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ghlconnect_location_workflow' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ghlconnect_location_workflow' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ghlconnect_location_workflow' ) );

