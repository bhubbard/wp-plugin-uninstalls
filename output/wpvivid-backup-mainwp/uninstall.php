<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpvivid_custom_select_website_size_ex');
delete_site_option('wpvivid_custom_select_website_size_ex');
delete_option('wpvivid_remote_backups_lock');
delete_site_option('wpvivid_remote_backups_lock');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_w' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_h' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_crop' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('medium_large_size_w');
delete_site_option('medium_large_size_w');
delete_option('medium_large_size_h');
delete_site_option('medium_large_size_h');
delete_option('mainwp_primaryBackup');
delete_site_option('mainwp_primaryBackup');
delete_option('mainwp_wpvivid_backups_db_version');
delete_site_option('mainwp_wpvivid_backups_db_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('mwp_wpvivid_check_version_event');
wp_clear_scheduled_hook('mwp_wpvivid_refresh_latest_pro_version_event');

