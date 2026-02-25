<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('httpbl_reloaded_options');
delete_site_option('httpbl_reloaded_options');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_httpblr_%', '_site_transient_httpblr_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

