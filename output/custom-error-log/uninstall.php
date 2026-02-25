<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cel_new_logs');
delete_site_option('cel_new_logs');
delete_option('cel_ab_show');
delete_site_option('cel_ab_show');
delete_option('custom_error_log');
delete_site_option('custom_error_log');
delete_option('custom_notice_log');
delete_site_option('custom_notice_log');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_log' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

