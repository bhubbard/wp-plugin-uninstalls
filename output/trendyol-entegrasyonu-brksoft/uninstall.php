<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('brkti_supplier_id');
delete_site_option('brkti_supplier_id');
delete_option('brkti_api_key');
delete_site_option('brkti_api_key');
delete_option('brkti_api_secret');
delete_site_option('brkti_api_secret');
delete_option('brkti_auto_sync');
delete_site_option('brkti_auto_sync');
delete_option('brkti_last_sync');
delete_site_option('brkti_last_sync');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'brkti_sync_count_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_brkti_sync_lock_%', '_site_transient_brkti_sync_lock_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

