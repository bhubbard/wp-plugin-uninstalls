<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_opendata_notification_email');
delete_site_option('wp_opendata_notification_email');
delete_option('wp_opendata_style_sheet');
delete_site_option('wp_opendata_style_sheet');
delete_option('wp_opendata_search_datasets');
delete_site_option('wp_opendata_search_datasets');
delete_option('wp_opendata_search_projects');
delete_site_option('wp_opendata_search_projects');
delete_option('wp_opendata_contributor_upload_files');
delete_site_option('wp_opendata_contributor_upload_files');
delete_option('wp_opendata_frontpage_dataset');
delete_site_option('wp_opendata_frontpage_dataset');
delete_option('wp_opendata_title_filter');
delete_site_option('wp_opendata_title_filter');
delete_option('wp_opendata_menu_datasets');
delete_site_option('wp_opendata_menu_datasets');
delete_option('wp_opendata_menu_projects');
delete_site_option('wp_opendata_menu_projects');
delete_option('wp_opendata_filter_content_meta');
delete_site_option('wp_opendata_filter_content_meta');
delete_option('wp_opendata_filter_content_projects');
delete_site_option('wp_opendata_filter_content_projects');
delete_option('wp_opendata_sort_dataset_az');
delete_site_option('wp_opendata_sort_dataset_az');
delete_option('wp_opendata_sort_project_az');
delete_site_option('wp_opendata_sort_project_az');
delete_option('wp_opendata_default_dataset_text');
delete_site_option('wp_opendata_default_dataset_text');
delete_option('wp_opendata_template_dataset');
delete_site_option('wp_opendata_template_dataset');
delete_option('wp_opendata_template_project');
delete_site_option('wp_opendata_template_project');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_opendata_meta_license_meta_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_opendata_meta_license_meta_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_opendata_meta_license_meta_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_opendata_meta_license_meta_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_opendata_meta_license_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_opendata_meta_license_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_opendata_meta_license_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_opendata_meta_license_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_opendata_meta_download_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_opendata_meta_download_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_opendata_meta_download_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_opendata_meta_download_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_opendata_meta_external_projects' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_opendata_meta_external_projects' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_opendata_meta_external_projects' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_opendata_meta_external_projects' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_opendata_meta_project_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_opendata_meta_project_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_opendata_meta_project_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_opendata_meta_project_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_opendata_meta_developer_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_opendata_meta_developer_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_opendata_meta_developer_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_opendata_meta_developer_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_opendata_meta_developer_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_opendata_meta_developer_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_opendata_meta_developer_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_opendata_meta_developer_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_opendata_meta_datasets' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_opendata_meta_datasets' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_opendata_meta_datasets' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_opendata_meta_datasets' ) );

