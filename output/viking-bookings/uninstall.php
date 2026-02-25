<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('viking_button_url');
delete_site_option('viking_button_url');
delete_option('viking_source');
delete_site_option('viking_source');
delete_option('viking_style_color');
delete_site_option('viking_style_color');
delete_option('viking_button_alignment');
delete_site_option('viking_button_alignment');
delete_option('viking_button_horizontal_padding');
delete_site_option('viking_button_horizontal_padding');
delete_option('viking_button_vertical_padding');
delete_site_option('viking_button_vertical_padding');
delete_option('viking_enable_button');
delete_site_option('viking_enable_button');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'viking_button_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'viking_button_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'viking_button_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'viking_button_url' ) );

