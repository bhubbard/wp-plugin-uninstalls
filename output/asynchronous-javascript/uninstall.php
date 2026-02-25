<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('asyncjs');
delete_site_option('asyncjs');

// Delete Transients
delete_transient('nhp-opts-google-webfonts');
delete_site_transient('nhp-opts-google-webfonts');
delete_transient('nhp-opts-saved');
delete_site_transient('nhp-opts-saved');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_nhp-opts-errors-%', '_site_transient_nhp-opts-errors-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_nhp-opts-warnings-%', '_site_transient_nhp-opts-warnings-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

