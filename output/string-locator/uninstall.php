<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('string-locator-search-history');
delete_site_option('string-locator-search-history');

// Delete Transients
delete_transient('string-locator-search-overview');
delete_site_transient('string-locator-search-overview');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_string-locator-search-files-%', '_site_transient_string-locator-search-files-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

