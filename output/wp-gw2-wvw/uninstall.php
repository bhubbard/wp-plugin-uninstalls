<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('gw2_worlds');
delete_site_transient('gw2_worlds');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_gw2_wvw_%', '_site_transient_gw2_wvw_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

