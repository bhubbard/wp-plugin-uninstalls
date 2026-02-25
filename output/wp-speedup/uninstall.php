<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpsu_total_bytes');
delete_site_option('wpsu_total_bytes');
delete_option('selection_css');
delete_site_option('selection_css');
delete_option('wpsu_options');
delete_site_option('wpsu_options');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('selection_js');
delete_site_option('selection_js');
delete_option('wpsu_compress_images');
delete_site_option('wpsu_compress_images');

