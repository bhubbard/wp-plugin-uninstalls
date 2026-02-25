<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('global_styles');
delete_site_transient('global_styles');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_global_styles_%', '_site_transient_global_styles_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('gutenberg_global_styles');
delete_site_transient('gutenberg_global_styles');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_gutenberg_global_styles_%', '_site_transient_gutenberg_global_styles_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

