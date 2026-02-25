<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('WpFastestCacheExclude');
delete_site_option('WpFastestCacheExclude');
delete_option('WpFastestCache');
delete_site_option('WpFastestCache');
delete_option('wpblast_plugin_version');
delete_site_option('wpblast_plugin_version');
delete_option('wpblast_db_version');
delete_site_option('wpblast_db_version');
delete_option('wpblast_home');
delete_site_option('wpblast_home');
delete_option('wpblast_crawler');
delete_site_option('wpblast_crawler');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_firstActivation', '_site_transient_%_firstActivation' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_plugindata', '_site_transient_%_plugindata' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_autoregexp', '_site_transient_%_autoregexp' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_user', '_site_transient_%_user' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_purgeExceededItemsCacheTimestamp', '_site_transient_%_purgeExceededItemsCacheTimestamp' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_cleanExpiredCacheTimestamp', '_site_transient_%_cleanExpiredCacheTimestamp' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

