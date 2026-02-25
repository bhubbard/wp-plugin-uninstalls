<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_rest_yoast_meta_version');
delete_site_option('wp_rest_yoast_meta_version');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_yoast_meta_%', '_site_transient_yoast_meta_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

