<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wordclever_current_user');
delete_site_option('wordclever_current_user');
delete_option('wordclever_used_request');
delete_site_option('wordclever_used_request');
delete_option('wordclever_current_plan');
delete_site_option('wordclever_current_plan');
delete_option('wordclever_request_count');
delete_site_option('wordclever_request_count');
delete_option('wordclever_license_key');
delete_site_option('wordclever_license_key');
delete_option('wordclever_license_status');
delete_site_option('wordclever_license_status');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wordclever_request_count%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wordclever_used_request%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

