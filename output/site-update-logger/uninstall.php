<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sulog_delete_data_on_uninstall');
delete_site_option('sulog_delete_data_on_uninstall');
delete_option('sulog_pre_update_wp_version');
delete_site_option('sulog_pre_update_wp_version');
delete_option('sulog_last_version');
delete_site_option('sulog_last_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sulog_pre_update_plugin_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sulog_plugin_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sulog_pre_update_theme_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sulog_theme_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('site_update_logger_pre_update_wp_version');
delete_site_option('site_update_logger_pre_update_wp_version');
delete_option('sulog_migration_done');
delete_site_option('sulog_migration_done');
delete_option('site_update_logger_migration_done');
delete_site_option('site_update_logger_migration_done');
delete_option('sulog_version');
delete_site_option('sulog_version');
delete_option('sulog_settings');
delete_site_option('sulog_settings');

