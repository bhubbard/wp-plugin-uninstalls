<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpdt_quick_profiler');
delete_site_option('wpdt_quick_profiler');
delete_option('wpdt_log_predefined_php');
delete_site_option('wpdt_log_predefined_php');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpdt_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('save_log_predefined_php');
delete_site_option('save_log_predefined_php');
delete_option('wpdt_login_redirect');
delete_site_option('wpdt_login_redirect');

