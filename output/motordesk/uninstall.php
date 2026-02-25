<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('motordesk');
delete_site_option('motordesk');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_motordesk-i-%', '_site_transient_motordesk-i-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('motordesk-i');
delete_site_transient('motordesk-i');
delete_transient('motordesk-is');
delete_site_transient('motordesk-is');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_motordesk-v-%', '_site_transient_motordesk-v-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_motordesk-vs-%', '_site_transient_motordesk-vs-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('motordesk-i-field');
delete_site_transient('motordesk-i-field');
delete_transient('motordesk-i-id');
delete_site_transient('motordesk-i-id');
delete_transient('motordesk-i-alpha');
delete_site_transient('motordesk-i-alpha');

