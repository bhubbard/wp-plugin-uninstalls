<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('loginlockdownAdminOptions');
delete_site_option('loginlockdownAdminOptions');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_loginlockdown_unlock_count_%', '_site_transient_loginlockdown_unlock_count_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_loginlockdown_unlock_%', '_site_transient_loginlockdown_unlock_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('settings_errors');
delete_site_transient('settings_errors');

