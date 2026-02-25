<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('edge_images_rewrite_rules_flushed');
delete_site_option('edge_images_rewrite_rules_flushed');
delete_option('edge_images_bunny_subdomain');
delete_site_option('edge_images_bunny_subdomain');
delete_option('edge_images_settings');
delete_site_option('edge_images_settings');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_edge_images_css_%', '_site_transient_edge_images_css_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

