<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fndry_global_styles');
delete_site_option('fndry_global_styles');
delete_option('fndry_custom_fields');
delete_site_option('fndry_custom_fields');
delete_option('fndry_animation_settings');
delete_site_option('fndry_animation_settings');
delete_option('fndry_general_settings');
delete_site_option('fndry_general_settings');
delete_option('fndry_component_styles');
delete_site_option('fndry_component_styles');
delete_option('foundry_settings');
delete_site_option('foundry_settings');
delete_option('fndry_license_key');
delete_site_option('fndry_license_key');
delete_option('fndry_license_status');
delete_site_option('fndry_license_status');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

