<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('autoptimize_html');
delete_site_option('autoptimize_html');
delete_option('autoptimize_css');
delete_site_option('autoptimize_css');
delete_option('autoptimize_js');
delete_site_option('autoptimize_js');
delete_option('peadig_eucookie');
delete_site_option('peadig_eucookie');
delete_option('jetpack_boost_config');
delete_site_option('jetpack_boost_config');
delete_option('woocommerce_default_customer_address');
delete_site_option('woocommerce_default_customer_address');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('powered_cache_preload_hook');
wp_clear_scheduled_hook('powered_cache_preload_child_process');
wp_clear_scheduled_hook('powered_cache_purge_cache');

