<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bp_group_documents_nav_page_name');
delete_site_option('bp_group_documents_nav_page_name');
delete_option('bp_group_documents_upload_permission');
delete_site_option('bp_group_documents_upload_permission');
delete_option('bp_group_documents_use_categories');
delete_site_option('bp_group_documents_use_categories');
delete_option('bp_group_documents_valid_file_formats');
delete_site_option('bp_group_documents_valid_file_formats');
delete_option('bp_group_documents_display_file_size');
delete_site_option('bp_group_documents_display_file_size');
delete_option('bp_group_documents_display_icons');
delete_site_option('bp_group_documents_display_icons');
delete_option('bp_group_documents_display_owner');
delete_site_option('bp_group_documents_display_owner');
delete_option('bp_group_documents_display_date');
delete_site_option('bp_group_documents_display_date');
delete_option('bp_group_documents_items_per_page');
delete_site_option('bp_group_documents_items_per_page');
delete_option('bp_group_documents_display_download_count');
delete_site_option('bp_group_documents_display_download_count');
delete_option('bp-group-documents-db-version');
delete_site_option('bp-group-documents-db-version');
delete_option('bp_group_documents_enable_all_groups');
delete_site_option('bp_group_documents_enable_all_groups');
delete_option('bp_group_documents_progress_bar');
delete_site_option('bp_group_documents_progress_bar');
delete_option('bp_group_documents_forum_attachments');
delete_site_option('bp_group_documents_forum_attachments');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'notification_group_documents_upload_mod' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'notification_group_documents_upload_mod' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'notification_group_documents_upload_mod' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'notification_group_documents_upload_mod' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'notification_group_documents_upload_member' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'notification_group_documents_upload_member' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'notification_group_documents_upload_member' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'notification_group_documents_upload_member' ) );

