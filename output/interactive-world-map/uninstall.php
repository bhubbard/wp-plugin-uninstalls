<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('freeworldhtml5map_options');
delete_site_option('freeworldhtml5map_options');
delete_option('freeworldhtml5map_goptions');
delete_site_option('freeworldhtml5map_goptions');
delete_option('freeworldhtml5map_imported_map_key');
delete_site_option('freeworldhtml5map_imported_map_key');
delete_option('freeworldcontinenthtml5map_map_data');
delete_site_option('freeworldcontinenthtml5map_map_data');
delete_option('freeworldcontinenthtml5map_nameColor');
delete_site_option('freeworldcontinenthtml5map_nameColor');
delete_option('freeworldcontinenthtml5map_nameFontSize');
delete_site_option('freeworldcontinenthtml5map_nameFontSize');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'freeworldcontinenthtml5map_state_info_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

