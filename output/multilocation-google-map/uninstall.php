<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mgm_map_key_options');
delete_site_option('mgm_map_key_options');
delete_option('mgm_map_lat_options');
delete_site_option('mgm_map_lat_options');
delete_option('mgm_map_lng_options');
delete_site_option('mgm_map_lng_options');
delete_option('mgm_map_zoom_options');
delete_site_option('mgm_map_zoom_options');
delete_option('mgm_map_type_options');
delete_site_option('mgm_map_type_options');
delete_option('mgm_map_scrollwheel_options');
delete_site_option('mgm_map_scrollwheel_options');
delete_option('mgm_map_draggable_options');
delete_site_option('mgm_map_draggable_options');
delete_option('mgm_map_zoomcontrol_options');
delete_site_option('mgm_map_zoomcontrol_options');
delete_option('mgm_map_marker_click_zoom_options');
delete_site_option('mgm_map_marker_click_zoom_options');
delete_option('mgm_upload_pointer_image_options');
delete_site_option('mgm_upload_pointer_image_options');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'latitude_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'latitude_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'latitude_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'latitude_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'longitude_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'longitude_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'longitude_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'longitude_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'description_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'description_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'description_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'description_id' ) );

