<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gtm-server-side-admin-options');
delete_site_option('gtm-server-side-admin-options');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%__generated', '_site_transient_%__generated' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

