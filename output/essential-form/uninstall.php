<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('essential_form');
delete_site_option('essential_form');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_essential_form_key_%', '_site_transient_essential_form_key_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

