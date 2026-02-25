<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('heartbeat_control_settings');
delete_site_option('heartbeat_control_settings');
delete_option('imagify_settings');
delete_site_option('imagify_settings');
delete_option('heartbeat_control_version');
delete_site_option('heartbeat_control_version');
delete_option('heartbeat_location');
delete_site_option('heartbeat_location');
delete_option('heartbeat_frequency');
delete_site_option('heartbeat_frequency');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

