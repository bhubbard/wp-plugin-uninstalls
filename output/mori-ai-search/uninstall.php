<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aiws_search_company_name');
delete_site_option('aiws_search_company_name');
delete_option('aiws_search_system_prompt');
delete_site_option('aiws_search_system_prompt');
delete_option('aiws_search_extra_context');
delete_site_option('aiws_search_extra_context');
delete_option('aiws_search_custom_tags');
delete_site_option('aiws_search_custom_tags');
delete_option('aiws_search_reindex_total');
delete_site_option('aiws_search_reindex_total');
delete_option('aiws_search_reindex_queue');
delete_site_option('aiws_search_reindex_queue');
delete_option('aiws_search_reindex_in_progress');
delete_site_option('aiws_search_reindex_in_progress');
delete_option('aiws_search_priority_ids');
delete_site_option('aiws_search_priority_ids');
delete_option('aiws_priority_pages');
delete_site_option('aiws_priority_pages');
delete_option('aiws_search_contact_url');
delete_site_option('aiws_search_contact_url');
delete_option('aiws_search_api_key');
delete_site_option('aiws_search_api_key');
delete_option('aiws_search_category_taxonomies');
delete_site_option('aiws_search_category_taxonomies');
delete_option('aiws_search_extra_post_types');
delete_site_option('aiws_search_extra_post_types');
delete_option('aiws_search_excluded_posts');
delete_site_option('aiws_search_excluded_posts');
delete_option('aiws_search_show_wizard');
delete_site_option('aiws_search_show_wizard');
delete_option('aiws_search_auto_tag_backup');
delete_site_option('aiws_search_auto_tag_backup');
delete_option('aiws_search_manual_tag_backup');
delete_site_option('aiws_search_manual_tag_backup');
delete_option('aiws_search_reindex_last_percent');
delete_site_option('aiws_search_reindex_last_percent');
delete_option('aiws_search_company_description');
delete_site_option('aiws_search_company_description');
delete_option('aiws_search_site_type');
delete_site_option('aiws_search_site_type');
delete_option('aiws_search_theme');
delete_site_option('aiws_search_theme');
delete_option('aiws_search_contact_info');
delete_site_option('aiws_search_contact_info');
delete_option('aiws_search_post_type_order');
delete_site_option('aiws_search_post_type_order');
delete_option('aiws_search_feedback_frontend');
delete_site_option('aiws_search_feedback_frontend');
delete_option('aiws_search_feedback_backend');
delete_site_option('aiws_search_feedback_backend');
delete_option('aiws_search_docs');
delete_site_option('aiws_search_docs');

// Clear Cron Jobs
wp_clear_scheduled_hook('aiws_search_reindex_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'aiws_search_cached_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'aiws_search_cached_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'aiws_search_cached_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'aiws_search_cached_text' ) );

