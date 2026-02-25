<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpsqmepr_image_processing_progress');
delete_site_option('wpsqmepr_image_processing_progress');
delete_option('wpsqmepr_activation_redirect');
delete_site_option('wpsqmepr_activation_redirect');

// Delete Transients
delete_transient('wpsqmepr_cancelled');
delete_site_transient('wpsqmepr_cancelled');
delete_transient('wpsqmepr_image_deletion_error');
delete_site_transient('wpsqmepr_image_deletion_error');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

