<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chiefed_post_taxonomies');
delete_site_option('chiefed_post_taxonomies');
delete_option('chiefed_default_type');
delete_site_option('chiefed_default_type');
delete_option('chiefed_chiefeditor_option');
delete_site_option('chiefed_chiefeditor_option');
delete_option('chief_editor_option');
delete_site_option('chief_editor_option');
delete_option('chiefed_shots_cpt_name');
delete_site_option('chiefed_shots_cpt_name');
delete_option('email_recipients');
delete_site_option('email_recipients');
delete_option('chiefed_sender_email');
delete_site_option('chiefed_sender_email');
delete_option('chiefed_sender_name');
delete_site_option('chiefed_sender_name');
delete_option('sender_email');
delete_site_option('sender_email');
delete_option('sender_name');
delete_site_option('sender_name');
delete_option('email_content-textarea');
delete_site_option('email_content-textarea');
delete_option('custom_stats_start_date');
delete_site_option('custom_stats_start_date');
delete_option('custom_stats_end_date');
delete_site_option('custom_stats_end_date');
delete_option('checkbox_element_callback');
delete_site_option('checkbox_element_callback');
delete_option('BlogMetricsOptions');
delete_site_option('BlogMetricsOptions');
delete_option('chiefed_xml_exports_path_search');
delete_site_option('chiefed_xml_exports_path_search');
delete_option('chiefed_xml_exports_path_replace');
delete_site_option('chiefed_xml_exports_path_replace');
delete_option('chiefed_wwf_statuses_and_colors');
delete_site_option('chiefed_wwf_statuses_and_colors');
delete_option('chiefed_pwf_statuses_and_colors');
delete_site_option('chiefed_pwf_statuses_and_colors');
delete_option('chiefed_categories_and_colors');
delete_site_option('chiefed_categories_and_colors');
delete_option('chiefed_time_filters');
delete_site_option('chiefed_time_filters');
delete_option('chiefed_xml_exports_enabled');
delete_site_option('chiefed_xml_exports_enabled');
delete_option('chiefed_xml_exports_dir');
delete_site_option('chiefed_xml_exports_dir');
delete_option('chiefed_manager_email_template');
delete_site_option('chiefed_manager_email_template');
delete_option('chiefed_enable_notifications');
delete_site_option('chiefed_enable_notifications');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_custom_attachment' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_custom_attachment' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_custom_attachment' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_custom_attachment' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'informations_complmentaires_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'informations_complmentaires_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'informations_complmentaires_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'informations_complmentaires_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

