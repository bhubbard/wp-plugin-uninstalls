<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpso_wp_scripts_array');
delete_site_option('wpso_wp_scripts_array');
delete_option('wpso_wp_styles_array');
delete_site_option('wpso_wp_styles_array');
delete_option('wpso_db_version');
delete_site_option('wpso_db_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpso_deleted_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpso_added_scripts');
delete_site_option('wpso_added_scripts');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpso_added_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpso_handles_moved_down');
delete_site_option('wpso_handles_moved_down');
delete_option('wpso_plugins_status');
delete_site_option('wpso_plugins_status');
delete_option('wpso_current_theme');
delete_site_option('wpso_current_theme');
delete_option('wpso_added_styles');
delete_site_option('wpso_added_styles');
delete_option('wpso_deleted_scripts');
delete_site_option('wpso_deleted_scripts');
delete_option('wpso_deleted_styles');
delete_site_option('wpso_deleted_styles');

