<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cdevroe_tootfaves_instance_url');
delete_site_option('cdevroe_tootfaves_instance_url');
delete_option('cdevroe_tootfaves_access_token');
delete_site_option('cdevroe_tootfaves_access_token');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_cdevroe_tootfaves_cache_%', '_site_transient_cdevroe_tootfaves_cache_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

