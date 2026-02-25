<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gatelink_used_nonces');
delete_site_option('gatelink_used_nonces');

// Delete Transients
delete_transient('gatelink_client_nonce_cleanup_last_run');
delete_site_transient('gatelink_client_nonce_cleanup_last_run');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_gatelink_client_nonce_%', '_site_transient_gatelink_client_nonce_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

