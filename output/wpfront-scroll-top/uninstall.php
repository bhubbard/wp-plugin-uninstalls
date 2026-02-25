<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpfront-scroll-top-options');
delete_site_option('wpfront-scroll-top-options');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_activated', '_site_transient_%_activated' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

