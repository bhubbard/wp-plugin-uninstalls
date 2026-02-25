<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sqlite_object_cache_settings');
delete_site_option('sqlite_object_cache_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('sqlite_object_cache_version');
delete_site_option('sqlite_object_cache_version');

// Delete Transients
delete_transient('sqlite-object-cache-flush-on-update');
delete_site_transient('sqlite-object-cache-flush-on-update');

