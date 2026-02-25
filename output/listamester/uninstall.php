<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('listamester_lmid');
delete_site_option('listamester_lmid');
delete_option('listamester_lmpwd');
delete_site_option('listamester_lmpwd');
delete_option('lm_user_id');
delete_site_option('lm_user_id');
delete_option('lm_api_key');
delete_site_option('lm_api_key');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_listamester_form_%', '_site_transient_listamester_form_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_listamester_html_%', '_site_transient_listamester_html_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_listamester_js_%', '_site_transient_listamester_js_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

