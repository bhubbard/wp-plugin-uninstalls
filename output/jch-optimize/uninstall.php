<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jch-optimize_settings');
delete_site_option('jch-optimize_settings');
delete_option('jch_options');
delete_site_option('jch_options');

// Delete Transients
delete_transient('jch-optimize_notices');
delete_site_transient('jch-optimize_notices');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_jch_optimize_state_%', '_site_transient_jch_optimize_state_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

