<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('r404c_enabled');
delete_site_option('r404c_enabled');
delete_option('r404c_redirect_url');
delete_site_option('r404c_redirect_url');
delete_option('r404c_redirect_type');
delete_site_option('r404c_redirect_type');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'r404c_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

