<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('szamlazz_hu_invoice_type');
delete_site_option('szamlazz_hu_invoice_type');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_szamlazzhu_%', '_site_transient_szamlazzhu_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

