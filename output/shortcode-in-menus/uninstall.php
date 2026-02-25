<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gs_sim_last_object_id');
delete_site_option('gs_sim_last_object_id');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_gs_sim_description_hack_%', '_site_transient_gs_sim_description_hack_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

