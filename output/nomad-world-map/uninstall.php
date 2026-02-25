<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nwm_settings');
delete_site_option('nwm_settings');
delete_option('nwm_post_ids');
delete_site_option('nwm_post_ids');
delete_option('nwm_route_order');
delete_site_option('nwm_route_order');
delete_option('nwm_map_ids');
delete_site_option('nwm_map_ids');
delete_option('nwm_version');
delete_site_option('nwm_version');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_nwm_locations_%', '_site_transient_nwm_locations_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_nwm_route_list_%', '_site_transient_nwm_route_list_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_nwm_widget_%', '_site_transient_nwm_widget_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('nwm_locations');
delete_site_transient('nwm_locations');

