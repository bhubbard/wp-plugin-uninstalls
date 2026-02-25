<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aau_ahcm_last_object_id');
delete_site_option('aau_ahcm_last_object_id');
delete_option('woocommerce_permalinks');
delete_site_option('woocommerce_permalinks');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_aau_ahcm_description_hack_%', '_site_transient_aau_ahcm_description_hack_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

