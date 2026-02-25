<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scrobbled_blocks_username');
delete_site_option('scrobbled_blocks_username');
delete_option('scrobbled_blocks_api_key');
delete_site_option('scrobbled_blocks_api_key');
delete_option('scrobbled_blocks_placeholder_id');
delete_site_option('scrobbled_blocks_placeholder_id');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_stale', '_site_transient_%_stale' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

