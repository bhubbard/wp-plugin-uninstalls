<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lana_downloads_manager_uploading_files_folder');
delete_site_option('lana_downloads_manager_uploading_files_folder');
delete_option('lana_downloads_manager_endpoint');
delete_site_option('lana_downloads_manager_endpoint');
delete_option('lana_downloads_manager_post_type_endpoint');
delete_site_option('lana_downloads_manager_post_type_endpoint');
delete_option('lana_downloads_manager_category_endpoint');
delete_site_option('lana_downloads_manager_category_endpoint');
delete_option('lana_downloads_manager_public');
delete_site_option('lana_downloads_manager_public');
delete_option('lana_downloads_manager_post_type');
delete_site_option('lana_downloads_manager_post_type');
delete_option('lana_downloads_manager_counter');
delete_site_option('lana_downloads_manager_counter');
delete_option('lana_downloads_manager_endpoint_type');
delete_site_option('lana_downloads_manager_endpoint_type');
delete_option('lana_downloads_manager_role_edit_lana_download_files');
delete_site_option('lana_downloads_manager_role_edit_lana_download_files');
delete_option('lana_downloads_manager_logs');
delete_site_option('lana_downloads_manager_logs');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'lana_download_file_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'lana_download_file_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'lana_download_file_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'lana_download_file_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'lana_download_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'lana_download_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'lana_download_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'lana_download_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'lana_download_file_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'lana_download_file_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'lana_download_file_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'lana_download_file_id' ) );

