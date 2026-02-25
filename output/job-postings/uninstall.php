<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jobs_button_bg_color');
delete_site_option('jobs_button_bg_color');
delete_option('jobs_button_bg_color_hover');
delete_site_option('jobs_button_bg_color_hover');
delete_option('jobs_button_text_color');
delete_site_option('jobs_button_text_color');
delete_option('jobs_heading_text_color');
delete_site_option('jobs_heading_text_color');
delete_option('jobs_subheading_text_color');
delete_site_option('jobs_subheading_text_color');
delete_option('jobs_list_item_bg');
delete_site_option('jobs_list_item_bg');
delete_option('jobs_list_item_border');
delete_site_option('jobs_list_item_border');
delete_option('jobs_content_heading_color');
delete_site_option('jobs_content_heading_color');
delete_option('jobs_content_text_color');
delete_site_option('jobs_content_text_color');
delete_option('jobs_button_roundness');
delete_site_option('jobs_button_roundness');
delete_option('jobs_box_roundness');
delete_site_option('jobs_box_roundness');
delete_option('jobs_apply_advanced');
delete_site_option('jobs_apply_advanced');
delete_option('jobs_selected_schema');
delete_site_option('jobs_selected_schema');
delete_option('jobs_sidebar_position');
delete_site_option('jobs_sidebar_position');
delete_option('jobs_metrics_shareable');
delete_site_option('jobs_metrics_shareable');
delete_option('jobs_metrics_notice_seen_v2');
delete_site_option('jobs_metrics_notice_seen_v2');
delete_option('jobs_file_location_notice_seen_v2');
delete_site_option('jobs_file_location_notice_seen_v2');
delete_option('jobs_posts_per_page');
delete_site_option('jobs_posts_per_page');
delete_option('jobs_preview_cta');
delete_site_option('jobs_preview_cta');
delete_option('jobs_schema_type');
delete_site_option('jobs_schema_type');
delete_option('jobs_custom_css');
delete_site_option('jobs_custom_css');
delete_option('jobs_company_logo');
delete_site_option('jobs_company_logo');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'position_hiring_organization_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'position_hiring_organization_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'position_hiring_organization_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'position_hiring_organization_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'position_logo' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'position_logo' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'position_logo' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'position_logo' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'position_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'position_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'position_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'position_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'sort-%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'sort-%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'sort-%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'sort-%' ) );

