<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cloud_uploads_options');
delete_site_option('cloud_uploads_options');
delete_option('cloud_uploads_files_scanned');
delete_site_option('cloud_uploads_files_scanned');
delete_option('ms_files_rewriting');
delete_site_option('ms_files_rewriting');
delete_option('cloud_uploads_apitoken');
delete_site_option('cloud_uploads_apitoken');
delete_option('cloud_uploads_site_id');
delete_site_option('cloud_uploads_site_id');
delete_option('cloud_uploads_api_data');
delete_site_option('cloud_uploads_api_data');
delete_option('cloud_uploads_enabled');
delete_site_option('cloud_uploads_enabled');
delete_option('cloud_uploads_bulk_started');
delete_site_option('cloud_uploads_bulk_started');
delete_option('cloud_uploads_bulk_completed');
delete_site_option('cloud_uploads_bulk_completed');
delete_option('cloud_uploads_deferred');
delete_site_option('cloud_uploads_deferred');
delete_option('cloud_uploads_sizes_deferred');
delete_site_option('cloud_uploads_sizes_deferred');

// Clear Cron Jobs
wp_clear_scheduled_hook('cloud_uploads_process_deferred');
wp_clear_scheduled_hook('cloud_uploads_process_sizes');
wp_clear_scheduled_hook('cloud_uploads_sync');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_s3_synced' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_s3_synced' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_s3_synced' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_s3_synced' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_s3_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_s3_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_s3_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_s3_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_s3_paths' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_s3_paths' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_s3_paths' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_s3_paths' ) );

