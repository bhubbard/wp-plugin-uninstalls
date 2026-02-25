<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('post_type_rules_flushed_gl_js_maps');
delete_site_option('post_type_rules_flushed_gl_js_maps');
delete_option('mapbox_gl_js_access_token');
delete_site_option('mapbox_gl_js_access_token');
delete_option('mapbox_gl_js_secret_access_token');
delete_site_option('mapbox_gl_js_secret_access_token');
delete_option('mapbox_gl_js_username');
delete_site_option('mapbox_gl_js_username');
delete_option('wp_mapbox_gl_js_upgrade');
delete_site_option('wp_mapbox_gl_js_upgrade');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_mapbox_gl_js_map_object' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_mapbox_gl_js_map_object' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_mapbox_gl_js_map_object' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_mapbox_gl_js_map_object' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_mapbox_gl_js_hidden_in_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_mapbox_gl_js_hidden_in_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_mapbox_gl_js_hidden_in_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_mapbox_gl_js_hidden_in_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_mapbox_gl_js_dataset_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_mapbox_gl_js_dataset_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_mapbox_gl_js_dataset_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_mapbox_gl_js_dataset_id' ) );

