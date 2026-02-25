<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('selected_sizes');
delete_site_option('selected_sizes');
delete_option('globally_active');
delete_site_option('globally_active');
delete_option('rwp_added_filters');
delete_site_option('rwp_added_filters');
delete_option('rwp_picturefill');
delete_site_option('rwp_picturefill');
delete_option('rwp_retina');
delete_site_option('rwp_retina');
delete_option('selected_element');
delete_site_option('selected_element');
delete_option('ignored_image_formats');
delete_site_option('ignored_image_formats');
delete_option('rwp_custom_media_queries');
delete_site_option('rwp_custom_media_queries');
delete_option('rwp_debug_mode');
delete_site_option('rwp_debug_mode');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_w' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_h' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

