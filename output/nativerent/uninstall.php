<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nativerent_options');
delete_site_option('nativerent_options');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'nativerent.%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('nativerent.jsURL');
delete_site_option('nativerent.jsURL');
delete_option('nativerent.cssURL');
delete_site_option('nativerent.cssURL');
delete_option('nativerent.selfCheckReport');
delete_site_option('nativerent.selfCheckReport');
delete_option('nativerent.adUnitsConfig');
delete_site_option('nativerent.adUnitsConfig');
delete_option('wp_rocket_settings');
delete_site_option('wp_rocket_settings');

