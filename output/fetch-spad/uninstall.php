<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fetch_spad_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fetch_spad_layout');
delete_site_option('fetch_spad_layout');
delete_option('fetch_spad_language');
delete_site_option('fetch_spad_language');
delete_option('fetch_spad_timezone');
delete_site_option('fetch_spad_timezone');

