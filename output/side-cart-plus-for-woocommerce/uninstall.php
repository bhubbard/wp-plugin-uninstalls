<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('siwscp_select2');
delete_site_option('siwscp_select2');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%wfcerror', '_site_transient_%wfcerror' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

