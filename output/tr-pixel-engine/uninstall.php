<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('awou_settings');
delete_site_option('awou_settings');
delete_option('awou_snapshot');
delete_site_option('awou_snapshot');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_awou_%', '_site_transient_awou_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

