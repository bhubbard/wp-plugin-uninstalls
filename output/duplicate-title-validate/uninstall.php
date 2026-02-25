<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('duplicate_title_validate_options');
delete_site_option('duplicate_title_validate_options');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_dtv_duplicate_title_error_%', '_site_transient_dtv_duplicate_title_error_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

