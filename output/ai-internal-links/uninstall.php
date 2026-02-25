<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aiil_settings');
delete_site_option('aiil_settings');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_aiil_available_links_%', '_site_transient_aiil_available_links_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

