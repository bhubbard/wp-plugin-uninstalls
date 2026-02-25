<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tabify-edit-screen');
delete_site_option('tabify-edit-screen');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_tabify_detection_%', '_site_transient_tabify_detection_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

