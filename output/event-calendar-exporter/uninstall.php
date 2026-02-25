<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ccsve_post_type');
delete_site_option('ccsve_post_type');
delete_option('ccsve_custom_fields');
delete_site_option('ccsve_custom_fields');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%post_meta_keys', '_site_transient_%post_meta_keys' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

