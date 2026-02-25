<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cache_timeout');
delete_site_option('cache_timeout');
delete_option('token');
delete_site_option('token');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wpgrs%', '_site_transient_wpgrs%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

