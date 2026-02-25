<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aeii_options');
delete_site_option('aeii_options');
delete_option('aeii_background_running');
delete_site_option('aeii_background_running');
delete_option('aeii_scan_results');
delete_site_option('aeii_scan_results');
delete_option('aeii_queue_position');
delete_site_option('aeii_queue_position');
delete_option('aeii_url_cache');
delete_site_option('aeii_url_cache');
delete_option('aeii_archive_error');
delete_site_option('aeii_archive_error');
delete_option('aeii_archive_error_time');
delete_site_option('aeii_archive_error_time');
delete_option('aeii_archive_429_retries');
delete_site_option('aeii_archive_429_retries');
delete_option('aeii_success_count');
delete_site_option('aeii_success_count');
delete_option('aeii_cached_count');
delete_site_option('aeii_cached_count');
delete_option('aeii_failed_count');
delete_site_option('aeii_failed_count');
delete_option('aeii_removed_count');
delete_site_option('aeii_removed_count');
delete_option('aeii_placeholder_count');
delete_site_option('aeii_placeholder_count');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_aeii_idx_%', '_site_transient_aeii_idx_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('aeii_images_process_process_lock');
delete_site_transient('aeii_images_process_process_lock');
delete_transient('aeii_images_process_completed');
delete_site_transient('aeii_images_process_completed');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_completed', '_site_transient_%_completed' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('aeii_background_process');
wp_clear_scheduled_hook('aeii_images_process_cron');

