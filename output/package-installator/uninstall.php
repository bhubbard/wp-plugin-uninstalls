<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpkginst_ssh_host');
delete_site_option('wpkginst_ssh_host');
delete_option('wpkginst_ssh_username');
delete_site_option('wpkginst_ssh_username');
delete_option('wpkginst_ssh_port');
delete_site_option('wpkginst_ssh_port');
delete_option('wpkginst_ssh_auth_type');
delete_site_option('wpkginst_ssh_auth_type');
delete_option('wpkginst_ssh_private_key');
delete_site_option('wpkginst_ssh_private_key');
delete_option('wpkginst_ssh_last_error');
delete_site_option('wpkginst_ssh_last_error');
delete_option('wpkginst_ssh_password');
delete_site_option('wpkginst_ssh_password');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wpkginst_progress_%', '_site_transient_wpkginst_progress_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wpkginst_output_%', '_site_transient_wpkginst_output_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wpkginst_installed_%', '_site_transient_wpkginst_installed_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

