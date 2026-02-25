<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpsp_elementor_advance_options');
delete_site_option('wpsp_elementor_advance_options');
delete_option('wpsp_license_key');
delete_site_option('wpsp_license_key');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'enable_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpsp_license_status');
delete_site_option('wpsp_license_status');

// Delete Transients
delete_transient('wpsp_qstore_ext_list');
delete_site_transient('wpsp_qstore_ext_list');

