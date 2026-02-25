<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mediamoo_dos_key');
delete_site_option('mediamoo_dos_key');
delete_option('mediamoo_dos_secret');
delete_site_option('mediamoo_dos_secret');
delete_option('mediamoo_dos_endpoint');
delete_site_option('mediamoo_dos_endpoint');
delete_option('mediamoo_dos_container');
delete_site_option('mediamoo_dos_container');
delete_option('mediamoo_dos_storage_path');
delete_site_option('mediamoo_dos_storage_path');
delete_option('mediamoo_dos_cdn_url');
delete_site_option('mediamoo_dos_cdn_url');
delete_option('mediamoo_dos_storage_file_only');
delete_site_option('mediamoo_dos_storage_file_only');
delete_option('mediamoo_dos_storage_file_delete');
delete_site_option('mediamoo_dos_storage_file_delete');
delete_option('mediamoo_dos_filter');
delete_site_option('mediamoo_dos_filter');
delete_option('mediamoo_dos_original_upload_url_path');
delete_site_option('mediamoo_dos_original_upload_url_path');
delete_option('mediamoo_dos_original_upload_path');
delete_site_option('mediamoo_dos_original_upload_path');

// Clear Cron Jobs
wp_clear_scheduled_hook('mediamoo_dos_sync_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_backup_sizes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_backup_sizes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_backup_sizes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_backup_sizes' ) );

