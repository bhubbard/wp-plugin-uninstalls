<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mice_widget_id');
delete_site_option('mice_widget_id');
delete_option('mice_style_color');
delete_site_option('mice_style_color');
delete_option('mice_button_alignment');
delete_site_option('mice_button_alignment');
delete_option('mice_source');
delete_site_option('mice_source');
delete_option('mice_button_horizontal_padding');
delete_site_option('mice_button_horizontal_padding');
delete_option('mice_button_vertical_padding');
delete_site_option('mice_button_vertical_padding');
delete_option('mice_enable_button');
delete_site_option('mice_enable_button');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mice_widget_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mice_widget_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mice_widget_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mice_widget_id' ) );

