<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('enabled-cf7-form');
delete_site_option('enabled-cf7-form');
delete_option('popup_description');
delete_site_option('popup_description');
delete_option('popup_background');
delete_site_option('popup_background');
delete_option('image_url');
delete_site_option('image_url');
delete_option('popup_font_color');
delete_site_option('popup_font_color');
delete_option('popup_width');
delete_site_option('popup_width');
delete_option('popup_height');
delete_site_option('popup_height');
delete_option('popup_duration');
delete_site_option('popup_duration');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%cf7error', '_site_transient_%cf7error' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

