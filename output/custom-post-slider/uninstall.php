<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tzcustom-db-version');
delete_site_option('tzcustom-db-version');
delete_option('tzcustom-update-notification');
delete_site_option('tzcustom-update-notification');
delete_option('tzcustom-curr-version');
delete_site_option('tzcustom-curr-version');
delete_option('tzcustom_excerptlen_one');
delete_site_option('tzcustom_excerptlen_one');
delete_option('tzcustom_excerptlen');
delete_site_option('tzcustom_excerptlen');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'tzcustomsmethod%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'optset%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('tzcustomsmethod1');
delete_site_option('tzcustomsmethod1');
delete_option('tzcustomsmethod2');
delete_site_option('tzcustomsmethod2');
delete_option('tzcustomsmethod3');
delete_site_option('tzcustomsmethod3');

