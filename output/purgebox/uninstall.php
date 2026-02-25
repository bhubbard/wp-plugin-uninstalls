<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%purge_all_roles' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%purge_path' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'purgebox_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('purgebox_plugin_version');
delete_site_option('purgebox_plugin_version');
delete_option('purgebox_purge_path');
delete_site_option('purgebox_purge_path');
delete_option('purgebox_multisite_enabled');
delete_site_option('purgebox_multisite_enabled');
delete_option('purgebox_manual_purgepath_enabled');
delete_site_option('purgebox_manual_purgepath_enabled');
delete_option('purgebox_api_key');
delete_site_option('purgebox_api_key');
delete_option('purgebox_group');
delete_site_option('purgebox_group');
delete_option('purgebox_version');
delete_site_option('purgebox_version');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_purged', '_site_transient_%_purged' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

