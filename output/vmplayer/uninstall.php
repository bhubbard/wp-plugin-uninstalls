<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nr_popoutbutton_bgcolor');
delete_site_option('nr_popoutbutton_bgcolor');
delete_option('nr_popoutbutton_window_width');
delete_site_option('nr_popoutbutton_window_width');
delete_option('nr_popoutbutton_window_height');
delete_site_option('nr_popoutbutton_window_height');
delete_option('nr_vmplayer_window_width');
delete_site_option('nr_vmplayer_window_width');
delete_option('nr_vmplayer_window_height');
delete_site_option('nr_vmplayer_window_height');
delete_option('nr_vmplayer_stream_url');
delete_site_option('nr_vmplayer_stream_url');
delete_option('nr_vmplayer_color');
delete_site_option('nr_vmplayer_color');
delete_option('nr_vmplayer_product_name');
delete_site_option('nr_vmplayer_product_name');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

