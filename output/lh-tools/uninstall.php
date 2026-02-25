<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'rdf_tools_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('rdf_tools_endpoint_read_key');
delete_site_option('rdf_tools_endpoint_read_key');
delete_option('rdf_tools_endpoint_write_key');
delete_site_option('rdf_tools_endpoint_write_key');
delete_option('rdf_tools_endpoint_src_file');
delete_site_option('rdf_tools_endpoint_src_file');

// Clear Cron Jobs
wp_clear_scheduled_hook('lh_tools_load_endpoint_hourly');

