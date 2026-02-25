<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_rest_api_controller_post_types');
delete_site_option('wp_rest_api_controller_post_types');
delete_option('wp_rest_api_controller_taxonomies');
delete_site_option('wp_rest_api_controller_taxonomies');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_meta_keys', '_site_transient_%_meta_keys' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

