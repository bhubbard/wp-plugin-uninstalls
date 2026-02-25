<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('custom-adminbar-enabled');
delete_site_option('custom-adminbar-enabled');
delete_option('custom-adminbar-bump');
delete_site_option('custom-adminbar-bump');
delete_option('custom-adminbar-styles');
delete_site_option('custom-adminbar-styles');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'custom-adminbar-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

