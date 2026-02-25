<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_enabled' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('grid_privileges');
delete_site_option('grid_privileges');
delete_option('grid_debug_mode');
delete_site_option('grid_debug_mode');
delete_option('grid_default_container_style');
delete_site_option('grid_default_container_style');
delete_option('grid_default_slot_style');
delete_site_option('grid_default_slot_style');
delete_option('grid_default_box_style');
delete_site_option('grid_default_box_style');
delete_option('grid_landing_page_enabled');
delete_site_option('grid_landing_page_enabled');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_search_enabled' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('grid_default_container');
delete_site_option('grid_default_container');
delete_option('grid_async');
delete_site_option('grid_async');
delete_option('grid_async_url');
delete_site_option('grid_async_url');
delete_option('grid_async_timeout');
delete_site_option('grid_async_timeout');
delete_option('grid_mediaselect_info');
delete_site_option('grid_mediaselect_info');
delete_option('grid_mediaselect_types');
delete_site_option('grid_mediaselect_types');
delete_option('grid_permalinks');
delete_site_option('grid_permalinks');
delete_option('grid');
delete_site_option('grid');
delete_option('grid_post_search_enabled');
delete_site_option('grid_post_search_enabled');
delete_option('grid_page_search_enabled');
delete_site_option('grid_page_search_enabled');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

