<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('my_github_details');
delete_site_option('my_github_details');
delete_option('_my_github_installed');
delete_site_option('_my_github_installed');
delete_option('_my_github_version');
delete_site_option('_my_github_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_last_send' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_skipped' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_allow_tracking' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_notice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('admin_my_github_details');
delete_site_transient('admin_my_github_details');
delete_transient('my_github_root');
delete_site_transient('my_github_root');
delete_transient('my_github_details_cd73a2ae7d0fce9f22d1be0662f2ed40');
delete_site_transient('my_github_details_cd73a2ae7d0fce9f22d1be0662f2ed40');
delete_transient('my_github_all_events');
delete_site_transient('my_github_all_events');

// Clear Cron Jobs

