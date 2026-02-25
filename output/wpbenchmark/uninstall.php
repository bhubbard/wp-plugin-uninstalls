<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp-benchmark-io-settings');
delete_site_option('wp-benchmark-io-settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'benchmark_option_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wp-benchmark-io-running');
delete_site_option('wp-benchmark-io-running');
delete_option('wp-benchmark-io-history');
delete_site_option('wp-benchmark-io-history');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_benchmark_transient_%', '_site_transient_benchmark_transient_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

