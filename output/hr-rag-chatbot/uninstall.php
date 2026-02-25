<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hr_rag_db_version');
delete_site_option('hr_rag_db_version');
delete_option('hr_rag_options');
delete_site_option('hr_rag_options');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_hr_rag_context_%', '_site_transient_hr_rag_context_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_hr_rag_history_%', '_site_transient_hr_rag_history_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

