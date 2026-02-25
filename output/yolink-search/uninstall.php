<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yolink_config');
delete_site_option('yolink_config');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_yolink_search_results_%', '_site_transient_yolink_search_results_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

