<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('brenwpcache_debug_log');
delete_site_option('brenwpcache_debug_log');
delete_option('brenwpcache_hmac_key');
delete_site_option('brenwpcache_hmac_key');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_brenwpcache_notice_%', '_site_transient_brenwpcache_notice_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('brenwpcache_cache_size');
delete_site_transient('brenwpcache_cache_size');

