<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('freefreebangladeshhtml5map_nameFontSize');
delete_site_option('freefreebangladeshhtml5map_nameFontSize');
delete_option('freefreebangladeshhtml5map_nameColor');
delete_site_option('freefreebangladeshhtml5map_nameColor');
delete_option('freefreebangladeshhtml5map_map_data');
delete_site_option('freefreebangladeshhtml5map_map_data');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'freefreebangladeshhtml5map_state_info_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

