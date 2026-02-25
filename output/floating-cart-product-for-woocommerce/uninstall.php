<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fcpfw_select2');
delete_site_option('fcpfw_select2');
delete_option('fcpfw_product_out_of_stock');
delete_site_option('fcpfw_product_out_of_stock');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%fgwerror', '_site_transient_%fgwerror' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

