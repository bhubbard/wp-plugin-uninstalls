<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pgate_options');
delete_site_option('pgate_options');
delete_option('pgate_activation_redirect');
delete_site_option('pgate_activation_redirect');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_pgate_puzzle_%', '_site_transient_pgate_puzzle_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_pgate_failed_logins_%', '_site_transient_pgate_failed_logins_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

