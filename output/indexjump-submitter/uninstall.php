<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('indexjump_settings');
delete_site_option('indexjump_settings');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_indexjump_notice', '_site_transient_%_indexjump_notice' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

