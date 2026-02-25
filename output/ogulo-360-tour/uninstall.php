<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ogulo_provider');
delete_site_option('ogulo_provider');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ogulo_access_redirection_%', '_site_transient_ogulo_access_redirection_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('Ogulo_flush');
delete_site_transient('Ogulo_flush');

