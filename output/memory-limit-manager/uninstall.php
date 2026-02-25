<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_memory_limit_manager_errors_%', '_site_transient_memory_limit_manager_errors_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_memory_limit_manager_attempted_values_%', '_site_transient_memory_limit_manager_attempted_values_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_memory_limit_manager_success_%', '_site_transient_memory_limit_manager_success_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('memory_limit_manager_success');
delete_site_transient('memory_limit_manager_success');
delete_transient('memory_limit_manager_errors');
delete_site_transient('memory_limit_manager_errors');

