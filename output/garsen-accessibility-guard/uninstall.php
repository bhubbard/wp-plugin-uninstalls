<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('garsen_accessibility_guard_account_info');
delete_site_transient('garsen_accessibility_guard_account_info');
delete_transient('garsen_accessibility_guard_scan_status_cache');
delete_site_transient('garsen_accessibility_guard_scan_status_cache');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_garsen_accessibility_guard_connect_state_%', '_site_transient_garsen_accessibility_guard_connect_state_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

