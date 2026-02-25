<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hizzle_downloads_admin_notices');
delete_site_option('hizzle_downloads_admin_notices');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'hizzle_downloads_admin_notice_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'hizzle_download_admin_notice_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('hizzle_download_options');
delete_site_option('hizzle_download_options');
delete_option('hizzle_downloads_schema_missing_tables');
delete_site_option('hizzle_downloads_schema_missing_tables');
delete_option('hizzle_downloads_xsendfile_missing');
delete_site_option('hizzle_downloads_xsendfile_missing');
delete_option('hizzle_downloads_db_version');
delete_site_option('hizzle_downloads_db_version');
delete_option('hizzle_downloads_options');
delete_site_option('hizzle_downloads_options');
delete_option('hizzle_logger_version');
delete_site_option('hizzle_logger_version');

// Delete Transients
delete_transient('hizzle_downloads_installing');
delete_site_transient('hizzle_downloads_installing');

// Clear Cron Jobs
wp_clear_scheduled_hook('hizzle_downloads_process_github_release');
wp_clear_scheduled_hook('hizzle_log_clear_logs');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_notice' ) );

