<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ranksavant-cache-status');
delete_site_option('ranksavant-cache-status');
delete_option('ranksavant-key');
delete_site_option('ranksavant-key');
delete_option('ranksavant-verify-status');
delete_site_option('ranksavant-verify-status');
delete_option('ranksavant-verify-curl-body');
delete_site_option('ranksavant-verify-curl-body');
delete_option('ranksavant-containers');
delete_site_option('ranksavant-containers');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ranksavant_container_%', '_site_transient_ranksavant_container_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

