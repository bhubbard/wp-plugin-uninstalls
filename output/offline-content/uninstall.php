<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('offline_network_timeout');
delete_site_option('offline_network_timeout');
delete_option('offline_debug_sw');
delete_site_option('offline_debug_sw');
delete_option('offline_precache');
delete_site_option('offline_precache');
delete_option('wpswmanager_registrations');
delete_site_option('wpswmanager_registrations');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wpservefile_files_%', '_site_transient_wpservefile_files_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

