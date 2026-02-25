<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('searchjet_ai_answers_enabled');
delete_site_option('searchjet_ai_answers_enabled');
delete_option('searchjet_site_id');
delete_site_option('searchjet_site_id');
delete_option('searchjet_hosted_api_key');
delete_site_option('searchjet_hosted_api_key');
delete_option('searchjet_search_mode');
delete_site_option('searchjet_search_mode');
delete_option('searchjet_search_attributes');
delete_site_option('searchjet_search_attributes');
delete_option('searchjet_ai_agents');
delete_site_option('searchjet_ai_agents');
delete_option('searchjet_log_backlog');
delete_site_option('searchjet_log_backlog');
delete_option('searchjet_automations_enabled');
delete_site_option('searchjet_automations_enabled');
delete_option('searchjet_automation_filters');
delete_site_option('searchjet_automation_filters');
delete_option('searchjet_webhook_url');
delete_site_option('searchjet_webhook_url');
delete_option('searchjet_zapier_webhook_url');
delete_site_option('searchjet_zapier_webhook_url');
delete_option('searchjet_webhook_secret');
delete_site_option('searchjet_webhook_secret');
delete_option('searchjet_zapier_secret');
delete_site_option('searchjet_zapier_secret');
delete_option('searchjet_click_backlog');
delete_site_option('searchjet_click_backlog');
delete_option('searchjet_include_status');
delete_site_option('searchjet_include_status');
delete_option('searchjet_exclude_sticky');
delete_site_option('searchjet_exclude_sticky');
delete_option('searchjet_exclude_protected');
delete_site_option('searchjet_exclude_protected');
delete_option('searchjet_exclude_mime_types');
delete_site_option('searchjet_exclude_mime_types');
delete_option('searchjet_exclude_post_types');
delete_site_option('searchjet_exclude_post_types');
delete_option('searchjet_client_info');
delete_site_option('searchjet_client_info');
delete_option('searchjet_agents_enabled');
delete_site_option('searchjet_agents_enabled');
delete_option('searchjet_agents_enabled_ids');
delete_site_option('searchjet_agents_enabled_ids');
delete_option('searchjet_agents_notes');
delete_site_option('searchjet_agents_notes');
delete_option('searchjet_webhook_provider');
delete_site_option('searchjet_webhook_provider');
delete_option('searchjet_webhook_url_n8n');
delete_site_option('searchjet_webhook_url_n8n');
delete_option('searchjet_webhook_url_zapier');
delete_site_option('searchjet_webhook_url_zapier');
delete_option('searchjet_primary_color');
delete_site_option('searchjet_primary_color');
delete_option('searchjet_theme');
delete_site_option('searchjet_theme');
delete_option('searchjet_attributes');
delete_site_option('searchjet_attributes');
delete_option('searchjet_max_results');
delete_site_option('searchjet_max_results');
delete_option('searchjet_show_thumbnails');
delete_site_option('searchjet_show_thumbnails');
delete_option('searchjet_show_prices');
delete_site_option('searchjet_show_prices');
delete_option('searchjet_show_categories');
delete_site_option('searchjet_show_categories');
delete_option('searchjet_show_excerpts');
delete_site_option('searchjet_show_excerpts');
delete_option('searchjet_show_rating');
delete_site_option('searchjet_show_rating');
delete_option('searchjet_show_stock');
delete_site_option('searchjet_show_stock');
delete_option('searchjet_disable_search_mode');
delete_site_option('searchjet_disable_search_mode');
delete_option('searchjet_zr_threshold');
delete_site_option('searchjet_zr_threshold');
delete_option('searchjet_zr_window');
delete_site_option('searchjet_zr_window');
delete_option('searchjet_last_reindex_time');
delete_site_option('searchjet_last_reindex_time');
delete_option('searchjet_ui_options');
delete_site_option('searchjet_ui_options');
delete_option('searchjet_automation_webhook_url');
delete_site_option('searchjet_automation_webhook_url');
delete_option('searchjet_automation_webhook_secret');
delete_site_option('searchjet_automation_webhook_secret');
delete_option('searchjet_api_key');
delete_site_option('searchjet_api_key');
delete_option('searchjet_project_id');
delete_site_option('searchjet_project_id');
delete_option('searchjet_require_event_nonce');
delete_site_option('searchjet_require_event_nonce');
delete_option('searchjet_index_attachments');
delete_site_option('searchjet_index_attachments');
delete_option('searchjet_host_url');
delete_site_option('searchjet_host_url');

// Delete Transients
delete_transient('searchjet_document_count');
delete_site_transient('searchjet_document_count');
delete_transient('searchjet_usage_limits');
delete_site_transient('searchjet_usage_limits');
delete_transient('searchjet_searches_today');
delete_site_transient('searchjet_searches_today');

// Clear Cron Jobs
wp_clear_scheduled_hook('searchjet_send_log_batch');
wp_clear_scheduled_hook('searchjet_send_click_batch');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'astra-custom-title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'astra-custom-title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'astra-custom-title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'astra-custom-title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'astra-intro-text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'astra-intro-text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'astra-intro-text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'astra-intro-text' ) );

