<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bbi_tenant_id');
delete_site_option('bbi_tenant_id');
delete_option('bbi_enable_debug_logging');
delete_site_option('bbi_enable_debug_logging');
delete_option('bbi_products_csv_enabled');
delete_site_option('bbi_products_csv_enabled');
delete_option('bbi_products_csv_path');
delete_site_option('bbi_products_csv_path');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_bb_session_%', '_site_transient_bb_session_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

