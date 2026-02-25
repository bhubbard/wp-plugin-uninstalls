<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fileupload_maxk');
delete_site_option('fileupload_maxk');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_avatar_file_%', '_site_transient_avatar_file_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

