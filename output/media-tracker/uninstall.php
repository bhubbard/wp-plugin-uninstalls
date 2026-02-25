<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'widget_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('media_tracker_duplicate_scan_active');
delete_site_option('media_tracker_duplicate_scan_active');
delete_option('media_tracker_offset');
delete_site_option('media_tracker_offset');
delete_option('media_tracker_duplicate_count_last_scan');
delete_site_option('media_tracker_duplicate_count_last_scan');
delete_option('media_tracker_duplicates_scanned');
delete_site_option('media_tracker_duplicates_scanned');
delete_option('media_tracker_total_to_scan');
delete_site_option('media_tracker_total_to_scan');
delete_option('media_tracker_unused_ids_snapshot');
delete_site_option('media_tracker_unused_ids_snapshot');
delete_option('media_tracker_last_unused_count');
delete_site_option('media_tracker_last_unused_count');
delete_option('unused_media_last_cache_time');
delete_site_option('unused_media_last_cache_time');
delete_option('media_tracker_unused_count_last_scan');
delete_site_option('media_tracker_unused_count_last_scan');
delete_option('media_tracker_unused_size_last_scan');
delete_site_option('media_tracker_unused_size_last_scan');
delete_option('media_tracker_manual_scan');
delete_site_option('media_tracker_manual_scan');
delete_option('media_tracker_indexes_created');
delete_site_option('media_tracker_indexes_created');
delete_option('media_tracker_installed');
delete_site_option('media_tracker_installed');
delete_option('media_tracker_version');
delete_site_option('media_tracker_version');
delete_option('media_tracker_stats_summary');
delete_site_option('media_tracker_stats_summary');

// Delete Transients
delete_transient('broken_links_scan_results');
delete_site_transient('broken_links_scan_results');
delete_transient('media_tracker_dashboard_stats_v8');
delete_site_transient('media_tracker_dashboard_stats_v8');
delete_transient('media_tracker_most_used_media_stats');
delete_site_transient('media_tracker_most_used_media_stats');
delete_transient('media_tracker_used_media_stats');
delete_site_transient('media_tracker_used_media_stats');
delete_transient('media_tracker_dashboard_stats_v6');
delete_site_transient('media_tracker_dashboard_stats_v6');
delete_transient('unused_media_delete_message');
delete_site_transient('unused_media_delete_message');
delete_transient('media_tracker_total_scan_count');
delete_site_transient('media_tracker_total_scan_count');

// Clear Cron Jobs
wp_clear_scheduled_hook('media_tracker_run_media_scan_bg');
wp_clear_scheduled_hook('media_tracker_batch_process');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_media_tracker_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_media_tracker_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_media_tracker_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_media_tracker_hash' ) );

