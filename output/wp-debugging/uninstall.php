<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_debugging');
delete_site_option('wp_debugging');
delete_option('wp_debugging_restore');
delete_site_option('wp_debugging_restore');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wpdi-%', '_site_transient_wpdi-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

