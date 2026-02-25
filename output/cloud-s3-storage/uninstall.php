<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cloud_s3_storage_mime_types');
delete_site_option('cloud_s3_storage_mime_types');
delete_option('cloud_s3_settings');
delete_site_option('cloud_s3_settings');
delete_option('cloud_s3_storage_status');
delete_site_option('cloud_s3_storage_status');

// Delete Transients
delete_transient('cloud_s3_storage_cached_file_attach_list');
delete_site_transient('cloud_s3_storage_cached_file_attach_list');
delete_transient('cloud_s3_storage_cached_id_list');
delete_site_transient('cloud_s3_storage_cached_id_list');

// Clear Cron Jobs
wp_clear_scheduled_hook('cloud_s3_storage_action_reindex_image');
wp_clear_scheduled_hook('cloud_s3_storage_action_clear_image');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'disable_media_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'disable_media_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'disable_media_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'disable_media_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'enable_media_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'enable_media_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'enable_media_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'enable_media_field' ) );

