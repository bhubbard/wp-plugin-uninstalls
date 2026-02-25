<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easy_map_setting');
delete_site_option('easy_map_setting');
delete_option('easy_map_version');
delete_site_option('easy_map_version');
delete_option('easy_map_marker_image_id');
delete_site_option('easy_map_marker_image_id');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'easy_map_marker_image_id_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

