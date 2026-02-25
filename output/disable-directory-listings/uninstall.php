<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'bkup_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('c2c_disable_directory_listings');
delete_site_option('c2c_disable_directory_listings');

// Delete Transients
delete_transient('c2c_ddl_activated');
delete_site_transient('c2c_ddl_activated');
delete_transient('c2c_ddl_regenerated');
delete_site_transient('c2c_ddl_regenerated');

