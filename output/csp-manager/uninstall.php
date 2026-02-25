<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('csp_manager_admin');
delete_site_option('csp_manager_admin');
delete_option('csp_manager_loggedin');
delete_site_option('csp_manager_loggedin');
delete_option('csp_manager_frontend');
delete_site_option('csp_manager_frontend');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'csp_manager_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

